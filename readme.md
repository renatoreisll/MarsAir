**READ ME**



<u>**Instruções**</u>

Após clonar este projeto, insira-o em uma pasta de sua preferência.



**macOS**



Obs.: É necessário antes dos passos abaixo ter o chromedriver. Acesse o site https://chromedriver.chromium.org/downloads e verifique a versão que está utilizando no seu Chrome e realize o download. Descompacte o arquivo em uma pasta (Ex: Documents).



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



Comando para rodar apenas a automação dos cenários de teste:

**rspec -fd**



Comando para rodar os cenários + o JSon que testa a API:

**rspec -fd && newman run MarsAir.postman_collection.json**



**Windows**



Para facilitar os procedimentos, recomendo fortemente usar o terminal "Cmder" que pode ser obtido no seguinte link: https://cmder.net .

1- Baixe o Chromedriver e insira-o na pasta "Windows". Acesse o site https://chromedriver.chromium.org/downloads e verifique a versão do Chrome para baixar a versão correta do chromedriver.



2- Descompacte o projeto em um diretório qualquer (ex: C:\thoughworks).

3- Baixe e instale o Ruby através do site https://rubyinstaller.org/

4- Abra o terminal e navegue até a pasta do projeto.

5- Digite ruby -v e verifique se o ruby de fato foi instalado.

6- Utilize o comando *bundle install* para instalar as gems do projeto.

7- Por via das dúvidas, instale o RSpec:

*gem install rspec*



8- Instale o Capybara:

*gem install capybara*



9- Instale o Newman

*npm install -g newman*



Obs.: o Node precisa estar instalado.



Rspec funcionará como um "motor de execução" desta automação em conjunto com o Capybara, que por sua vez é um facilitador do Selenium.



Comando para rodar apenas a automação dos cenários:

**rspec -fd**



Comando para rodar os cenários + o JSon que testa a API:

**rspec -fd && newman run MarsAir.postman_collection.json**

