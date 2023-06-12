var express = require("express");
var router = express.Router();

var ongController = require("../controllers/ongController");

router.get("/", function (req, res) {
    ongController.testar(req, res);
});

router.get("/listar", function (req, res) {
    ongController.listar(req, res);
});

//Recebendo os dados do html e direcionando para a função cadastrar de ongController.js
router.post("/cadastrar", function (req, res) {
    ongController.cadastrar(req, res);
})

router.post("/autenticar", function (req, res) {
    ongController.entrar(req, res);
});

module.exports = router;