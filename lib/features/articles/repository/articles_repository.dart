/* Local dependencies */
import 'package:bilimapp/features/articles/data/models/article.dart';

abstract class ArticleRepository {
  Future<List<Article>> listArticles();
}
