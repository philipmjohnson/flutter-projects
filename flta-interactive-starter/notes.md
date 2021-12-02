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

# Paused

at section 6.5 Switching Tabs.