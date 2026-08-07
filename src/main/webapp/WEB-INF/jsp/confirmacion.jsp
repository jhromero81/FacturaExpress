<%-- Página de confirmación con redirección automática tras operación exitosa --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  request.setAttribute("pageTitle", "Confirmacion de Venta");
%>
<%@ include file="/WEB-INF/jsp/layout/header.jsp" %>
<%-- Scriptlet: mensaje de éxito y URL de redirección (por defecto al home) --%>
<%
  String mensaje = (String) request.getAttribute("mensaje");
  String redirectUrl = (String) request.getAttribute("redirectUrl");
  if (redirectUrl == null) redirectUrl = ctx + "/";
%>

<%-- Mensaje de confirmación con icono de éxito --%>
<div class="content-card confirm-box" id="confirmacion">
  <i class="material-icons confirm-icon">check_circle</i>
  <h2 class="confirm-title">Confirmacion de operacion</h2>
  <h3><%= mensaje != null ? mensaje : "Operaci&oacute;n exitosa" %></h3>
  <p>Ser&aacute; redirigido autom&aacute;ticamente en 3 segundos...</p>
  <div style="margin-top:24px;">
    <a href="<%= redirectUrl %>" class="btn btn-teal waves-effect waves-light">Ir ahora</a>
  </div>
</div>

<%-- Redirección automática mediante JS después de 3 segundos --%>
<script>
setTimeout(function() { window.location.href = '<%= redirectUrl %>'; }, 3000);
</script>

<%@ include file="/WEB-INF/jsp/layout/footer.jsp" %>
