
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="persistencia.ClienteBD"%>
<%@page import="dominio.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link href="../resource/estilo.css" rel="stylesheet" type="text/css"/>
        <title>Alterar Cliente</title>
    </head>
    <body>
        
        <%
        Cliente cliente = null;    
        String cpf = request.getParameter("cpf");
        if (cpf != null){
            cliente = ClienteBD.getByCpf(cpf);
        }else{ //lider nao encontrado
            cliente = new Cliente();
        }
        
        String dataNascimento = "";
        if (cliente.getDataNascimento() != null){
            SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy");
            dataNascimento = formato.format(cliente.getDataNascimento());
        }
        %>
        <!-- Conteudo principal do site -->
        <div class="container">
            <header class="header">
                <h1 class="titulo-site">Alterar Cadastro</h1>
            </header>
        <form class="formControl" name="formCadastro" method="post" action="alteraCliente.jsp">
            <label class="formControl-label col-25 row">Nome</label>
            <input class="formControl-input col-75" type="text" name="nome" value="<%=cliente.getNome()%>" />
            <br />
            <label class="formControl-label col-25 row" >CPF</label>
            <% if (cpf != null){%>
            <input class="formControl-input col-75" type="text" name="cpf" value="<%=cliente.getCpf()%>" readonly />
            <br />
            <%}else{%>
            <input class="formControl-input col-75" type="text" name="cpf" value="<%=cliente.getCpf()%>" />
            <br />
            <%}%>
            <label class="formControl-label col-25 row">Telefone</label>
            <input class="formControl-input col-75" type="text" name="telefone" value="<%=cliente.getTelefone()%>" />
            <br />
            <label class="formControl-label col-25 row">Email</label>
            <input class="formControl-input col-75" type="text" name="email" value="<%=cliente.getEmail()%>" />
            <br />
            <label class="formControl-label col-25 row">Endereco</label>
            <input class="formControl-input col-75" type="text" name="endereco" value="<%=cliente.getEndereco()%>" />
            <br />
            <label class="formControl-label col-25 row">Bairro</label>
            <input class="formControl-input col-75" type="text" name="bairro" value="<%=cliente.getBairro()%>" />
            <br />
            <label class="formControl-label col-25 row">Cidade</label>
            <input class="formControl-input col-75" type="text" name="cidade" value="<%=cliente.getCidade()%>" />
            <br />
            <label class="formControl-label col-25 row">Estado</label>
            <%
            String estadoSelecionado = "SC";
            if (cliente.getEstado() != null){
                estadoSelecionado = cliente.getEstado();
            }
            %>
            <select class="formControl-input col-75" name="estado">
                <option value="SP" <% if (estadoSelecionado.equals("SP")) out.println("selected"); %>>São Paulo</option>
                <option value="RJ" <% if (estadoSelecionado.equals("RJ")) out.println("selected"); %>>Rio de Janeiro</option>
                <option value="PR" <% if (estadoSelecionado.equals("PR")) out.println("selected"); %>>Parana</option>
                <option value="SC" <% if (estadoSelecionado.equals("SC")) out.println("selected"); %>>Santa Catarina</option>
                <option value="RS" <% if (estadoSelecionado.equals("RS")) out.println("selected"); %>>Rio Grande do Sul</option>
            </select>
            <br />
            <label class="formControl-label col-25 row">Data de Nascimento</label>
            <input class="formControl-input col-75" type="text" name="dataNascimento" value="<%=dataNascimento%>" />
            <br />
            <input class="formControl-Botao botao row" type="submit" name="alterar" value="Alterar" />
            <input type="hidden" name="idAlterado" value="<%=cpf%>" />
        </form>
    </div>    
    </body>
</html>
