require 'rails_helper'
RSpec.describe 'blog_post list' do
  it 'can get a list of blog_posts' do
    brownie = BlogPost.new(title: "Gf Brownies", description: "These intensely fudgey brownies are SO GOOD no one will ever guess they’re also gluten, dairy AND grain free. They’re everything a brownie should be!", instructions: "step one.")
    cb = BlogPost.new(title: "Cornbread", description: "This delicious cornbread is gluten free and dairy free.", instructions: "step one.")

    brownie.save
    cb.save

    get '/api/v1/blog_posts'

    expect(response).to be_successful
    results = JSON.parse(response.body, symbolize_names: true)
    expect(results[0][:title]).to be_a(String)
    expect(results[0][:description]).to be_a(String)
    expect(results[1][:instructions]).to be_a(String)
  end

end
