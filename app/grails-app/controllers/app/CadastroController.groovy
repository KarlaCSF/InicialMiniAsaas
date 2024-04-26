package app

class CadastroController {

    def showInfo() { 
        println("Nome: $params.nome")
        println("CPF: $params.cpf")
        println("Telefone: $params.telefone")
        println("Email: $params.email")
        println("CEP: $params.cep")
        println("Cidade: $params.cidade")
        println("Estado: $params.estado")
        println("Logradouro: $params.logradouro")
        println("Bairro: $params.bairro")
        println("Numero: $params.numero")

        redirect(uri: "/")
    }
}
