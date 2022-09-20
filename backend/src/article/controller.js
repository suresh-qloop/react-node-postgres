const pool = require("../../db");
const queries = require("./queries");

const getArticles = (req, res) => {
  pool.query(queries.getArticles, (error, results) => {
    if (error) throw error;
    res.status(200).json(results.rows);
  });
};

const addArticle = (req, res) => {
  console.log(req);
  const { heading, content } = req.body;

  //add article to db
  pool.query(queries.addArticle, [heading, content], (error, results) => {
    if (error) throw error;
    res.status(201).send("Article Created Successfully!");
  });
};

const getArticleById = (req, res) => {
  const id = parseInt(req.params.id);
  pool.query(queries.getArticleById, [id], (error, results) => {
    if (error) throw error;
    res.status(200).json(results.rows);
  });
};

const updateArticle = (req, res) => {
  const id = parseInt(req.params.id);
  const { heading, content } = req.body;

  pool.query(queries.getArticleById, [id], (error, results) => {
    const nostudentFound = !results.rows.length;
    if (nostudentFound) {
      res.send("Article does not exist in the database");
    }
    pool.query(
      queries.updateArticle,
      [heading, content, id],
      (error, results) => {
        if (error) throw error;
        res.status(200).send("Article updated successfully.");
      }
    );
  });
};

const removeArticle = (req, res) => {
  const id = parseInt(req.params.id);
  pool.query(queries.getArticleById, [id], (error, results) => {
    const nostudentFound = !results.rows.length;
    if (nostudentFound) {
      res.send("Article does not exist in the database");
    }
    pool.query(queries.removeArticle, [id], (error, results) => {
      if (error) throw error;
      res.status(200).send("Article removed successfully.");
    });
  });
};

module.exports = {
  getArticles,
  addArticle,
  getArticleById,
  updateArticle,
  removeArticle,
};
