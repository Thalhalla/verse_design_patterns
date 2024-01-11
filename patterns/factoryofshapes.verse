using { /Fortnite.com/Devices }
using { /Verse.org/Simulation }
using { /UnrealEngine.com/Temporary/Diagnostics }

Shape := class:
    draw<public>() : void =
        Print("Hello, world!")

Circle := class(Shape):
    draw<override>() : void =
        Print("Hello, world! I'm a circle")

Square := class(Shape):
    draw<override>() : void =
        Print("Hello, world! I'm a square")

ShapeFactory := class:
    createShape<public>() : Shape =
        Print("Hello, shape factory! I'm making a shape")
        return Shape{}

CircleFactory := class(ShapeFactory):
    createShape<override>() : Circle =
        Print("Hello, circle factory! I'm making a circle")
        return Circle{}

SquareFactory := class(ShapeFactory):
    createShape<override>() : Square =
        Print("Hello, square factory! I'm making a square")
        return Square{}

factoryofshapes := class(creative_device):
    OnBegin<override>()<suspends>:void=
        circleFactory := CircleFactory{}
        squareFactory := SquareFactory{}

        circle := circleFactory.createShape()
        square := squareFactory.createShape()

        circle.draw()
        square.draw()
