import conexao from "../database/index.js"

class ContatosRepository {

    // Função helper
    async executarQuery(sql, valores = []) {
        try {
            const [rows] = await conexao.query(sql, valores)
            return rows
        } catch (erro) {
            console.error(`Erro no query: ${erro}`)
            throw erro
        }
    }

    // Store
    async findAll() {
        try {
            sql = `SELECT * FROM db_agenda.tb_usuarios`

            const resultado = await this.executarQuery(sql)
            return resultado

        } catch (erro) {

            throw new Error(erro)

        }
    }

}
