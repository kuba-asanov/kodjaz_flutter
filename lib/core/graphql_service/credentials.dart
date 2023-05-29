/* External dependencies */
import 'package:flutter/foundation.dart';

final AppCredentials appCredentials = AppCredentials();

class AppCredentials {
  //Prod credentials
  final String prodUsername = "+996999358106";
  final String prodPassword = 'GfuLgtr4e123!@#';
  final String prodApi =
      "https://grtisltcn5hsfn22ioqmlkqslm.appsync-api.us-west-2.amazonaws.com";
  final String prodApiKey = "da2-onnh72mjbzao5mgv3t7wyvzx6e";
  final String prodIdentityPoolId =
      "us-west-2:60a7f86f-d4d2-4f19-8813-85123d4a4b06";
  final String prodUserPoolId = "us-west-2_tuNREylzx";
  final String prodClientId = "3ki19ppe55hs6f074vjipq39hm";

  //Prod OneSignal App Id
  final String prodOneSignalAppId = "02bba473-79cf-4046-a66d-b25904fa5cb3";

  //Beta credentials
  final String betaUsername = "+996999358106";
  final String betaPassword = 'GfuLgtr4e123!@#';
  final String betaApi =
      "https://m36hsqcfbzdvhndbhqwwychziu.appsync-api.us-west-2.amazonaws.com";
  final String betaApiKey = "da2-s47nxsx74jdfhiqhamcutrt5my";
  final String betaIdentityPoolId =
      "us-west-2:66ab9b91-59ed-425b-b134-3104ccf7f0fc";
  final String betaUserPoolId = "us-west-2_jQrnC4JSa";
  final String betaClientId = "518bf1v1vffc48bn2g4s9fhcdc";

  //Beta OneSignal App Id
  final String betaOneSignalAppId = "9a894103-dc7c-48da-85e7-ca5b1dbcdb48";

  //Getters
  String getUsername() => kDebugMode ? betaUsername : prodUsername;

  String getPassword() => kDebugMode ? betaPassword : prodPassword;

  String getAPI() => kDebugMode ? betaApi : prodApi;

  String getApiKey() => kDebugMode ? betaApiKey : prodApiKey;

  String getIdentityPoolId() =>
      kDebugMode ? betaIdentityPoolId : prodIdentityPoolId;

  String getUserPoolId() => kDebugMode ? betaUserPoolId : prodUserPoolId;

  String getClientId() => kDebugMode ? betaClientId : prodClientId;

  String getOneSignalAppId() => kDebugMode ? betaOneSignalAppId : prodOneSignalAppId;
}
