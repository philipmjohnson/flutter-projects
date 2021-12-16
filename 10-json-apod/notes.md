# Ch 10 JSON (Book Club)

tl;dr: Use the freezed package to code generate data classes that can be json serialized.

Walkthrough starts:
 * https://youtu.be/vDOsMxTbfoI?t=464

# Flutter Data Class
  * only stores data
  * lots of boilerplate
  * motivates meta-programming, i.e. code generation

json_serializable
  * Provides a tighter syntax, less code, but does code generation to build out the class.
  * the to/from JSON classes do not enumerate all the fields, making it easier to modify data class.
  * Requires you to define fields, copyWith

freezed:
  * package for immutable data classes (i.e. frozen data)
  * offers terse syntax, uses json_serializable
  * and generates copyWith, equality, hashCode
  * supply just fromJson to get json serializable stuff

Example freezed code: (21:10)
  * https://youtu.be/vDOsMxTbfoI?t=1268

Shows old Apod class
  * read-only data class

Compare to new Apod class with detailed walkthrough at 24:40.



