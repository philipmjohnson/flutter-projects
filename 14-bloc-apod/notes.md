# Ch 14 Streams. (BLOC?) APOD

Video starts at:
https://youtu.be/lBS5a1hVxPM?t=3945

BLoC design pattern:
* Two streams: one for events and one for state.
* UI adds events to event stream.
* BLoC processor listens for events, then creates a new state object (when appropriate).
* UI listens to state stream and updates UI as state changes. 

This week is a "hand-rolled" version of the BLoC design pattern. Next week will show the use of Flutter_BLoC and freeze.

At end of video, Craig says "all state management is fundamentally the same". 