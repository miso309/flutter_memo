import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'checkbox_provider.g.dart';

@riverpod
class CheckboxProviderNotifier extends _$CheckboxProviderNotifier {
  @override
  bool build() {
    return false;
  }

  void toggle(bool value) {
    state = value;
  }
}
