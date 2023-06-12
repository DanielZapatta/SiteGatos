var express = require("express");
var router = express.Router();

var gatosController = require("../controllers/gatosController");

router.get("/", function (req, res) {
    gatosController.testar(req, res);
});

router.get("/listar", function (req, res) {
    gatosController.listar(req, res);
});

//Recebendo os dados do html e direcionando para a função cadastrar de gatosController.js
router.post("/cadastrar", function (req, res) {
    gatosController.cadastrar(req, res);
})

router.post("/autenticar", function (req, res) {
    gatosController.entrar(req, res);
});

module.exports = router;