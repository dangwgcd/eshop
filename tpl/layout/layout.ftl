<#include "/layout/particle.ftl"/>
<!DOCTYPE html>
<#macro htmlHead title charset="utf-8" lang="zh-CN">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=${charset}" />
  <meta http-equiv="Content-Language" content="${lang}"/>
  <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no">
  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="apple-mobile-web-app-status-bar-style" content="black">
  <title>${title}</title>

  <link rel="stylesheet" href="/static/mui/css/mui.min.css">
  <link rel="stylesheet" href="/static/component/ui/css/style.css">

  <#nested>
</head>
</#macro>

<#macro htmlBody>
<body>
  <div id="wrapper">
   <#nested>
  </div>
 </#macro>
 <#macro htmlFoot>
<script src="/static/mui/js/mui.min.js"></script>
 <#nested>
</body>
</html>
</#macro>