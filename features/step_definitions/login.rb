# binding.pry
page_login = Login.new

Dado("que entre no aplicativo em minha conta.") do
  page_login.entrar_menu_conta
end

Dado("selecione a opcao entrar.") do
  page_login.select_user
end

Quando("valido se estar na tela de login.") do
  page_login.validated_login
end

Entao("selecionar o opção {string}.") do |string|
  page_login.login_google
end