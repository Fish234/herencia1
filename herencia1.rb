#In process
class Person
    def initialize(first, last, age)
        @first_name = first
        @last_name = last
        @age = age
    end
    def birthday
        @age += 1
    end
end
class Student < Person
    def talk
        puts “Aquí es la clase de programación con Ruby?”
    end
    def introduce
        puts “Hola profesor. Mi nombre es #{@first_name} #{@last_name}.”
    end
end
class Teacher < Person
    def talk
        puts “Bienvenidos a la clase de programación con Ruby!”
    end
    def introduce
        puts “Hola alumnos. Mi nombre es #{@first_name} #{@last_name}.”
    end
end
class Parent < Person
    def talk
        puts “Aquí es la reunión de apoderados?”
    end
    def introduce
        puts “Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}.”
    end
end
# print p1 = Parent.new(‘Felipe’,‘Letelier’, 32).talk
21:49
ejercicio 2
21:50
module Habilidades
    module Volador
        def volar
            ‘Estoy volandooooo!’
        end
        def aterrizar
            ‘Estoy cansado de volar, voy a aterrizar’
        end
    end
    module Nadador
        def nadar
            ‘Estoy nadando!’
        end
        def sumergir
            ‘glu glub glub glu’
        end
    end
    module Caminante
        def caminar
            ‘Puedo caminar!’
        end
    end
end
module Alimentacion
    module Herbivoro
        def comer
            ‘Puedo comer plantas!’
        end
    end
    module Carnivoro
        def comer
            ‘Puedo comer carne!’
        end
    end
end
class Animal
    attr_reader :nombre
    def initialize(nombre)
        @nombre = nombre
    end
end
class Ave < Animal
end
class Mamifero < Animal
end
class Insecto < Animal
end
class Pinguino < Ave
    include Habilidades::Nadador, Habilidades::Caminante, Alimentacion::Carnivoro
end
class Paloma < Ave
    include Habilidades::Volador, Habilidades::Caminante, Alimentacion::Carnivoro
end
class Pato < Ave
    include Habilidades::Nadador, Habilidades::Volador, Habilidades::Caminante,
        Alimentacion::Carnivoro, Alimentacion::Herbivoro
end
class Perro < Mamifero
    include Habilidades::Caminante, Alimentacion::Carnivoro
end
class Gato < Mamifero
    include Habilidades::Caminante, Alimentacion::Carnivoro
end
class Vaca < Mamifero
    include Habilidades::Caminante, Alimentacion::Herbivoro
end
class Mosca < Insecto
    include Habilidades::Volador, Habilidades::Caminante,
        Alimentacion::Carnivoro, Alimentacion::Herbivoro
end
class Maripoza < Insecto
    include Habilidades::Volador, Habilidades::Caminante,
        Alimentacion::Herbivoro
end
class Abeja < Insecto
    include Habilidades::Volador, Habilidades::Caminante,
        Alimentacion::Herbivoro
end