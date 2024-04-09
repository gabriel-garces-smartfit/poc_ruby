module Screens
    class LoginScreen < BaseScreen

        def elements_login
            {
                ## Access Smart Fit
                id_btn_access_smart_fit: 'ACESSO SMART FIT',
                xpath_click_document: '//android.widget.EditText',
                xpath_set_document: '//android.widget.EditText',
                id_btn_enter: 'ENTRAR',
                xpath_click_pin: '//android.widget.EditText',
                xpath_set_pin: '//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText/android.widget.EditText',
            }
        end

        def fill_cpf(usuario)
            click_id elements_login[:id_btn_access_smart_fit]
            click_xpath elements_login[:xpath_click_document]
            send_keys_xpath elements_login[:xpath_set_document], usuario
            click_id elements_login[:id_btn_enter]
        end

        def fill_pin(pin)
            click_xpath elements_login[:xpath_click_pin]
            send_keys_xpath elements_login[:xpath_set_pin], pin
        end
    end
end