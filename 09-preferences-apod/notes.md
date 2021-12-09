# Notes from Book Club on Ch. 9

Video presentation starts at: https://youtu.be/Vqs9qbbTeQ0?t=480

Code has been reorganized slightly.

Favorites will now be persistent.

See favorites manager
  * State Management: using Provider.
  * Maintains a list of favorite ids

APOD Card:
  * onTap: gets the FavoritesManager from the context, toggles the id's presence as a favorite
  * Note that we wrap just the heart icon in a Consumer, so only the heart gets redrawn when a favorite changes.

Favorites_pod_tab:
 * Now checks the favorites manager to decide what to display.

In the book, they set up shared_preferences in the widget. But this is bad for testing. So, this code takes the approach of setting it up in main.dart and passing it into the FavoritesManager.

Also, they write _syncToPersistence() method which converts a list of strings to a comma separated string and _readFromPersistance() to do the reverse.

To support testing, he creates an abstract class called "Persistence" which allows us to have a concrete class that uses SharedPreferences and we can have another one for testing

