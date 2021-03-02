require "tty-spinner"

namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      show_spinner("Apagando BD...") { %x(rails db:drop) }      
      show_spinner("Criando BD...") { %x(rails db:create) }
      show_spinner("Migrando BD...") { %x(rails db:migrate) }
      %x(rails dev:add_mining_types)
      %x(rails dev:add_coins)          
    else 
      puts "Você não esta em modo desenvolvimento"
    end
  end

  desc "Cadastro tipos de mineração"  
    task add_mining_types: :environment do
    show_spinner("Cadastrando tipos de mineração...") do 
      mining_types = [
        {description: "Proof of Work", acronym: "PoW"},
        {description: "Proof of Capacity", acronym: "PoC"},
        {description: "Proof of Stake", acronym: "PoS"}
      ]
  
      mining_types.each do |mining_type|
        MiningType.find_or_create_by!(mining_type)
      end
  
    end
  end
  

  desc "Configurando as moedas"
  task add_coins: :environment do 
    show_spinner("Cadastrando moedas...") do 
  
      coins = [
          {
              description: "BitCoin", 
              acronym: "BTC",
              url_image: "https://img2.gratispng.com/20180702/qye/kisspng-bitcoin-cash-cryptocurrency-logo-5b39e86ea15234.8989399415305217106608.jpg",
              mining_type: MiningType.find_by(acronym: 'PoW')
          },
          {
              description: "Ethereum", 
              acronym: "ETH",
              url_image: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/ETHEREUM-YOUTUBE-PROFILE-PIC.png/600px-ETHEREUM-YOUTUBE-PROFILE-PIC.png",
              mining_type: MiningType.all.sample
          },
          {
              description: "Iota", 
              acronym: "IOT",
              url_image: "https://img2.gratispng.com/20180712/tkc/kisspng-iota-cryptocurrency-logo-internet-of-things-tether-aren-5b481f06b57ae1.5360095415314531907434.jpg",
              mining_type: MiningType.all.sample
          },
          {
              description: "ZCash", 
              acronym: "ZEC",
              url_image: "https://cdn.iconscout.com/icon/free/png-512/zcash-441948.png",
              mining_type: MiningType.all.sample
          },
      ]
    
    coins.each do |coin| 
        Coin.find_or_create_by!(coin)
    end
  end
end
  
    # puts "Moedas Cadastradas com sucesso"

private 
  def show_spinner(message_start, message_end = "Concluido")
    spinner = TTY::Spinner.new("[:spinner] #{message_start}")
    spinner.auto_spin
    yield
    spinner.success("(#{message_end})")
  end
end


