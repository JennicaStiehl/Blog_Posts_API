require 'rails_helper'
describe BlogPost, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:instructions) }
  end
  describe 'relationships' do
  end
  describe 'class methods' do
  end
  describe 'instance methods' do
  end
end
