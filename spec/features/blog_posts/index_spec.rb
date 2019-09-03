require 'rails_helper'

describe 'As a user' do
  before :each do
    brownie = BlogPost.create(title: "Gf Brownies", description: "These intensely fudgey brownies are SO GOOD no one will ever guess they’re also gluten, dairy AND grain free. They’re everything a brownie should be!")
    cb = BlogPost.create(title: "Cornbread", description: "This delicious cornbread is gluten free and dairy free.")
    end
  describe 'can view all the blog posts' do
    xit 'shows each title, description, and published date' do
      visit '/blog_posts'

      expect(page).to have_content('GF Brownies')
      expect(page).to have_content('Cornbread')
    end
  end
end
