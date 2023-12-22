require 'rails_helper'

RSpec.describe UsersController, type: :controller do
	describe 'POST /users' do

	    it 'create a new user object' do

	      post :create, params: { username: 'Harry Potter' }

	      expect(User.count).to eq(1)

	    end

	end
end
