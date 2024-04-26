<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Cadastro</title>
    <script>
      const searchCep = async () => {
        const cep = document.getElementById("cep").value;
        const data = await fetch("https://viacep.com.br/ws/" + cep + "/json/");
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
    <style>
      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
      }

      body {
        background-color: #f1f5fb;
        font-family: Verdana, Geneva, Tahoma, sans-serif;
      }

      .container {
        display: flex;
        background-color: #0030b9;
        max-width: 600px;
        margin: 30px auto;
        padding: 40px;
        flex-direction: column;
        border-radius: 15px;
        color: white;
      }

      .container h1 {
        margin: auto;
        padding-bottom: 15px;
        font-size: 30px;
      }

      .form-item {
        padding: 10px;
      }

      label {
        display: block;
        padding-bottom: 5px;
        font-size: 18px;
      }

      input {
        padding: 8px;
        border-radius: 5px;
        width: 100%;
        font-size: 18px;
      }

      .row-fields {
        display: flex;
        flex-direction: row;
      }

      button {
        margin: auto;
        padding: 15px;
        font-size: 20px;
        font-weight: bold;
        border-radius: 10px;
      }
    </style>
  </head>

  <body>
    <div class="container">
      <h1>Cadastro</h1>
      <g:form action="showInfo" controller="cadastro">
        <div class="form-item">
          <label for="nome">Nome</label>
          <input name="nome" id="nome" />
        </div>
        <div class="form-item">
          <label for="cpf">CPF</label>
          <input name="cpf" id="cpf" maxlength="11" />
        </div>
        <div class="form-item">
          <label for="telefone">Telefone</label>
          <input type="tel" id="telefone" name="telefone" />
        </div>
        <div class="form-item">
          <label for="email">Email</label>
          <input type="email" id="email" name="email" />
        </div>
        <div class="form-item">
          <label for="cep">CEP</label>
          <input maxlength="8" id="cep" name="cep" onblur="searchCep()" />
        </div>
        <div class="row-fields">
          <div class="form-item">
            <label for="cidade">Cidade</label>
            <input id="cidade" name="cidade" />
          </div>
          <div class="form-item">
            <label for="estado">Estado</label>
            <input id="estado" name="estado" />
          </div>
        </div>
        <div class="form-item">
          <label for="logradouro">Logradouro</label>
          <input id="logradouro" name="logradouro" />
        </div>
        <div class="row-fields">
          <div class="form-item">
            <label for="bairro">Bairro</label>
            <input id="bairro" name="bairro" />
          </div>
          <div class="form-item">
            <label for="numero">Número</label>
            <input type="number" id="numero" name="numero" />
          </div>
        </div>
        <div class="form-item">
          <button type="submit">Enviar</button>
        </div>
      </g:form>
    </div>
  </body>
</html>
