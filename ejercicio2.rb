module Habilidades
    module Volador
        def volar
            'Estoy volandooooo!'
        end
    
        def aterrizar
            'Estoy cansado de volar, voy a aterrizar'
        end
    end
    module Nadador
        def nadar
            'Estoy nadando!'
        end

        def sumergir
            'glu glub glub glu'
        end
    end

    module Caminante
        def caminar
            'Puedo caminar!'
        end
    end
end

module Alimentacion
    module Herbivoro
        def comer
            'Puedo comer plantas!'
        end
    end
     module Carnivoro
        def comer
            'Puedo comer carne!'
        end
    end
end

class Animal
    include Alimentacion
    include Habilidades
    attr_reader :nombre
    def initialize(nombre)
        @nombre = nombre
    end
end

class Ave < Animal
end
class Mamiferos < Animal
end
class Insectos < Animal
    include Volador, Caminante
end

class Pinguinos < Ave
    include Nadador, Carnivoro, Caminante
end

class Paloma < Ave
    include Volador, Herbivoro, Caminante
end

class Pato < Ave
    include Volador, Nadador, Herbivoro, Carnivoro, Caminante
end

class Perro < Mamiferos
    include  Carnivoro, Caminante
end
class Gato < Mamiferos
    include Carnivoro, Caminante
end
class Vaca < Mamiferos
    include Herbivoro, Caminante
end

class Mosca < Insectos
    include Carnivoro, Herbivoro, Caminante
end

class Mariposa < Insectos
    include Herbivoro, Caminante
end
class Abeja < Insectos
    include Herbivoro, Caminante
end

pinguinos = Pinguinos.new('happy feet')
print "soy #{pinguinos.nombre} #{pinguinos.caminar}, #{pinguinos.nadar}, #{pinguinos.sumergir} y #{pinguinos.comer} \n"

perro = Perro.new('pluto')
print "soy #{perro.nombre} #{perro.caminar} y #{perro.comer} \n"

abeja = Abeja.new('bee')
print "soy #{abeja.nombre} #{abeja.caminar}, #{abeja.volar}, #{abeja.aterrizar} y #{abeja.comer} \n"
