const { Router } = require("express");
const controller = require("./controller");

const router = Router();

// GET return a list of articles
router.get("/articles", controller.getArticles);

// POST create article
router.post("/article", controller.addArticle);

// GET return the article
router.get("/article/:id", controller.getArticleById);

// PUT update article
router.put("/article/:id", controller.updateArticle);

// DELETE delete article
router.delete("/article/:id", controller.removeArticle);

module.exports = router;
