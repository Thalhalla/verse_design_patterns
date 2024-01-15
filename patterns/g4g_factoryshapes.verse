using { /Fortnite.com/Devices }
using { /Verse.org/Simulation }
using { /UnrealEngine.com/Temporary/Diagnostics }

# This is a verse implementation of the excellent C++ example given here:
# https://www.geeksforgeeks.org/factory-method-pattern-c-design-patterns/?ref=lbp

Shape := class<abstract>:
    draw<public>() : void

Circle := class<concrete>(Shape):
    draw<override>() : void =
        Print("Drawing a Circle")

Square := class<concrete>(Shape):
    draw<override>() : void =
        Print("Drawing a Square")

ShapeFactory := class<abstract>:
    createShape<public>() : Shape

CircleFactory := class<concrete>(ShapeFactory):
    createShape<override>() : Circle =
        return Circle{}

SquareFactory := class<concrete>(ShapeFactory):
    createShape<override>() : Square =
        return Square{}

g4g_factoryofshapes := class(creative_device):
    OnBegin<override>()<suspends>:void=
        circleFactory := CircleFactory{}
        squareFactory := SquareFactory{}

        circle := circleFactory.createShape()
        square := squareFactory.createShape()

        circle.draw()
        square.draw()
