1- Descompactar a pasta informada em um diretório qualquer (ex: C: no Windows). Deverá ficar da seguinte forma: C:\thoughworks.





Rspec funciona como um "motor de execução" desta automação em conjunto com o Capybara, que por sua vez é um facilitador do Selenium. Para execução desta automação, será necessário ter o chromedriver instalado com a versão correspondente ao navegador Chrome. Para isto, verifique a versão do Chrome e baixe o chromedriver correspondente através do link https://chromedriver.chromium.org/downloads.

Obs.: extrair o chromedriver.exe e colar na pasta Windows. Caso esteja usando o Mac ou Linux, necessário incluir o chromedriver no PATH do sistema.

rspec -fd && newman run MarsAir.postman_collection.json