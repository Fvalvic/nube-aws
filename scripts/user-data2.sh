#!/bin/bash
dnf install -y nginx
systemctl enable --now nginx

cat > /usr/share/nginx/html/index.html <<EOF
<!doctype html>
<html lang="es">
<head>
  <meta charset="utf-8">
  <title>Librería Tinta</title>
</head>
<body>
  <h1>Librería Tinta</h1>
  <p>Tu librería de barrio.</p>
  <!-- TODO: añade horario, dirección y una recomendación de libro -->
  <hr>
  <p><strong>HORARIO:</strong> Lunes-Sábado 9.00 a 19.00 // Domingo - Cerrado</p>

  <p><strong>DIRECCIÓN:</strong> Calle Poeta Quintana, 36 (Alicante) Nos hemos mudado!!</p>

  <p><strong>LIBRO RECOMENDADO DEL MES:</strong> El Hobbit, J.R.R. Tolkien</p>
  
  <small><i>Servidor 2</i></small>
</body>
</html>
EOF