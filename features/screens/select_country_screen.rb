module Screens

    class CountryScreen < BaseScreen

        def elements_country
            {
            ## Button Country
            id_btn_country: 'Brasil'

            }
        end

        def select_country
            click_id elements_country[:id_btn_country]
        end
    end
end