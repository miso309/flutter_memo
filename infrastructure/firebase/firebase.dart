import 'package:cheatsheet/application/types/analytics_event.dart';
import 'package:cheatsheet/application/interfaces/firebase.dart';

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