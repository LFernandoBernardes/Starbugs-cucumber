### Funcionalidade: Uso de Cupons no Checkout

    Como usuário da Strarbugs, quero poder aplicar cupons de descontos na página de Checkout
    Para que eu possa obter reduções no preço de produtos, aumentando a saisfação.

        Contexto:
            Dado que iniciei a compra do item:
                  | name     | Café com Leite |
                  | price    | R$ 19,99       |
                  | delivery | R$ 10,00       |
                  | total    | R$ 29,99       |


        Cenario: Aplicar desconto de 20%

        Dado que estou na pagina de Checkout
            E o item que está no meu carrinho é o Café com Leite no valor de de R$ 19,99
            E que o valor da taxa de entrega é de R$ 10,00
            E o valor total é de R$ 29,99
            E que tenho um cupom de desconto de 20%
        Quando aplico esse cupom de desconto
        Então o desconto de 20% deve ser aplicado somente no valor do Café com Leite
            E o valor final da compra deve ser atualizado para R$ 25,99


        Cenario: Cupom Expirado

        Dado que estou na pagina de Checkout
            E o item que está no meu carrinho é o Café com Leite no valor de de R$ 19,99
            E que o valor da taxa de entrega é de R$ 10,00
            E o valor total é de R$ 29,99
            E que tenho um cupom que está expirado
        Quando aplico esse cupom de desconto
        Então devo ver a seguinte notificação: "Cupom expirado!"
            E o valor final da compra deve ser mantido o mesmo R$ 29,99


        Cenario: Cupom Inválido

        Dado que estou na pagina de Checkout
            E o item que está no meu carrinho é o Café com Leite no valor de de R$ 19,99
            E que o valor da taxa de entrega é de R$ 10,00
            E o valor total é de R$ 29,99
            E que tenho um cupom que está inválido
        Quando aplico esse cupom de desconto
        Então devo ver a seguinte notificação: "Cupom inválido!"
            E o valor final da compra deve ser mantido o mesmo R$ 29,99

Obs: partir destes critérios de aceites, orientados ao comportamento. Foi "desenvolvido" a aplicação e feito os casos de testes em Gherkin. Este comportamento substitui a documentação. Com essa sintaxe mais detalhada melhor a comunicação da equipe. 


