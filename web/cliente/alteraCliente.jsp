
<%@page import="persistencia.ClienteBD"%>
<%@page import="dominio.Cliente"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
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
        <div class="container">
            <header class="header">    
        <h1 class="titulo-site">Alterar Cadastro</h1>
        <%        
        String idAlterado = request.getParameter("idAlterado");
        String nome = request.getParameter("nome");
        String cpf = request.getParameter("cpf");
        String telefone = request.getParameter("telefone");
        String email = request.getParameter("email");
        String dataNascimento = request.getParameter("dataNascimento");
        String cidade = request.getParameter("cidade");
        String estado = request.getParameter("estado");
        String bairro = request.getParameter("bairro");
        String endereco = request.getParameter("endereco");
        
        SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy");
        Date data = formato.parse(dataNascimento);
        
        Cliente cliente;
        if (idAlterado != "null"){
            cliente = ClienteBD.getByCpf(idAlterado);
        }else{ //lider nao encontrado
            cliente = new Cliente();
        }
            
        cliente.setNome(nome);
        cliente.setCpf(cpf);
        cliente.setTelefone(telefone);
        cliente.setEmail(email);
        cliente.setEndereco(endereco);
        cliente.setBairro(bairro);
        cliente.setCidade(cidade);
        cliente.setEstado(estado);
        cliente.setDataNascimento(data);
        if (idAlterado != "null"){
            ClienteBD.alterar(cliente);%>
            <h2 class="sub-title">Cliente alterado com sucesso!</h2>
            <nav class="nav">
                <ul class="nav-list">
                    <li class="nav-item"><a href="../index.jsp">Menu</a></li>
                    <li class="nav-item"><a href="listar.jsp">Listar</a></li>
                </ul>
            </nav>
            <%
        }else{
            ClienteBD.inserir(cliente);
           %>
            <br/><a href="../index.jsp">Menu</a>
            <br/><a href="cadastrar.jsp">Cadastrar</a>
            <br/><a href="listar.jsp">Listar</a>
            </header>
            <%
        }
        %>
        </div>
    </body>
</html>
