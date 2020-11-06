describe 'Pesquisar viagens' do

    before(:each) do
        visit "https://marsair.thoughtworks-labs.net/renatofranca"
    end

    it 'Pesquisar uma viagem com assento disponível' do
        expect(page.title).to eql "Mars Airlines: Home"
        expect(find('#content')).to have_content 'Welcome to MarsAir!'
        select('July', from: 'departing')
        select('December (two years from now)', from: 'returning')
        click_button("Search")
        expect(find('#content')).to have_content 'Call now on 0800 MARSAIR to book!'
        sleep 2
    end

    it 'Pesquisar uma viagem sem assento disponível' do
        expect(page.title).to eql "Mars Airlines: Home"
        expect(find('#content')).to have_content 'Welcome to MarsAir!'
        select('July', from: 'departing')
        select('December (next year)', from: 'returning')
        click_button("Search")
        expect(find('#content')).to have_content 'Sorry, there are no more seats available.'
        sleep 2
    end

    it 'Pesquisar uma viagem com período inválido' do
        expect(page.title).to eql "Mars Airlines: Home"
        expect(find('#content')).to have_content 'Welcome to MarsAir!'
        select('July', from: 'departing')
        select('December', from: 'returning')
        click_button("Search")
        expect(find('#content')).to have_content 'Unfortunately, this schedule is not possible. Please try again.'
        sleep 2
    end

    it 'Pesquisar uma viagem com assento disponível com desconto de 50%' do
        expect(page.title).to eql "Mars Airlines: Home"
        expect(find('#content')).to have_content 'Welcome to MarsAir!'
        select('July', from: 'departing')
        select('December (two years from now)', from: 'returning')
        cupom_valido = 'ZX5-YKM-117'
        fill_in 'promotional_code', with: cupom_valido
        click_button("Search")
        expect(find('#content')).to have_content '50% discount!'
        sleep 2
    end

    it 'Pesquisar uma viagem com assento disponível com código de desconto inválido' do
        expect(page.title).to eql "Mars Airlines: Home"
        expect(find('#content')).to have_content 'Welcome to MarsAir!'
        select('July', from: 'departing')
        select('December (two years from now)', from: 'returning')
        cupom_invalido = 'ZX5-YKM-007'
        fill_in 'promotional_code', with: cupom_invalido
        click_button("Search")
        expect(find('#content')).to have_content 'Sorry, code ZX5-YKM-007 is not valid'
        sleep 2
    end

end