import 'package:nota_bia/application/types/analytics_event.dart';
import 'package:nota_bia/application/interfaces/firebase.dart';

class DefaultFirebaseService implements FirebaseService {
  @override
  Future<void> init() async {
    throw Exception('このアプリでFireBaseは使えません');
  }

  @override
  Future<void> sendEvent(AnalyticsEvent event) async {
    throw Exception('このアプリでFireBaseは使えません');
  }
}