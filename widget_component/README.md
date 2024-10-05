# widget_component

`widget_component` is a Flutter library designed to simplify the creation of stateless widgets with optimized state management using `BlocBuilder`. This library reduces unnecessary rebuilds, improving your application's performance.

The library consists of two parts:
- **widget_component**: The main library for creating optimized stateless widgets.
- **widget_component_annotation**: An annotation library that helps in generating widgets from annotated classes.

## Features

- **Automatic widget generation**: Annotate your classes with `@WidgetComponent` to auto-generate stateless widgets.
- **Optimized State Management**: Uses `BlocBuilder` to handle widget states efficiently.
- **Performance Enhancement**: Reduces unnecessary rebuilds, leading to improved performance.

## Getting Started

### Installation

Add the following to your `pubspec.yaml` file:

```yaml
dependencies:
  
  widget_component_annotation: latest_version
dev_dependencies:
  build_runner: latest_version
  widget_component: latest_version
```

Run `flutter pub get` to install the dependencies.

## Usage

To use **widget component**, annotate your class with `@WidgetComponent`. The library will generate a corresponding widget for the class and manage its state using BlocBuilder.

Here's a basic example:
```dart

@WidgetComponent(
    bloc: SampleBloc,
    baseState: SampleState,
    state: UserInfoState,
    dataStateClass: UserDataState,
    errorStateClass: UserErrorState,
    loadingStateClass: UserLoadingState)
```

### Detail
- bloc : the bloc class
```dart
class SampleBloc extends Bloc<SampleEvent, SampleState>
```
- baseState: the state that is defined for bloc 
`SampleState`
- state: it should be a `sealed class` extends `baseState`
- dataStateClass: the class that emit the data into UI
- errorStateClass: the class that emit the error into UI
- loadingStateClass: the class that emit the loading into UI


the run `flutter pub run build_runner build/watch`.

add generated file to your class by using `part` : 
```dart
part 'sample_class.g.dart';
```

override the method that you need for your states :

#### onDataWidget - mandatory :
```dart
  @override
  Widget onDataWidget(BuildContext context, UserDataState state) {
    throw UnimplementedError();
  }
```

this method will return the 


