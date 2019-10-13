Before do
    @home_page = HomePage.new
end

After do |scenario|
    nome_cenario = scenario.name.gsub(/[^A-Za-z0-9 ]/, '')
    nome_cenario = nome_cenario.tr(' ', '_').downcase!
    screenshot = "log/screenshots/#{nome_cenario}.png"
  
    page.save_screenshot(screenshot) # => capybara tira o screenshot
    embed(screenshot, 'image/png', 'Evidência') # => cucumber atacha a evidencia no relatório
  end
    
