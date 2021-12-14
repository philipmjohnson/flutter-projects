# Notes on Ch 10: JSON (Flutter Apprentice)

* Learn about .part files, code generation.

* Also uses a factory constructor. For details on named vs. factory constructors, see:
  * https://medium.com/nerd-for-tech/named-constructor-vs-factory-constructor-in-dart-ba28250b2747

Basic differences in a nutshell:
  * Factory constructor is static, so no access to `this` keyword.
  * Factory constructors must include a `return` statement, unlike named constructors.
  * Factory constructors can return a class instance *or any subclass instance*.
  * Factory constructors can return a *cached* instance rather than a new instance.

