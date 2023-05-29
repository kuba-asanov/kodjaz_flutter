/* External dependencies */
import 'package:graphql/client.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import "package:http/http.dart" as http;

/* Local dependencies */
import 'credentials.dart';

Future<GraphQLClient> createClient() async {
  return GraphQLClient(
    cache: GraphQLCache(),
    link: await getHttpLink(),
  );
}

Future<HttpLink> getHttpLink() async {
  final String endpoint = appCredentials.getAPI();
  Map<String, String> defaultHeaders = const {};
  http.Client? httpClient;

  defaultHeaders = {
    'x-api-key': appCredentials.getApiKey(),
    'Content-Type': 'application/graphql'
  };

  return HttpLink(
    '$endpoint/graphql',
    defaultHeaders: defaultHeaders,
    httpClient: httpClient,
  );
}
