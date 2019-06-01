# Para remover a validação das massas comentar a linha 6 e descomentar a linha 7
#Vale resaltar que o nome da tag é o mesmo nome_cenário(:cenario -> casos_de_testes) que recebemos do csv 
Before do |scenario|
  call_driver
end

def call_driver
  # herda os métodos para o cucumber.
  Appium.promote_appium_methods Object
  update_settings(ignoreUnimportantViews: true)
  update_settings({fixImageFindScreenshotDims: true, fixImageTemplateSize: true,
                   autoUpdateImageElementPosition: true})
end


After do |scenario|
  time = Time.new
  raise 'O browser finalizou stop "after scenario"' if $driver.nil?
  sufix = ('fail' if scenario.failed?) || 'sucess'
  name = scenario.name.gsub(/[^A-Za-z ]/, ' ').gsub(/\s+/, '_')
  # vai dar dois prints no entanto, o problema se comentar em caso de erro nao imprime a msn de erro.
  if scenario.failed?
    sleep 3 # deve esperar a transicao de tela pra tirar o print do erro.
    puts "Cenario Falhou teste..."
    #take_screenshot("#{sufix}#{name}#{time.year}#{time.month}#{time.day}_#{time.sec}", sufix)
    #system("exit 1")
  end
  $driver.driver_quit
end
