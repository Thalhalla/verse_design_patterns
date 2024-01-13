
using { /Fortnite.com/Devices }
using { /Verse.org/Simulation }
using { /UnrealEngine.com/Temporary/Diagnostics }

# This is a verse implementation of the excellent C++ example given here:
# https://www.geeksforgeeks.org/observer-pattern-c-design-patterns/

# Observer interface
Observer := interface():
    update<public>(temperature:float, humidity:float, pressure:float):void

WeatherStation := class:
    var temperature<private> : float = 0.0
    var pressure<private> : float = 0.0
    var humidity<private> : float = 0.0
    var observers<private>  : []Observer = array{}

    registerObserver<public>(observer:Observer):void=
        set observers += array{observer}

    #removeObserver<public>(observer : Observer):void=
        # left unimplemented
        #set observers -= array{observer}

    notifyObservers<public>():void=
        for (observer : observers):
            observer.update(temperature, humidity, pressure)

    setMeasurements<public>(temp:float, hum:float, press:float):void=
        set temperature = temp
        set humidity = hum
        set pressure = press
        notifyObservers()

Display := class(Observer):
    update<override>(temperature:float, humidity:float, pressure:float):void=
        Print("Display: Temperature = {temperature} °C, Humidity = {humidity}%, Pressure = {pressure} hPa")

g4g_observer := class(creative_device):
    OnBegin<override>()<suspends>:void=
        weatherStation := WeatherStation{}

        display1 := Display{}
        display2 := Display{}

        weatherStation.registerObserver(display1)
        weatherStation.registerObserver(display2)

        weatherStation.setMeasurements(25.5, 60.0, 1013.2)
        weatherStation.setMeasurements(24.8, 58.0, 1014.5)


