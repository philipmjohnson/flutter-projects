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

Watch this Navigator 2.0 presentation by Chun-Heng Tai, who contributed to the declarative API:
  * https://youtu.be/xFFQKvcad3s?t=3158.
In this video, Simon Lightfoot walks you through a Navigator 2.0 example:
  * https://www.youtube.com/watch?v=Y6kh5UonEZ0.
Flutter Navigation 2.0 by Dominik Roszkowski goes through the differences between Navigator 1.0 and 2.0, including a video example:
  * https://youtu.be/JmfYeF4gUu0?t=9728.
For in-depth knowledge about Navigator, check out Flutter’s documentation:
  * https://api.flutter.dev/flutter/widgets/Navigator-class.html.

Navigator 2.0 can be a little hard to understand and manage on its own. The packages below wrap around the Navigator 2.0 API to make routing and navigation easier:

  * https://pub.dev/packages/go_router
  * https://pub.dev/packages/beamer
  * https://pub.dev/packages/flow_builder
  * https://pub.dev/packages/fluro
  * https://pub.dev/packages/vrouter
  * https://pub.dev/packages/auto_route
