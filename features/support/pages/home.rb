

class HomePage
    include Capybara::DSL

    def open
        visit 'https://starbugs-qa.vercel.app/'
    end

    def coffee_list
        return all('.coffee-item')
    end

    def buy(cooffee_name)
        product = find('.coffee-item', text: cooffee_name)
        product.find('.buy-coffee').click

    end

end