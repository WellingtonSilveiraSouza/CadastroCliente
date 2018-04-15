package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"/>\n");
      out.write("        <link href=\"resource/estilo.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        \n");
      out.write("        <title>Sistema de Cadastro</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <!-- Conteudo principal do site -->\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <header class=\"header\">\n");
      out.write("            <h1 class=\"titulo-site\">Sistema de Cadastro</h1>\n");
      out.write("            <!-- Inicio do menu de navegacao -->\n");
      out.write("            <nav class=\"nav\">\n");
      out.write("            <ul class=\"nav-list\">\n");
      out.write("                <li class=\"nav-item\"><a href=\"cliente/cadastrar.jsp\" >Cadastrar Clientes</a></li>\n");
      out.write("                <li class=\"nav-item\"><a href=\"cliente/listar.jsp\" >Listar Clientes</a></li>\n");
      out.write("            </ul>\n");
      out.write("        </nav> <!-- Fim do menu -->\n");
      out.write("        </header> <!-- Fim do Header -->  \n");
      out.write("        \n");
      out.write("        <!-- As linhas abaixo representam o conteudo principal do site -->\n");
      out.write("        <section id=\"principal\">\n");
      out.write("            <h2 class=\"sub-title\">Analise e Desenvolvimento de Sistemas - 5 Semestre.</h2>\n");
      out.write("        </section>\n");
      out.write("        <footer class=\"rodape-site\"><p>Desenvolvido por: <br>Wellington S. de Souza. <br>Eduardo V. Fontoura. <br>Felipe Siementkowski. <br>Jackson D. Hertel <br> Pratica do Seminario V - 2018</p></footer>\n");
      out.write("        </div> <!-- Fim do container -->\n");
      out.write("        <!-- Incluindo o Script de comportamento da pagina -->\n");
      out.write("        <script src=\"resource/comportamento.js\"></script>\n");
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
