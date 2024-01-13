using { /Fortnite.com/Devices }
using { /Verse.org/Simulation }
using { /UnrealEngine.com/Temporary/Diagnostics }

# This is a verse implementation of the excellent C++ example given here:
# https://www.geeksforgeeks.org/factory-method-pattern-c-design-patterns/?ref=lbp

Shape := class:
    draw<public>() : void =
        Print("Hello, world!")

Circle := class<concrete>(Shape):
    draw<override>() : void =
        Print("Hello, world! I'm a circle")

Square := class<concrete>(Shape):
    draw<override>() : void =
        Print("Hello, world! I'm a square")

ShapeFactory := class:
    createShape<public>() : Shape =
        Print("Hello, shape factory! I'm making a shape")
        return Shape{}

CircleFactory := class<concrete>(ShapeFactory):
    createShape<override>() : Circle =
        Print("Hello, circle factory! I'm making a circle")
        return Circle{}

SquareFactory := class<concrete>(ShapeFactory):
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
