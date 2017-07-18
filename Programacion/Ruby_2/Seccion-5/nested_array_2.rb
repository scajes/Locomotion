=begin
| Nombre           | Edad | Genero    | Grupo    | Calificaciones |
+------------------+------+-----------+----------+----------------+
|Rodrigo García    | 13   | Masculino | Primero  |[9, 9, 7, 6, 8] |                 
|Fernanda Gonzalez | 12   | Femenino  | Tercero  |[6, 9, 8, 6, 8] |
|Luis Perez        | 13   | Masculino | Primero  |[8, 7, 7, 9, 8] |
|Ana Espinosa      | 14   | Femenino  | Segundo  |[9, 9, 6, 8, 8] |
|Pablo Moran       | 11   | Masculino | Segundo  |[7, 8, 9, 9, 8] |
=end

calif = [{"Nombre"=>"Rodrigo García", "Edad"=>13, "Genero"=>"Masculino", "Grupo"=>"Primero", "Calificaciones"=>[9, 9, 7, 6, 8]},
    {"Nombre"=>"Fernanda Gonzalez", "Edad"=>12, "Genero"=>"Femenino", "Grupo"=>"Tercero", "Calificaciones"=>[6, 9, 8, 6, 8]},
    {"Nombre"=>"Luis Perez", "Edad"=>13, "Genero"=>"Masculino", "Grupo"=>"Primero", "Calificaciones"=>[8, 7, 7, 9, 8]},
    {"Nombre"=>"Ana Espinosa", "Edad"=>14, "Genero"=>"Femenino", "Grupo"=>"Segundo", "Calificaciones"=>[9, 9, 6, 8, 8]},
    {"Nombre"=>"Pablo Moran", "Edad"=>11, "Genero"=>"Masculino", "Grupo"=>"Segundo", "Calificaciones"=>[7, 8, 9, 9, 8]}]

p calif[0] == {"Nombre"=>"Rodrigo García", "Edad"=>13, "Genero"=>"Masculino", "Grupo"=>"Primero", "Calificaciones"=>[9, 9, 7, 6, 8]}
p calif[1].values_at("Nombre", "Calificaciones") == ["Fernanda Gonzalez", [6, 9, 8, 6, 8]]
p calif[2].key("Luis Perez") == "Nombre"
p calif[3].values == ["Ana Espinosa", 14, "Femenino", "Segundo", [9, 9, 6, 8, 8]]
p calif[4].keys == ["Nombre", "Edad", "Genero", "Grupo", "Calificaciones"]