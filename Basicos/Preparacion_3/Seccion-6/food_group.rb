# Buscando en hashes

def food_group(group)
  food_groups = {
    "grano" => ['Arroz','Trigo', 'Avena', 'Cebada', 'Harina'],
    "vegetal" => ['Zanahoria', 'Maiz', 'Elote', 'Calabaza', 'Papa'],
    "fruta" => ['Manzana', 'Mango', 'Fresa', 'Durazno', 'Piña'],
    "carne" => ['Res', 'Pollo', 'Salmon', 'Pescado', 'Cerdo'],
    "lacteo" => ['Leche', 'Yogurt', 'Queso', 'Crema']
  }


  food_groups.each do |key, value|
      value.each do |items|
        return key if items == group
      end
  end
  "comida no encontrada"
end

p food_group('Crema') == "lacteo"
p food_group('Res')  == "carne"
p food_group('Piña') == "fruta"
p food_group('Caña') == "comida no encontrada"