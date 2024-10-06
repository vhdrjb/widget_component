import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widget_component_annotation/widget_component_annotation.dart';

import 'bloc/sample_bloc.dart';
import 'package:flutter/material.dart';

part 'sample_class.g.dart';

@WidgetComponent(
    bloc: SampleBloc,
    baseState: SampleState,
    state: UserInfoState,
    dataStateClass: UserDataState,
    errorStateClass: UserErrorState,
    loadingStateClass: UserLoadingState)

class SampleClass extends _$SampleClass {
  const SampleClass({super.key});

  @override
  Widget onDataWidget(BuildContext context, UserDataState state) {
    throw UnimplementedError();
  }

  @override
  Widget onInitWidget(BuildContext context) {
    throw UnimplementedError();
  }

  @override
  bool shouldRebuild(previous, current) {
    throw UnimplementedError();
  }

  @override
  Widget onLoadingWidget(BuildContext context, LoadingState state) {
    throw UnimplementedError();
  }

  @override
  Widget onErrorWidget(BuildContext context, UserErrorState state) {
    throw UnimplementedError();
  }

  @override
  void onInitialization(BuildContext context) {

  }
}
