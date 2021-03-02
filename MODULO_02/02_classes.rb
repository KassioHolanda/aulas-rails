class Pessoa 
    # def initialize(cont = 5)
    #     cont.times do |i|
    #         puts "COntando #{i}"
    #     end
    #     puts "Inicializando"
    # end

    # accessor criam getters e setters da classe
    attr_accessor :nome
    # accessor substitui esse codigo de baixo
    # def initialize(nome = "Indigente")
    #     @nome = nome
    # end

    # def set_nome=(nome)
    #     @nome = nome
    # end

    # def get_nome
    #     @nome
    # end

    def imprimir_nome
        @nome
    end

    def falar(texto = "tudo bem")
        "Ola, #{texto}"
    end

    def meu_id
        "Meu id é o #{self.object_id}"
    end

    

end


class String
    def inverter
        self.reverse
    end
end
# inicialize roda qnd a classe é iniciada
# require_relative "arquivo" - importa o arquivo
p = Pessoa.new
# p.set_nome = "Kassio" #setter
# puts p.get_nome #getter
# puts p.falar("kASSIO")
# puts p.falar
# puts p.meu_id
# puts p.imprimir_nome

# puts "Kassio".inverter