/* Local dependencies */

import 'package:kodjaz/features/models/track.dart';

abstract class HomeRepository {
  Future<List<Track>> listTracks();
}
