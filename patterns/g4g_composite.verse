using { /Fortnite.com/Devices }
using { /Verse.org/Simulation }
using { /UnrealEngine.com/Temporary/Diagnostics }

# This is a verse implementation of the excellent C++ example given here:
# https://www.geeksforgeeks.org/composite-method-software-design-pattern/

FileSystemComponent := interface():
    display<public>():void

File := class(FileSystemComponent):
    name<private> : string
    size<private> : int

    display<public>():void=
        Print("File: {name} ({size})")


Directory := class(FileSystemComponent):
    name<private> : string
    var components<private>  : []FileSystemComponent = array{}

    display<public>():void=
        Print("Directory: {name}")

    addComponent<public>(component:FileSystemComponent):void=
        set components += array{component}

g4g_composite := class(creative_device):
    OnBegin<override>()<suspends>:void=
        file1 := FileSystemComponent{ name := "document.txt", size = 1024 }
        file2 := FileSystemComponent{ name := "image.jpg", size = 2048 }

        directory := Directory{ name := "My Documents" }

        directory.addComponent(file1)
        directory.addComponent(file2)
        directory.display()
