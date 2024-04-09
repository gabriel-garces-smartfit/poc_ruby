Dado('que o usuário clica no botão Comprar Plano') do
    @app = Screens::App.new

    @app.country.select_country
    @app.checkout.buy_plan
end
  
Quando('preenche o CEP e seleciona a unidade desejada') do
    @app.checkout.fill_in_CEP('08675130')
    press_keycode(66)
    @app.checkout.click_CEP
    @app.checkout.buy_black_plan
end
  
Então('o usuário deve preencher as informações de cobrança e finalizar sua compra') do
    @app.checkout.person_information
end