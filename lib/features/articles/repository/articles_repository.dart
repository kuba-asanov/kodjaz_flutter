/* Local dependencies */
import 'package:kodjaz/features/articles/data/models/article.dart';

abstract class ArticleRepository {
  Future<List<Article>> listArticles();
}
