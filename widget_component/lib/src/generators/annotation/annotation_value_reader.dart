import 'package:source_gen/source_gen.dart';
import 'package:widget_component/src/generators/annotation/annotation_value.dart';

class AnnotationValueReader {
  final ConstantReader annotation;
  static const String _dataStateClass = 'dataStateClass';
  static const String _loadingStateClass = 'loadingStateClass';
  static const String _errorStateClass = 'errorStateClass';
  static const String _bloc = 'bloc';
  static const String _state = 'state';
  static const String _baseState = 'baseState';

  const AnnotationValueReader({
    required this.annotation,
  });

  AnnotationValue read() {
    return AnnotationValue(
        dataStateClass: annotation.read(_dataStateClass).typeValue.toString(),
        bloc: annotation.read(_bloc).typeValue.toString(),
        state: annotation.read(_state).typeValue.toString(),
        errorStateClass: annotation.read(_errorStateClass).isNull
            ? null
            : annotation.read(_errorStateClass).typeValue.toString(),
        loadingStateClass: annotation.read(_loadingStateClass).isNull
            ? null
            : annotation.read(_loadingStateClass).typeValue.toString(),
        baseState: annotation.read(_baseState).typeValue.toString());
  }
}
