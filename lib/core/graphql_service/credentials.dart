/* External dependencies */
import 'package:flutter/foundation.dart';

final AppCredentials appCredentials = AppCredentials();

class AppCredentials {
  //Prod credentials
  final String prodApi =
      "https://emcdugkqlzevdogbhntgp3c7zm.appsync-api.us-west-2.amazonaws.com";
  final String prodApiKey = "da2-spixxlluxfaa3ptgmzoqf3x54a";

  //Beta credentials

  final String betaApi =
      "https://emcdugkqlzevdogbhntgp3c7zm.appsync-api.us-west-2.amazonaws.com";
  final String betaApiKey = "da2-spixxlluxfaa3ptgmzoqf3x54a";

  //Getters
  String getAPI() => kDebugMode ? betaApi : prodApi;

  String getApiKey() => kDebugMode ? betaApiKey : prodApiKey;
}
