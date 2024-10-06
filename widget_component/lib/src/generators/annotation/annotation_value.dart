class AnnotationValue {
  final String dataStateClass;
  final String? loadingStateClass;
  final String? errorStateClass;
  final String bloc;
  final String state;
  final String baseState;

  const AnnotationValue({
    required this.dataStateClass,
    this.loadingStateClass,
    this.errorStateClass,
    required this.bloc,
    required this.state,
    required this.baseState,
  });
}
