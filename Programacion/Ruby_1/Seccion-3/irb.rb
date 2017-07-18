CodeaCamp10s-Mac-mini:~ codea_mac_10$ irb
irb(main):001:0> 6+3
=> 9
irb(main):002:0> 9-6
=> 3
irb(main):003:0> "Al" + "berto"
=> "Alberto"
irb(main):004:0> "Sacasa" + " " + "Canales"
=> "Sacasa Canales"
irb(main):005:0> "alberto".capitalize
=> "Alberto"
irb(main):006:0> name = "Alberto"
=> "Alberto"
irb(main):007:0> print name
Alberto=> nil
irb(main):008:0> name
=> "Alberto"
irb(main):009:0> array = ["Alberto", 70, "Javier"]
=> ["Alberto", 70, "Javier"]
irb(main):010:0> puts array
Alberto
70
Javier
=> nil
irb(main):011:0> print array
["Alberto", 70, "Javier"]=> nil
irb(main):012:0> p array
["Alberto", 70, "Javier"]
=> ["Alberto", 70, "Javier"]
irb(main):013:0> array.inspect
=> "[\"Alberto\", 70, \"Javier\"]"
irb(main):014:0> whatever = "Alberto"
=> "Alberto"
irb(main):015:0> whatever.swapcase!
=> "aLBERTO"
irb(main):016:0> whatever
=> "aLBERTO"
irb(main):017:0> another = "Alberto"
=> "Alberto"
irb(main):018:0> another.swapcase
=> "aLBERTO"
irb(main):019:0> another
=> "Alberto"
irb(main):020:0> Math.sqrt 7690939204
=> 87698.0
irb(main):021:0> Math.sqrt(7690939204)
=> 87698.0
irb(main):022:0> def shout(word)
irb(main):023:1> word.upcase
irb(main):024:1> end
=> :shout
irb(main):025:0> p word("hola")
NoMethodError: undefined method `word' for main:Object
	from (irb):25
	from /Users/codea_mac_10/.rbenv/versions/2.2.3/bin/irb:11:in `<main>'
irb(main):026:0> p shout("hola")
"HOLA"
=> "HOLA"