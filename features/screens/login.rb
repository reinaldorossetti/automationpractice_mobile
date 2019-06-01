class Login

  include PageBase

  def initialize
    @elem_conta = :id, 'tab_account'
    @elem_user = :id, 'text_sign_up_button'
    @elem_bt_entrar = :xpath, '//android.widget.TextView[@text="ENTRAR"]'
    @elem_google_option = :id, 'com.ingresso.cinemas:id/google_button_title'
  end

  def entrar_menu_conta
    find(@elem_conta).click
  end

  def select_user
    find(@elem_user).click
  end

  def validated_login
    # um exemplo que herdamos do Appium Driver
    puts find_element(:xpath, '//android.widget.TextView[@text="ENTRAR"]').text
    # comparando as funcoes com as reduzidas da page base.
    find(@elem_bt_entrar).text
  end

  def login_google
    find(@elem_google_option).click
  end

end