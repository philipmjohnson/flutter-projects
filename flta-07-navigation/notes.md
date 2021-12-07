# Flutter Apprentice Ch 7: Navigation

Flutter has a Navigation 1.0 and 2.0
  * 1.0 had only push() and pop()
  * 2.0 uses what looks like the Provider() pattern (router listens to events from anywhere in widget tree)

Things to note about this app:
 * Fooderlich is now a stateful widget
   - Just implements the createState() method
   - the State widget is wrapped in a MultiProvider
   - the MultiProvider's child is a Consumer.
     - allows the app to set dark or light mode based on user input.

 * Illustrates user and profile models, page IDs, login, onbaording.

 * Prefacing a variable name with "_" makes it private to that class.

 * `late` keyword: promise that it will be non-null at run-time.