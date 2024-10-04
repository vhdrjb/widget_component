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
    // TODO: implement onDataWidget
    throw UnimplementedError();
  }

  @override
  Widget onInitWidget(BuildContext context) {
    // TODO: implement onInitWidget
    throw UnimplementedError();
  }
}
