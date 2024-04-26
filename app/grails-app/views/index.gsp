<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro</title>
    <script>
      const searchCep = async () => {
        const cep = document.getElementById("cep").value;
        const data = await fetch('https://viacep.com.br/ws/' + cep + '/json/');
        const address = await data.json();
        console.log(address);
        fillAddress(address);
      };

      const fillAddress = (address) => {
        document.getElementById("cidade").value = address.localidade;
        document.getElementById("estado").value = address.uf;
        document.getElementById("bairro").value = address.bairro;
        document.getElementById("logradouro").value = address.logradouro;
      };
    </script>
</head>
<body>
    <form>
        <label for="nome">Nome</label>
        <input>
        <label for="cpf">CPF</label>
        <input maxlength="11">
        <label for="dataNasc">Data de Nascimento</label>
        <input type="date">
        <label for="telefone">Telefone</label>
        <input type="tel">
        <label for="email">Email</label>
        <input type="email">
        <label for="cep">CEP</label>
        <input maxlength="11">
        <label for="cidade">Cidade</label>
        <input>
        <label for="estado">Estado</label>
        <input>
        <label for="bairro">Bairro</label>
        <input>
        <label for="logradouro">Logradouro</label>
        <input>
        <label for="numero">Número</label>
        <input type="number">
    </form>
</body>
</html>