## Ch 11 Networking Book Club

Walkthrough starts at:
  * https://youtu.be/vDOsMxTbfoI?t=3383

To run this code, must create a (gitignored) secrets.dart file.
  * check https://api.nasa.gov/planetary/apod

apod_api.dart
 * Example code for dealing with HTTP request parameters

ApiSource
 * Now used in main.dart to get the pictures from the actual Nasa site.

Shows how to locally cache results from the external resource.

Note: he says that when you have a "real" state management solution, you shouldn't need to have FutureBuilder in your API.

In step 3, he makes it "smarter"
  * RequestType, SourceType: so the code sees where the cached object actually came from.

In step 5, cached network image
  * Uses a package for caching network images.

Recommends resocoder