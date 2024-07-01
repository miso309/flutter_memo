import 'package:nota_bia/application/types/analytics_event.dart';
import 'package:nota_bia/application/interfaces/firebase.dart';

class FakeFirebaseService implements FirebaseService {
  @override
  Future<void> init() async {

  }

  @override
  Future<void> sendEvent(AnalyticsEvent event) async {

  }
}
