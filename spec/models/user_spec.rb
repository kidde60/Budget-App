require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'User Model' do
    before :each do
      @user = User.new(name: 'user')
    end

    it 'should check table should not be valid' do
      @user.name = nil
      expect(subject).to_not be_valid
    end
  end
end
