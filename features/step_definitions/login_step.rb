Dado('que preenche o cpf') do
    @app = Screens::App.new
    
    @app.country.select_country
    @app.login.fill_cpf('appsmartfit')  
end
  
Quando('inserir o pin') do
    @app.login.fill_pin('1111')
end
  
Então('o feed deve aparecer') do
    @app.feed.validate_feed
end