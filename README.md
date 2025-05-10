# Customizable Progress Bar

A highly customizable Flutter package that provides both linear and circular progress bars with smooth animations and extensive styling options.

## Features

- 🎨 Fully customizable appearance
- ⚡ Smooth animations
- 📱 Responsive design
- 🎯 Easy to use
- 🔄 Both linear and circular progress bars

## Demo

https://github.com/user-attachments/assets/4d69fdcd-f6a7-4425-a1c0-d3582356671c

The above demonstration shows both linear and circular progress bars in action with different customization options.

## Installation

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  customizable_progress_bar: ^1.0.0
```

Or run this command:

```bash
flutter pub add customizable_progress_bar
```

## Usage

### Linear Progress Bar

```dart
import 'package:customizable_progress_bar/customizable_progress_bar.dart';

LinearProgressBar(
  progress: 0.7, // 70% progress
  height: 20,
  backgroundColor: Colors.grey[200],
  progressColor: Colors.blue,
  animationDuration: Duration(milliseconds: 500),
  borderRadius: BorderRadius.circular(12),
)
```

### Circular Progress Bar

```dart
import 'package:customizable_progress_bar/customizable_progress_bar.dart';

CircularProgressBar(
  progress: 0.7, // 70% progress
  size: 100,
  strokeWidth: 8,
  backgroundColor: Colors.grey[200],
  progressColor: Colors.blue,
  animationDuration: Duration(milliseconds: 800),
)
```

## Parameters

### Linear Progress Bar

| Parameter | Type | Default | Description |
|-----------|------|---------|-------------|
| `progress` | `double` | Required | Progress value between 0.0 and 1.0 |
| `height` | `double` | 20 | Height of the progress bar |
| `backgroundColor` | `Color` | Color(0xFFE0E0E0) | Background color of the progress bar |
| `progressColor` | `Color` | Colors.teal | Color of the progress indicator |
| `animationDuration` | `Duration` | 500ms | Duration of the progress animation |
| `borderRadius` | `BorderRadiusGeometry` | BorderRadius.circular(12) | Border radius of the progress bar |

### Circular Progress Bar

| Parameter | Type | Default | Description |
|-----------|------|---------|-------------|
| `progress` | `double` | Required | Progress value between 0.0 and 1.0 |
| `size` | `double` | 100 | Size of the circular progress bar |
| `strokeWidth` | `double` | 8 | Width of the progress line |
| `backgroundColor` | `Color` | Color(0xFFE0E0E0) | Background color of the progress bar |
| `progressColor` | `Color` | Colors.teal | Color of the progress indicator |
| `animationDuration` | `Duration` | 800ms | Duration of the progress animation |

## Example

```dart
import 'package:flutter/material.dart';
import 'package:customizable_progress_bar/customizable_progress_bar.dart';

class ProgressDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LinearProgressBar(
          progress: 0.7,
          progressColor: Colors.blue,
        ),
        SizedBox(height: 20),
        CircularProgressBar(
          progress: 0.7,
          progressColor: Colors.blue,
        ),
      ],
    );
  }
}
```

## Contributing

Contributions are welcome! If you find a bug or want to add a new feature, please open an issue or submit a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
