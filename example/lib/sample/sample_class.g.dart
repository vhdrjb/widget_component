// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample_class.dart';

// **************************************************************************
// WidgetComponentGenerator
// **************************************************************************

abstract class _$SampleClass extends StatelessWidget {
  const _$SampleClass({Key? key});

  void onInitialization(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    onInitialization(context);
    return BlocBuilder<SampleBloc, SampleState>(
      bloc: context.read<SampleBloc>(),
      buildWhen: shouldRebuild,
      builder: _checkRebuild,
    );
  }

  Widget _checkRebuild(BuildContext context, SampleState state) {
    return switch (state) {
      UserDataState() => onDataWidget(context, state),
      UserErrorState() => onErrorWidget(context, state),
      UserLoadingState() => onLoadingWidget(context, state),
      _ => onInitWidget(context)
    };
  }

  Widget onDataWidget(BuildContext context, UserDataState state);

  Widget onErrorWidget(BuildContext context, UserErrorState state) {
    return Container();
  }

  Widget onLoadingWidget(BuildContext context, LoadingState state) {
    return Container();
  }

  Widget onInitWidget(BuildContext context);
  bool shouldRebuild(previous, current) {
    return current is UserInfoState;
  }
}
