/* Local dependencies */

import 'package:bilimapp/features/models/track.dart';

abstract class HomeRepository {
  Future<List<Track>> listTracks();
  Future<List<Track>> myListTracks();
}
