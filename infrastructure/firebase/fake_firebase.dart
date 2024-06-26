import 'package:cheatsheet/application/types/analytics_event.dart';
import 'package:cheatsheet/application/interfaces/firebase.dart';

class FakeFirebaseService implements FirebaseService {
  @override
  Future<void> init() async {

  }

  @override
  Future<void> sendEvent(AnalyticsEvent event) async {

  }
}
