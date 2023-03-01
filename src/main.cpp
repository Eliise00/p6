#include <cstdlib>
#include <random>
#include "p6/p6.h"
#define DOCTEST_CONFIG_IMPLEMENT
#include "doctest/doctest.h"

class Boid {
private:
    glm::vec2 _pos;
    p6::Angle _dir;
    float     _speed;
    float     _radius;

public:
    explicit Boid()
        : _pos(glm::vec2(p6::random::number(-1, 1), p6::random::number(-1, 1))), // remplace seed avec la doc de p6
        _dir(p6::Angle(p6::Radians(p6::random::number(p6::PI * 2))))
        , _speed(p6::random::number() / 500)
        , _radius(p6::random::number() / 2)
    {
    }

    void draw(p6::Context& ctx) const
    {
        ctx.square(
            p6::Center{_pos.x, _pos.y},
            p6::Radius{_radius}
        );
    }

    void update()
    {
        auto move = rotated_by(_dir, glm::vec2(_speed, 0.f));
        _pos += move;
    }
};

int main(int argc, char* argv[])
{
    { // Run the tests
        if (doctest::Context{}.run() != 0)
            return EXIT_FAILURE;
        // The CI does not have a GPU so it cannot run the rest of the code.
        const bool no_gpu_available = argc >= 2 && strcmp(argv[1], "-nogpu") == 0; // NOLINT(cppcoreguidelines-pro-bounds-pointer-arithmetic)
        if (no_gpu_available)
            return EXIT_SUCCESS;
    }

    // Actual app
    auto ctx = p6::Context{{.title = "Simple-p6-Setup"}};
    ctx.maximize_window();

    /*
    p6::Angle rotation = 0.011_turn;
    ctx.mouse_scrolled = [&](p6::MouseScroll e) {
        rotation += e.dy * 0.025_turn;
    };*/

    // Init array

    std::vector<Boid> Boid_array;
    for (size_t i = 0; i < 20; ++i)
    {
        Boid boidTemp;
        Boid_array.push_back(boidTemp);
    }

    auto square_radius = 0.5f;

    // Declare your infinite update loop.
    ctx.update = [&]() {
        ctx.background(p6::NamedColor::Blue);
        // Show a simple window
        ImGui::Begin("Test");
        ImGui::SliderFloat("Square size", &square_radius, 0.f, 1.f);
        ImGui::End();

        // Show the official ImGui demo window
        // It is very useful to discover all the widgets available in ImGui
        // ImGui::ShowDemoWindow();

        ctx.square(p6::Center{}, p6::Radius{square_radius});

        // Draw array
        for (auto& i : Boid_array)
        {
            i.draw(ctx);
            i.update();
        }
    };

    // Should be done last. It starts the infinite loop.
    ctx.start();
}