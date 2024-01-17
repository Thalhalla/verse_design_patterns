using { /Fortnite.com/Devices }
using { /Verse.org/Simulation }
using { /UnrealEngine.com/Temporary/Diagnostics }

# This is a verse implementation of the excellent C++ example given here:
# https://www.geeksforgeeks.org/composite-method-software-design-pattern/

# snippet here
# https://dev.epicgames.com/community/snippets/ojb/fortnite-singleton-in-verse
# discussion here https://forums.unrealengine.com/t/i-came-up-with-a-way-to-make-singletons-in-verse/1139453

Singleton := class():
    var instance1 : Singleton
    getInstance<public>():Singleton=
        #if(instance1):
        # broken so giving static values
        if(1 = 0):
            Print("Singleton already exists not making another")
        #else:
        #    instance1 = Singleton{}
        return instance1
    someOperation<public>():void=
        Print("Singleton is performing some operation")
#SingletonConstructor<private><constructor>() := Singleton:
    #instance1 := Singleton.getInstance()
    #Print("Singleton instance created")
         
g4g_singleton := class(creative_device):
    OnBegin<override>()<suspends>:void=
#        singleton := Singleton{}
#        singleton.getInstance()
#        singleton.someoperation()
#        singleton.getInstance()
         block: