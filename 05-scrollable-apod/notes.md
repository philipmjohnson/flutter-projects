# Notes

Chapter 5: More widgets (Scrolling)

https://www.youtube.com/watch?v=4Ea1mhkQRxQ

Code walkthrough starts about 12 minutes in.

* ListView and GridView

ListView constructors:
  * ListView(): OK for a small number of widgets.
  * ListView.builder(): Takes total number of widgets and constructs them lazily.
  * ListView.separator():  Enables spacing every so often in the list.

FutureBuilder:
 * See "Widget of the Week: Future Builder"
 * Fun to watch this series.

Code organization:
  * Different way from Fooderlich. It's organized by feature.

26:39: Link to event loop video
  * https://www.youtube.com/watch?v=vl_AaCgudcY

FutureBuilder:
  - future: (promise)
  - builder: called at each milestone in the lifecycle for a future. Takes a context, an async thing, and a snapshot

GridView:
* Used to represent favorited APODs.

Mocked back end:
* mock_apod_service: good for showing how to mockup the back end.
* Has a json structure for each entry.