using { /Fortnite.com/Devices }
using { /Verse.org/Simulation }
using { /UnrealEngine.com/Temporary/Diagnostics }

# This is a verse implementation of the excellent C++ example given here:
# https://www.geeksforgeeks.org/composite-method-software-design-pattern/

FileSystemComponent := class<abstract>():
    var name : string
    var size : int = 0
    display<public>():void

File := class(FileSystemComponent):
    # removing <private> so that the constructor can set these
    var name<override>: string
    var size<override>: int = 0

    display<override>():void=
        Print("File: {name} ({size})")


Directory := class(FileSystemComponent):
    var name<override>: string
    var components<private>  : []FileSystemComponent = array{}

    display<override>():void=
        Print("Directory: {name}")
        for (component : components):
            component.display()

    addComponent<public>(component:FileSystemComponent):void=
        set components += array{component}

g4g_composite := class(creative_device):
    OnBegin<override>()<suspends>:void=
        file1 := File{name := "document.txt", size := 1024}
        file2 := File{name := "image.jpg", size := 2048}

        directory := Directory{ name := "My Documents" }

        directory.addComponent(file1)
        directory.addComponent(file2)
        directory.display()
