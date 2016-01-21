feature 'get /' do
  scenario do
    visit '/'
    expect(page).to have_content 'hello sinatra'
  end
end

