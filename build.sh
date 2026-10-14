#!/bin/sh
# Wraps invoice-desk.html (the Claude artifact source, which has no <html>/<head>)
# into a standalone index.html for GitHub Pages.
cd "$(dirname "$0")"
{
  printf '<!doctype html>\n<html lang="en">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">\n'
  printf '<style>:root{padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0;font:14px system-ui,sans-serif}img{max-width:100%%}[hidden]{display:none!important}</style>\n</head>\n<body>\n'
  cat invoice-desk.html
  printf '\n</body>\n</html>\n'
} > index.html
echo "Built index.html"
