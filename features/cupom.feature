#language: pt

Funcionalidade: Uso de Cupons no Checkout

    Como usuário da Strarbugs, quero poder aplicar cupons de descontos na página de Checkout
    Para que eu possa obter reduções no preço de produtos, aumentando a saisfação.

        Contexto:
            Dado que iniciei a compra do item:
                  | name     | Café com Leite |
                  | price    | R$ 19,99       |
                  | delivery | R$ 10,00       |
                  | total    | R$ 29,99       |


        Cenario: Aplicar desconto de 20%

     O usuário deve ser capaz de aplicar um cupom de 20% de desconto válido no checkout.
     O desconto deve ser aplicado apenas ao valor do produto e o valor final deve ser recalculado corretamente.

             Quando aplico o seguinte cupom: "MEUCAFE"
             Então o volar final da compra deve ser atualizado para "R$ 25,99"

        Cenario: Cupom Expirado

             Quando aplico o seguinte cupom: "PROMO20"
             Então devo ver a notificação: "Cupom expirado!"
              E o volar final da compra deve permanecer o mesmo.


        Cenario: Cupom Inválido

             Quando aplico o seguinte cupom: "PROMO100"
             Então devo ver a notificação: "Cupom inválido!"
              E o volar final da compra deve permanecer o mesmo.
