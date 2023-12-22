require 'rails_helper'

RSpec.describe PostsController, type: :controller do
	describe 'POST /posts' do

	    it 'create a new post object' do

		    post :create, params: { content: "lorem ipsum", user_id: 1 }

		    json = JSON.parse(response.body).deep_symbolize_keys

		    expect(json[:user_id]).to eq('1')

	    end

  	end

  	describe 'GET /posts' do

	    it 'show all posts objects' do

		    get :show

		    body = JSON.parse(response.body)

		    expect(body).to be_an_instance_of(Array)

	    end

  	end

  	# describe 'PUT /posts/:id' do

	#     it 'update post object by id' do

	#     	put :update, params: { :id => "1", :content => "updated content" }

	# 	    body = JSON.parse(response.body)

	# 	    expect(body.content).to eq('updated content')

	#     end

  	# end
end
