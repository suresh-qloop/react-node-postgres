const getArticles = "SELECT * FROM articles ORDER BY id DESC";
const addArticle =
  "INSERT INTO articles (heading, content,created_at) VALUES ($1, $2, now())";
const getArticleById = "SELECT * FROM articles WHERE id = $1";
const updateArticle =
  "UPDATE articles SET heading = $1, content = $2, updated_at = now() WHERE id = $3";
const removeArticle = "DELETE FROM articles WHERE id = $1";

module.exports = {
  getArticles,
  addArticle,
  getArticleById,
  updateArticle,
  removeArticle,
};
