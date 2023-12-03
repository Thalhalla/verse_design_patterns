# verse_design_patterns

## Verse Design Patterns

I am converting many of the usual design patterns to be used in verse and this repository is the result.

Check the patterns directory.

### A bit of verse

In attempting to get chat GPT to do some of the heavy lifting here I asked it using [mods](https://github.com/charmbracelet/mods), and got back some "verse":

```
mods -f "can you convert this c++ to verse?" < c.in | glow

Conversation saved:  29e4121  can you convert this c++ to verse? Format the response as markdown without enclosing backticks.

  If your day cometh dressed as code in C++
  With "iostream" and "vector", a sight you see
  Here's a way to translate, just follow me
  In a language lighter, this tale will be.

  We have a class "Subject", as thou can see
  Independence in functionality, its decree
  A vector of "Observer", quite unique thee
  To Interface, it couples, for all to free.

  An integer "value", in secret, lies thee
  Public methods to manage, as clear as tea
  Set and get this value, as quick as a bee
  And "notify" to call, a mysterious spree.

  Then comes "Observer", dependent, yet free
  Holds a "Subject" model and one 'denom' of thee
  Constructing with these two, as easy as three
  Attaches to the subject, in a unity spree.

  An abstract "update", leaves space for thee
  To use this class and modify, as per thy decree
  In protected, two getters lie, as thou can see
  Returning 'model' and 'denom', none other than these three.

  A definition for "notify" in the subject, glee
  A loop over views, from the starting tree
  Calls their "update", in the depth of the sea
  Publishing and broadcasting, setting all free.

  "DivObserver" a new class, from "Observer" flee
  Defines "update", with a new decree
  Pulling values and printing, full of spree
  Dividing 'v' by 'd', an interaction spree.

  Then "ModObserver", so similar in thee
  A customized "update", do you agree?
  This prints 'v' modulo 'd', as simple as free
  Another child of "Observer", in this grand play of three.

  Finally, the "main", center of glee
  Creating subjects, and observers three
  DivObserver, ModObserver, all come free
  All with Subject, united they be.

  Setting value in Subject, fourteen it be
  Execution ends here, an end without decree
  In this tale of classes, updates, and spree
  A tale of code, to verse, finally set free.
```
