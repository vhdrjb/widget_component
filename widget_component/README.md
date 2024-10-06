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

## Running the Code Generator

Run the build_runner to generate your widgets:

```bash
flutter pub run build_runner build
```
This will process the annotated classes and generate corresponding stateless widgets.

## Usage


### States Structure

This widget use `sealed class` in dart. You should create a base class for these 3 states.

```dart
sealed class UserInfoState extends SampleState
```

#### Data State

This class will carry the success data from bloc to UI. It should be subclass of `sealed class` and `DataState` class (contains in annotation library)
```dart
class UserDataState extends UserInfoState implements DataState
```

#### Loading State

This class tell the UI that it should show the loading. It should be subclassed of `sealed class` and `DataState` class (contains in annotation library)
```dart
class UserLoadingState extends UserInfoState implements LoadingState
```


#### Error State

This class will carry the error data from bloc to UI. It should be subclassed of `sealed class` and `DataState` class (contains in annotation library)
```dart
class UserErrorState extends UserInfoState implements ErrorState
```




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

#### onInitWidget - Mandatory* :
```dart
  @override
  Widget onInitWidget(BuildContext context) {
  throw UnimplementedError();
  }
```

This method will return the first view of the widget , when no relevant state is emitted to UI yet.

#### onDataWidget - Mandatory* :
```dart
  @override
  Widget onDataWidget(BuildContext context, UserDataState state) {
    throw UnimplementedError();
  }
```

this method will return the widget when the `dataStateClass` instance emitted to UI

#### onLoadingWidget - Optional :
```dart
  @override
  Widget onLoadingWidget(BuildContext context, LoadingState state) {
    throw UnimplementedError();
  }
```

this method will return the widget when the `LoadingState` instance emitted to UI

#### onErrorWidget - Optional :
```dart
  @override
  Widget onErrorWidget(BuildContext context, UserErrorState state) {
    throw UnimplementedError();
  }
```

this method will return the widget when the `errorStateClass` instance emitted to UI

#### onInitialization - Optional :
```dart
  @override
  void onInitialization(BuildContext context) {

  }
```

This the first method before any build method being called.

#### shouldRebuild - Optional :
```dart
  @override
  bool shouldRebuild(previous, current) {
    return true;
  }
```

This method will handle the rebuilding condition of this component. By default, it will be `true` when
the state is instance of `state` in widgetComponent definition but on some condition you may want to customize
the rebuilding of the widget.


### Contributions

We welcome contributions! If you encounter any issues or have feature requests, feel free to open an issue or submit a pull request.

