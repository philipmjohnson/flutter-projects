# Notes from firebase chapter

He develops a design pattern/architecture that looks quite nice, including:

  * Freezed for data objects. He is quite adamant about how this is a good package.
  * A data management layer, which provides staged access to Hive/Shared_Preferences/Firebase. This locally caches downloaded data from Firebase. I think each time you restart the app, you need to clear Hive to avoid stale data?

Also there's authentication. 

This is all based on streams. I kinda wonder if we want to use RiverPod as state management, just so everything is stream based? 

