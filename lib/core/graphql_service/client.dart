/* External dependencies */
import 'package:graphql_flutter/graphql_flutter.dart';

/* Local dependencies */
import 'credentials.dart';

GraphQLClient createClient() {
  return GraphQLClient(
    cache: GraphQLCache(),
    link: getHttpLink(),
  );
}

HttpLink getHttpLink() {
  final String endpoint = appCredentials.getAPI();

  return HttpLink(
    '$endpoint/graphql',
    defaultHeaders: {
      'x-api-key': appCredentials.getApiKey(),
      'Content-Type': 'application/graphql'
    },
  );
}
