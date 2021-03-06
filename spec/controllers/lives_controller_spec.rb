require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe LivesController do

  # This should return the minimal set of attributes required to create a valid
  # Life. As you add validations to Life, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "title" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # LivesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all lives as @lives" do
      life = Life.create! valid_attributes
      get :index, {}, valid_session
      assigns(:lives).should eq([life])
    end
  end

  describe "GET show" do
    it "assigns the requested life as @life" do
      life = Life.create! valid_attributes
      get :show, {:id => life.to_param}, valid_session
      assigns(:life).should eq(life)
    end
  end

  describe "GET new" do
    it "assigns a new life as @life" do
      get :new, {}, valid_session
      assigns(:life).should be_a_new(Life)
    end
  end

  describe "GET edit" do
    it "assigns the requested life as @life" do
      life = Life.create! valid_attributes
      get :edit, {:id => life.to_param}, valid_session
      assigns(:life).should eq(life)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Life" do
        expect {
          post :create, {:life => valid_attributes}, valid_session
        }.to change(Life, :count).by(1)
      end

      it "assigns a newly created life as @life" do
        post :create, {:life => valid_attributes}, valid_session
        assigns(:life).should be_a(Life)
        assigns(:life).should be_persisted
      end

      it "redirects to the created life" do
        post :create, {:life => valid_attributes}, valid_session
        response.should redirect_to(Life.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved life as @life" do
        # Trigger the behavior that occurs when invalid params are submitted
        Life.any_instance.stub(:save).and_return(false)
        post :create, {:life => { "title" => "invalid value" }}, valid_session
        assigns(:life).should be_a_new(Life)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Life.any_instance.stub(:save).and_return(false)
        post :create, {:life => { "title" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested life" do
        life = Life.create! valid_attributes
        # Assuming there are no other lives in the database, this
        # specifies that the Life created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Life.any_instance.should_receive(:update).with({ "title" => "MyString" })
        put :update, {:id => life.to_param, :life => { "title" => "MyString" }}, valid_session
      end

      it "assigns the requested life as @life" do
        life = Life.create! valid_attributes
        put :update, {:id => life.to_param, :life => valid_attributes}, valid_session
        assigns(:life).should eq(life)
      end

      it "redirects to the life" do
        life = Life.create! valid_attributes
        put :update, {:id => life.to_param, :life => valid_attributes}, valid_session
        response.should redirect_to(life)
      end
    end

    describe "with invalid params" do
      it "assigns the life as @life" do
        life = Life.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Life.any_instance.stub(:save).and_return(false)
        put :update, {:id => life.to_param, :life => { "title" => "invalid value" }}, valid_session
        assigns(:life).should eq(life)
      end

      it "re-renders the 'edit' template" do
        life = Life.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Life.any_instance.stub(:save).and_return(false)
        put :update, {:id => life.to_param, :life => { "title" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested life" do
      life = Life.create! valid_attributes
      expect {
        delete :destroy, {:id => life.to_param}, valid_session
      }.to change(Life, :count).by(-1)
    end

    it "redirects to the lives list" do
      life = Life.create! valid_attributes
      delete :destroy, {:id => life.to_param}, valid_session
      response.should redirect_to(lives_url)
    end
  end

end
