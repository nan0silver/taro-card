<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">

    <!-- OG tag -->
    <title><%= request.getAttribute("pageTitle") %></title>
    <meta property="og:title" content="<%= request.getAttribute("ogTitle") %>" />
    <meta property="og:description" content="<%= request.getAttribute("ogDescription") %>" />
    <meta property="og:image" content="<%= request.getAttribute("ogImageUrl") %>" />
    <meta property="og:url" content="<%= request.getAttribute("ogPageUrl") %>" />


  <link href="<%=request.getContextPath()%>/assets/form-style.css" rel="stylesheet">
</head>
<body>
<main>
    <section>
        <h1>✨타로 결과 ✨</h1>
    </section>
    <section>
        <p><%= request.getAttribute("uuid")%></p>
        <button onclick="location.href = '<%= request.getContextPath() %>'">다시 하기</button>
  </section>
</main>

</body>
</html>
