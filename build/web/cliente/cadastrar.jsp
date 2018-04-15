
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link href="../resource/estilo.css" rel="stylesheet" type="text/css"/>
        <script src="../resouce/jquery.js" type="text/javascript"></script>
        <script src="../resouce/jquery.maskedinput.js" type="text/javascript"></script>
        <title>Cadastro de Cliente</title>
    </head>
    <script type="text/javascript">
	$(document).ready(function(){
            $("input.data").mask("99/99/9999");
            $("input.cpf").mask("999.999.999-99");
            $("input.cep").mask("99.999-999");
    });
    </script>
    <body>
        <!-- Conteudo principal do site -->
        <div class="container">
            <header class="header">
                <h1 class="titulo-site">Cadastro de Clientes</h1>        
                    <nav class="nav">
                        <ul class="nav-list">
                            <li class="nav-item"><a href="../index.jsp">Menu</a></li>
                            <li class="nav-item"><a href="listar.jsp">Listar</a></li>
                        </ul>
                    </nav>
            </header>
            <form class="formControl" name="formCadastro" method="post" action="salvar.jsp">
                <label class="formControl-label col-25 row">Nome</label>
                <input class="formControl-input col-75" type="text" name="nome" value="" />
                <br />
                <label class="formControl-label col-25 row">CPF</label>
                <input class="formControl-input col-75" type="text" name="cpf" value="" />
                <br />
                <label class="formControl-label col-25 row">Telefone</label>
                <input class="formControl-input col-75" type="text" name="telefone" value="" />
                <br />
                <label class="formControl-label col-25 row">Email</label>
                <input class="formControl-input col-75" type="text" name="email" value="" />
                <br />
                <label class="formControl-label col-25 row">Endereco</label>
                <input class="formControl-input col-75" type="text" name="endereco" value="" />
                <br />
                <label class="formControl-label col-25 row">Bairro</label>
                <input class="formControl-input col-75" type="text" name="bairro" value="" />
                <br />
                <label class="formControl-label col-25 row">Cidade</label>
                <input class="formControl-input col-75" type="text" name="cidade" value="" />
                <br />
                <label class="formControl-label col-25 row">Estado</label>            
                <select class="formControl-input col-75" name="estado">
                    <option value="SC" >Santa Catarina</option>
                    <option value="PR" >Parana</option>
                    <option value="RS" >Rio Grande do Sul</option>
                    <option value="SP" >São Paulo</option>
                    <option value="RJ" >Rio de Janeiro</option>
                </select>
                <br />
                <label class="formControl-label col-25 row">Data de Nascimento</label>
                <input id="dataNascimento" class="formControl-input col-75" type="text" name="dataNascimento"/>
                <br />
                <input class="formControl-Botao botao row" type="submit" name="salvar" value="Salvar" />
            </form>           
        </div>
        <!-- Incluindo o Script de comportamento da pagina -->
        <script src="../resource/comportamento.js"></script>
    </body>
</html>
