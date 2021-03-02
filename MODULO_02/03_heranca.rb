class Pessoa
    attr_accessor :nome, :email    
end

class PessoaFisica < Pessoa
    attr_accessor :cpf
    
    def self.falar(texto)
        texto
    end    
end

class PessoaJuridica < Pessoa 
    attr_accessor :cnpj

    def self.pagar_fornecedor
        puts "Pagando fornecedor"
    end
end

p1 = Pessoa.new
p1.nome = "Kassio"
p1.email = "kassio@gmail.com"

p2 = PessoaFisica.new
p2.nome = "Joao"
p2.email = "j@.com"
p2.cpf = "12345678909"
puts p2.falar("Ola")
#é possivel chamar sem instanciar a classe com o self
puts PessoaFisica.falar("kk")