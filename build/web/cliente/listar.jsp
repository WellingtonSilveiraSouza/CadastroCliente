
<%@page import="persistencia.ClienteBD"%>
<%@page import="dominio.Cliente"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link href="../resource/estilo.css" rel="stylesheet" type="text/css"/>
        <title>Lista de Cliente</title>
    </head>
    <body>
        <!-- Conteudo principal do site -->
        <div class="container">
            <header class="header">
                <h1 class="titulo-site">Clientes Cadastrados</h1>
                <nav class="nav">
                    <ul class="nav-list">
                        <li class="nav-item"><a href="../index.jsp">Menu</a></li>
                        <li class="nav-item"><a href="cadastrar.jsp">Cadastrar</a></li>
                    </ul>
                </nav>
                <table class="tabela row">      
                    <thead>
                        <tr>
                            <th>CPF</th>
                            <th>Nome</th>
                            <th>Email</th>
                            <th>Endereco</th>
                            <th>Bairro</th>
                            <th>Data Nascimento</th>
                            <th>Telefone</th>
                            <th>Cidade</th>
                            <th>Estado</th>
                            <th>Opcoes</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            //A linha abaixo formata a data
                            SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy");

                            ArrayList<Cliente> clientes = ClienteBD.listar();
                            for (int i = 0; i < clientes.size(); i++) {
                                Cliente cadaCliente = clientes.get(i);
                                String dataNascimento = "";
                                //As linha abaixo verificam se a data e diferente de nula, se for realizar a formatacao da data
                                if (cadaCliente.getDataNascimento() != null) {
                                    dataNascimento = formato.format(cadaCliente.getDataNascimento());
                                }
                        %>
                        <tr>
                            <td><%=cadaCliente.getCpf()%></td>
                            <td><%=cadaCliente.getNome()%></td>
                            <td><%=cadaCliente.getEmail()%></td>
                            <td><%=cadaCliente.getEndereco()%></td>
                            <td><%=cadaCliente.getBairro()%></td>
                            <td><%=dataNascimento%></td>
                            <td><%=cadaCliente.getTelefone()%></td>
                            <td><%=cadaCliente.getCidade()%></td>
                            <td><%=cadaCliente.getEstado()%></td>
                            <td>
                                <a href="alterar.jsp?cpf=<%=cadaCliente.getCpf()%>">Alterar</a>
                                <a href="excluir.jsp?cpf=<%=cadaCliente.getCpf()%>" onclick="return confirm('Deseja realmente excluir?')" >Excluir</a>
                            </td>
                        </tr>
                        <%
                            }
                        %>
                    </tbody>
                </table>
        </div> <!-- Fim do container -->
        <!-- Incluindo o Script de comportamento da pagina -->
        <script src="../resource/comportamento.js"></script>

    </body>
</html>
