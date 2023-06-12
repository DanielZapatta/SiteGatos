var express = require("express");
var router = express.Router();

var metricasController = require("../controllers/metricasController");

router.get("/listarqtdGatos/", function (req, res) {
    metricasController.listarqtdGatos(req, res);
});

module.exports = router;