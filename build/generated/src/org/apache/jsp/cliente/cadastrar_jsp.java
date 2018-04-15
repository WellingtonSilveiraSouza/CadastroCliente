package org.apache.jsp.cliente;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class cadastrar_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"/>\n");
      out.write("        <link href=\"../resource/estilo.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <script src=\"../resouce/jquery_mask_jquery-1.5.2.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"../resouce/jquery_mask_jquery_maskedinput-1.3.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <title>Cadastro de Cliente</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <!-- Conteudo principal do site -->\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <header class=\"header\">\n");
      out.write("                <h1 class=\"titulo-site\">Cadastro de Clientes</h1>        \n");
      out.write("                    <nav class=\"nav\">\n");
      out.write("                        <ul class=\"nav-list\">\n");
      out.write("                            <li class=\"nav-item\"><a href=\"../index.jsp\">Menu</a></li>\n");
      out.write("                            <li class=\"nav-item\"><a href=\"listar.jsp\">Listar</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </nav>\n");
      out.write("            </header>\n");
      out.write("            <form class=\"formControl\" name=\"formCadastro\" method=\"post\" action=\"salvar.jsp\">\n");
      out.write("                <label class=\"formControl-label col-25 row\">Nome</label>\n");
      out.write("                <input class=\"formControl-input col-75\" type=\"text\" name=\"nome\" value=\"\" />\n");
      out.write("                <br />\n");
      out.write("                <label class=\"formControl-label col-25 row\">CPF</label>\n");
      out.write("                <input class=\"formControl-input col-75\" type=\"text\" name=\"cpf\" value=\"\" />\n");
      out.write("                <br />\n");
      out.write("                <label class=\"formControl-label col-25 row\">Telefone</label>\n");
      out.write("                <input class=\"formControl-input col-75\" type=\"text\" name=\"telefone\" value=\"\" />\n");
      out.write("                <br />\n");
      out.write("                <label class=\"formControl-label col-25 row\">Email</label>\n");
      out.write("                <input class=\"formControl-input col-75\" type=\"text\" name=\"email\" value=\"\" />\n");
      out.write("                <br />\n");
      out.write("                <label class=\"formControl-label col-25 row\">Endereco</label>\n");
      out.write("                <input class=\"formControl-input col-75\" type=\"text\" name=\"endereco\" value=\"\" />\n");
      out.write("                <br />\n");
      out.write("                <label class=\"formControl-label col-25 row\">Bairro</label>\n");
      out.write("                <input class=\"formControl-input col-75\" type=\"text\" name=\"bairro\" value=\"\" />\n");
      out.write("                <br />\n");
      out.write("                <label class=\"formControl-label col-25 row\">Cidade</label>\n");
      out.write("                <input class=\"formControl-input col-75\" type=\"text\" name=\"cidade\" value=\"\" />\n");
      out.write("                <br />\n");
      out.write("                <label class=\"formControl-label col-25 row\">Estado</label>            \n");
      out.write("                <select class=\"formControl-input col-75\" name=\"estado\">\n");
      out.write("                    <option value=\"SC\" >Santa Catarina</option>\n");
      out.write("                    <option value=\"PR\" >Parana</option>\n");
      out.write("                    <option value=\"RS\" >Rio Grande do Sul</option>\n");
      out.write("                    <option value=\"SP\" >São Paulo</option>\n");
      out.write("                    <option value=\"RJ\" >Rio de Janeiro</option>\n");
      out.write("                </select>\n");
      out.write("                <br />\n");
      out.write("\n");
      out.write("                <label class=\"formControl-label col-25 row\">Data de Nascimento</label>\n");
      out.write("                <input id=\"dataNascimento\" class=\"formControl-input col-75\" type=\"text\" name=\"dataNascimento\"/>\n");
      out.write("                <br />\n");
      out.write("                <input class=\"formControl-Botao botao row\" type=\"submit\" name=\"salvar\" value=\"Salvar\" />\n");
      out.write("            </form>\n");
      out.write("           \n");
      out.write("        </div>\n");
      out.write("        <script>\n");
      out.write("            jQuery(function($){\n");
      out.write("                   $(\"#dataNascimento\").mask(\"99/99/9999\");\n");
      out.write("                   $(\"#campoTelefone\").mask(\"(999) 999-9999\");\n");
      out.write("                   $(\"#campoSenha\").mask(\"***-****\");\n");
      out.write("            });\n");
      out.write("\t</script>\n");
      out.write("        <!-- Incluindo o Script de comportamento da pagina -->\n");
      out.write("        <script src=\"../resource/comportamento.js\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
