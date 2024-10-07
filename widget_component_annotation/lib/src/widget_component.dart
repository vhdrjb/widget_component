class WidgetComponent {
  final Type dataStateClass;
  final Type? loadingStateClass;
  final Type? errorStateClass;
  final Type bloc;
  final Type state;
  final Type baseState;

  const WidgetComponent({
    required this.dataStateClass,
    required this.bloc,
    required this.baseState,
    required this.state,
    this.loadingStateClass,
    this.errorStateClass,
  });
}
