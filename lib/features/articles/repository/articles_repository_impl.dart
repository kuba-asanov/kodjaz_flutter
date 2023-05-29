/* External dependencies */
import 'package:injectable/injectable.dart';

/* Local dependencies */
import '../../../core/graphql_queries/gql_query.dart';
import '../../../core/graphql_service/graphql_service.dart';
import 'package:kodjaz/features/articles/data/models/article.dart';
import 'articles_repository.dart';

@Injectable(as: ArticleRepository)
class ArticleRepositoryImpl implements ArticleRepository {
  ArticleRepositoryImpl(this._service);

  final GraphQLService _service;

  @override
  Future<List<Article>> listArticles() async {
    try {
      Map<String, dynamic>? result = await _service.query(
        GqlQuery.listArticles,
        variables: {
          'input': {
            // "from": 0,
          },
        },
      );

      if (result == null) {
        return [];
      }

      return (result['listArticles']['articles'] as List)
          .map((e) => Article.fromJson(e))
          .toList();
    } catch (e) {
      rethrow;
    }
  }
}
