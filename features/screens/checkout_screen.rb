module Screens
    class CheckoutScreen < BaseScreen

        def elements_checkout
            {
                xpath_btn_buy_plan: '//android.widget.Button[@content-desc="COMPRAR PLANO"]',
                xpath_fill_in_CEP: '//android.widget.EditText',
                xpath_click_CEP_suzano: '//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View[1]',
                xpath_bnt_black_plan: '//android.widget.Button[@content-desc="COMPRAR PLANOS"][1]',
                xpath_btn_wanted_plan: '(//android.widget.Button[@content-desc="QUERO ESTE PLANO"])[1]',
                id_btn_continue_shopping: 'CONTINUAR COMPRA',
                id_person_data: 'DADOS PESSOAIS'
            }
        end

        def buy_plan
            click_xpath elements_checkout[:xpath_btn_buy_plan]
        end

        def fill_in_CEP (cep)
            click_xpath elements_checkout[:xpath_fill_in_CEP]
            send_keys_xpath elements_checkout[:xpath_fill_in_CEP], cep
            sleep (5)
        end

        def click_CEP
            sleep (5)
            click_xpath elements_checkout[:xpath_click_CEP_suzano]
        end

        def buy_black_plan
            click_xpath elements_checkout[:xpath_bnt_black_plan]
            click_xpath elements_checkout[:xpath_btn_wanted_plan]
            click_id elements_checkout[:id_btn_continue_shopping]
            click_id elements_checkout[:id_btn_continue_shopping]
        end

        def person_information
            sleep (5)
            wait_for_id elements_checkout[:id_person_data]
        end
    end
end