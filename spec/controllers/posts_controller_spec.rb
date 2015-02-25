require 'rails_helper'

RSpec.describe PostsController, type: :controller do

  context "logged in users" do 
    before(:each) {
      user = FactoryGirl.create :user
      session[:user_id] = user.id
    }

    let(:post) {
      FactoryGirl.create :post
    }

    let(:valid_attributes) {
      {headline: "walk at the park", detail: "lets go at the park for walk during lunch time"}
    }

    describe "GET #index" do
      it "returns http success" do
        get :index
        expect(response).to have_http_status(:success)
      end
    end

    describe "GET #show" do
      it "returns http success" do
        get :show, id: post.id
        expect(response).to have_http_status(:success)
      end
    end

    describe "GET #new" do
      it "returns http success" do
        get :new
        expect(response).to have_http_status(:success)
      end
    end

    describe "GET #edit" do
      it "returns http success" do
        get :edit, id: post.id
        expect(response).to have_http_status(:redirect)
      end
    end

    describe "GET #create" do
      it "returns http success" do
        get :create, post: valid_attributes
        expect(response).to have_http_status(:redirect)
      end
    end

    describe "GET #update" do
      it "returns http success" do
        get :update, id: post.id, post: valid_attributes
        expect(response).to have_http_status(:redirect)
      end
    end

    describe "GET #destroy" do
      it "returns http success" do
        get :destroy, id: post.id
        expect(response).to have_http_status(:redirect)
      end
    end
  end

  context "no logged in users" do 
    describe "GET #index" do
      it "redirects to new_sessions" do
        get :index
        expect(response).to have_http_status(:redirect)
        expect(response).to redirect_to ( :new_sessions)
      end
    end

    describe "GET #show" do
      it "redirects to new_sessions" do
        get :show, id: ""
        expect(response).to have_http_status(:redirect)
        expect(response).to redirect_to ( :new_sessions)
      end
    end

    describe "GET #new" do
      it "redirects to new_sessions" do
        get :new
        expect(response).to have_http_status(:redirect)
        expect(response).to redirect_to ( :new_sessions)
      end
    end

    describe "GET #edit" do
      it "redirects to new_sessions" do
        get :edit, id: ""
        expect(response).to have_http_status(:redirect)
        expect(response).to redirect_to ( :new_sessions)
      end
    end

    describe "GET #create" do
      it "redirects to new_sessions" do
        get :create
        expect(response).to have_http_status(:redirect)
        expect(response).to redirect_to ( :new_sessions)
      end
    end

    describe "GET #update" do
      it "redirects to new_sessions" do
        get :update, id: ""
        expect(response).to have_http_status(:redirect)
        expect(response).to redirect_to ( :new_sessions)
      end
    end

    describe "GET #destroy" do
      it "redirects to new_sessions" do
        get :destroy, id: ""
        expect(response).to have_http_status(:redirect)
        expect(response).to redirect_to ( :new_sessions)
      end
    end
  end
end
