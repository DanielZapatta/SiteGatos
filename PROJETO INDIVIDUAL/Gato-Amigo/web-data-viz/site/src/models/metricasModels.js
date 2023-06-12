var database = require("../database/config");

function listarqtdGatos(){
    var instrucao = `
    SELECT COUNT(idgato) AS qtd_totalgatos FROM cadastro_gatos;
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

module.exports = {
    listarqtdGatos,
}