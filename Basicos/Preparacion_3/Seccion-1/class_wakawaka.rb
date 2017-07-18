class WakaWaka

	def initialize(code)
  	# Variable de instancia
  	@code = code

    # Diccionario
    @dico = { "<" => "Waka", ">" => "waka", "!" => "Bang", "*" => "splat", "'" => "tick",
    	"#" => "hash", "^" => "Caret", "''" => "quote", "`" => "back_tick",
    	"$" => "dollar", "-" => "dash", "=" => "equal", "@" => "at",
    	"_" => "underscore", "%" => "Percent", "~" => "tilde", "4" => "four"}
    end

  # Comportamiento
  def translate
  	arr_translate_key = []
  	arr_translate_value = []

  	@code.each do |codes|
  		@dico.each do |key, value|

  			if codes == key
  				arr_translate_key << key
  				arr_translate_value << value
  			end
  		end
  	end
  	puts arr_translate_key[0..6].map { |x| x.to_s.ljust(10) }.join
  	puts arr_translate_value[0..6].map { |x| x.to_s.ljust(10) }.join
  	puts arr_translate_key[7..12].map { |x| x.to_s.ljust(10) }.join
  	puts arr_translate_value[7..12].map { |x| x.to_s.ljust(10) }.join
  	puts arr_translate_key[13..18].map { |x| x.to_s.ljust(10) }.join
  	puts arr_translate_value[13..18].map { |x| x.to_s.ljust(10) }.join
  	puts arr_translate_key[19..25].map { |x| x.to_s.ljust(10) }.join
  	puts arr_translate_value[19..25].map { |x| x.to_s.ljust(10) }.join
  end
end

  waka_code = WakaWaka.new(["<", ">", "!", "*", "'", "'", "#", "^", "''", "`", "$", "$", "-",
  	"!", "*", "=", "@", "$", "_", "%", "*", "<", ">", "~", "#", "4"])

  waka_code.translate