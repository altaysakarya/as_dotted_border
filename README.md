# as_dotted_border

A Flutter package for creating customizable dotted borders around widgets. This package allows you to easily add dotted borders with customizable colors, stroke widths, dot sizes, spacing, and border radii.

## Features

- Customize the color of the dotted border.
- Adjust the stroke width of the dots.
- Modify the radius of the dots for different effects.
- Change the spacing between dots.
- Apply a border radius to create rounded corners for your dotted border.

## Getting Started

To use this package, add `as_dotted_border` as a dependency in your pubspec.yaml file.

### Installation

```yaml
dependencies:
  as_dotted_border: ^0.0.1
```

### Usage

Import `as_dotted_border` in your Dart file:

```dart
import 'package:as_dotted_border/as_dotted_border.dart';
```

Use the `ASDottedBorderWidget` to wrap any widget with a dotted border:

```dart
ASDottedBorderWidget(
  color: Colors.blue, // Dot color
  strokeWidth: 2.0, // Dot stroke width
  dotRadius: 4.0, // Dot radius
  dotSpacing: 6.0, // Space between dots
  borderRadius: 8.0, // Border radius for rounded corners
  child: Container(
    width: 200,
    height: 100,
    color: Colors.transparent,
  ),
)
```

### Customization

The `ASDottedBorderWidget` supports the following parameters for customization:

* `color`: The color of the dots. Default is `Colors.black`.
* `strokeWidth`: The width of the stroke used to paint the dots. Default is `1.0`.
* `dotRadius`: The radius of each dot. Default is `3.0`.
* `dotSpacing`: The spacing between each dot. Default is `5.0`.
* `borderRadius`: The border radius for rounded corners. Default is `0.0`.
* `child`: The widget to wrap with the `dotted border`.

### License

This project is licensed under the MIT License - see the LICENSE file for details.

