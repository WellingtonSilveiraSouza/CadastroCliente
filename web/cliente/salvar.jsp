
<%@page import="persistencia.ClienteBD"%>
<%@page import="dominio.Cliente"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salvar Cadastro</title>
    </head>
    <body>
        <h1 align="center">Confirmacao de Cadastro</h1>
        <%
        
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
                
        Cliente cliente = new Cliente();        
        cliente.setNome(nome);
        cliente.setCpf(cpf);
        cliente.setTelefone(telefone);
        cliente.setEmail(email);
        cliente.setEndereco(endereco);
        cliente.setBairro(bairro);
        cliente.setCidade(cidade);
        cliente.setEstado(estado);
        cliente.setDataNascimento(data);
        
        
        ClienteBD.inserir(cliente);
        out.println("Cliente cadastrado com sucesso!");
        %>
    <div align="center">
        <nav>
            <ul>
                <li><a href="../index.jsp">Menu</a></li>
                <li><a href="cadastrar.jsp">Cadastrar</a></li>
                <li><a href="listar.jsp">Listar</a></li>        
            </ul>
        </nav>
    </div>   
    </body>
</html>
