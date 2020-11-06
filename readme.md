**READ ME**



<u>**Instruções**</u>

Após clonar este projeto, insira-o em uma pasta de sua preferência.



**macOS**



1- Instalar o Ruby: no terminal do seu Mac sugiro utilizar o *homebrew* para instalação via linha de comando. Com o terminal aberto digite:

*brew install ruby*



Após a instalação verifique se o ruby está corretamente instalado usando o comando ruby -v.

2- Já na pasta do projeto, utilize o comando *bundle install* para instalar as gems.



3- Por via das dúvidas, instale o RSpec:

*sudo gem install rspec*



3- Instale o Capybara:

*sudo gem install capybara*



4- Instale o Newman

*brew install newman*



1- Descompactar a pasta informada em um diretório qualquer (ex: C: no Windows). Deverá ficar da seguinte forma: C:\thoughworks.





Rspec funcionará como um "motor de execução" desta automação em conjunto com o Capybara, que por sua vez é um facilitador do Selenium. Para execução desta automação, será necessário ter o chromedriver instalado com a versão correspondente ao navegador Chrome.



Comando para rodar apenas a automação dos cenários:

**rspec -fd**



Comando para rodar os cenários + o JSon que testa a API:

**rspec -fd && newman run MarsAir.postman_collection.json**

