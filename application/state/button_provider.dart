import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'button_provider.g.dart';

@riverpod
class ButtonProviderNotifier extends _$ButtonProviderNotifier {
  @override
  bool build() {
    return false;
  }

  void toggle() {
    state = !state;
  }
}
