package org.apache.jsp.WEB_002dINF.views;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class main_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "components/imports.jsp", out, false);
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "components/menu.jsp", out, false);
      out.write("\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"card-container col-md-4\">\n");
      out.write("                <div class=\"card col-md-12\" onclick='location.href = \"mvclivro?do=lstmodel\"'>\n");
      out.write("                     <img src=\"https://i.ebayimg.com/thumbs/images/g/7GkAAOSwKUNZ15WB/s-l960.jpg\" class=\"card-image\">\n");
      out.write("                    <div class=\"card-content\">\n");
      out.write("                        <span class=\"card-title\">Livros</span>\n");
      out.write("                        <p>\n");
      out.write("                            Pesquise e conheça mais sobre as obras literárias disponíveis.\n");
      out.write("                        </p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"card-container col-md-4\">\n");
      out.write("                <div class=\"card col-md-12\" onclick='location.href = \"mvcexemplar?do=lstmodel\"'>\n");
      out.write("                    <img src=\"https://media.timeout.com/images/103641970/630/472/image.jpg\" class=\"card-image\">\n");
      out.write("                    <div class=\"card-content\">\n");
      out.write("                        <span class=\"card-title\">Exemplares</span>\n");
      out.write("                        <p>\n");
      out.write("                            Descubra se há algum exemplar do seu livro tanto desejado!\n");
      out.write("                        </p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"card-container col-md-4\" data-test=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${username}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" onclick='location.href = \"mvccliente?do=lstmodel\"'>\n");
      out.write("                <div class=\"card col-md-12\">\n");
      out.write("                    <img src=\"http://1.bp.blogspot.com/-bGmVA96rnIo/UHrRKzIkjEI/AAAAAAAACk4/12rlAPir2P0/s1600/girl-with-books.jpg\" class=\"card-image\">\n");
      out.write("                    <div class=\"card-content\">\n");
      out.write("                        <span class=\"card-title\">Clientes</span>\n");
      out.write("                        <p>\n");
      out.write("                            Adicione novos usuários...\n");
      out.write("                        </p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("<style>\n");
      out.write("   body {\n");
      out.write("        background-color: #e4e4e4;\n");
      out.write("        overflow: hidden;\n");
      out.write("    }\n");
      out.write("    .row{\n");
      out.write("        padding: 10px 30px;\n");
      out.write("    }\n");
      out.write("    .card {\n");
      out.write("        min-height: 337px;\n");
      out.write("        cursor: pointer;\n");
      out.write("        //margin: 10px 20px 10px 20px !important;\n");
      out.write("        padding: 0;\n");
      out.write("        position: relative;\n");
      out.write("        margin: .5rem 0 1rem 0;\n");
      out.write("        background-color: #fff;\n");
      out.write("        -webkit-transition: -webkit-box-shadow .25s;\n");
      out.write("        transition: -webkit-box-shadow .25s;\n");
      out.write("        transition: box-shadow .25s;\n");
      out.write("        transition: box-shadow .25s, -webkit-box-shadow .25s;\n");
      out.write("        border-radius: 2px;\n");
      out.write("        box-shadow: 0 2px 2px 0 rgba(0,0,0,0.14), 0 1px 5px 0 rgba(0,0,0,0.12), 0 3px 1px -2px rgba(0,0,0,0.2);\n");
      out.write("    }\n");
      out.write("        img {\n");
      out.write("            max-width: 100%;\n");
      out.write("        }\n");
      out.write("    .card-image {\n");
      out.write("        width: 100%;\n");
      out.write("        max-width: 100%;\n");
      out.write("        height: 200px;\n");
      out.write("    }\n");
      out.write("    .card-container{\n");
      out.write("        height: 20%;\n");
      out.write("    } \n");
      out.write("    .card .card-content {\n");
      out.write("        padding: 24px;\n");
      out.write("        border-radius: 0 0 2px 2px;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("        .card .card-content .card-title {\n");
      out.write("            display: block;\n");
      out.write("            line-height: 32px;\n");
      out.write("            margin-bottom: 8px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("    .card .card-title {\n");
      out.write("        font-size: 24px;\n");
      out.write("        font-weight: 300;\n");
      out.write("    }\n");
      out.write("</style>");
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
