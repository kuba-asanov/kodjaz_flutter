mixin GqlQuery {
  //Articles API.
  static const String listArticles = r"""
  query listArticles($input: ListArticlesInput) {
    listArticles(input: $input) {
      total
      articles {
        id
        author 
        category
        contents{
          type
          data
        }
        heroMedia {
          imageUrl
          fullVideoUrl
        }
        articleType
        createDate
        description
        title
      }
    }
  }
""";

  static const String getArticle = r"""
  query getArticle($input: GetArticleInput!) {
    getArticle(input: $input) {
      id
      author 
      category
      contents{
        type
        data
      }
      heroMedia {
        imageUrl
        fullVideoUrl
      }
      articleType
      createDate
      description
      title
    }
  }
""";
}
