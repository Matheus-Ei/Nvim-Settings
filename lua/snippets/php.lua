return {
  s("html5", fmt(
    [[
    <!DOCTYPE html>
    <html lang="{}">
    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>{}</title>
    </head>
    <body>
      {}
    </body>
    </html>
    ]]
    ,
    {
      i(1, "pt-BR"),
      i(2, "Title"),
      i(0)
    }
  )),
}

