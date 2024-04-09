#language: pt

Funcionalidade: Compra no App

@checkout
Cenario: Realizar uma compra no App
    Dado que o usuário clica no botão Comprar Plano
    Quando preenche o CEP e seleciona a unidade desejada
    Então o usuário deve preencher as informações de cobrança e finalizar sua compra