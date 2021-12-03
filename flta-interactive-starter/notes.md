# Notes on Chapter 6

The grocery screen shows either an image when there's no items, or a list of items.

For AGC, we might want to copy this for list gardens page:
  * When empty, an image.
  * Otherwise a list of gardens. Maybe have an icon to indicate whether you are an owner or not.

A common widget structure:
  * Padding --> Center --> Column

Sample code to embed an image:

```dart
// 1
Flexible(
  // 2
  child: AspectRatio(
    aspectRatio: 1 / 1,
    child: Image.asset('assets/fooderlich_assets/empty_list.png'),
  ),
),

```

# Provider for navigation

Use a top-level provider to keep track of which screen to display. Allows navigation from both bottom bar and from buttons within the app.

# read-only data

The GroceryManager widget has a private list of items; the getter makes an unmodifiable copy to return to clients.

# Form processing

* Pretty good example of a screen with a form
  - Shows different controllers.
  - How to create, edit, and delete an item.
  - How to display a list of items
  - Preview the item as you create it.