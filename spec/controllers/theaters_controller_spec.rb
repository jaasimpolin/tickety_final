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

describe TheatersController do

  # This should return the minimal set of attributes required to create a valid
  # Theater. As you add validations to Theater, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { :cinema_id => "1",
      :theater_number => "3" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TheatersController. Be sure to keep this updated too.
  def valid_session
    {}
  end
    
  describe "GET index" do
    it "assigns all theaters as @theaters" do
      theater = Theater.create! valid_attributes
      get :index, {}, valid_session
      assigns(:theaters).should eq([theater])
    end
  end

  describe "GET show" do
    it "assigns the requested theater as @theater" do
      theater = Theater.create! valid_attributes
      get :show, {:id => theater.to_param}, valid_session
      assigns(:theater).should eq(theater)
    end
  end

  describe "GET new" do
    it "assigns a new theater as @theater" do
      get :new, {}, valid_session
      assigns(:theater).should be_a_new(Theater)
    end
  end

  describe "GET edit" do
    it "assigns the requested theater as @theater" do
      theater = Theater.create! valid_attributes
      get :edit, {:id => theater.to_param}, valid_session
      assigns(:theater).should eq(theater)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Theater" do
        expect {
          post :create, {:theater => valid_attributes}, valid_session
        }.to change(Theater, :count).by(1)
      end

      it "assigns a newly created theater as @theater" do
        post :create, {:theater => valid_attributes}, valid_session
        assigns(:theater).should be_a(Theater)
        assigns(:theater).should be_persisted
      end

      it "redirects to the created theater" do
        post :create, {:theater => valid_attributes}, valid_session
        response.should redirect_to(Theater.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved theater as @theater" do
        # Trigger the behavior that occurs when invalid params are submitted
        Theater.any_instance.stub(:save).and_return(false)
        post :create, {:theater => { "cinema_id" => "invalid value" }}, valid_session
        assigns(:theater).should be_a_new(Theater)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Theater.any_instance.stub(:save).and_return(false)
        post :create, {:theater => { "cinema_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested theater" do
        theater = Theater.create! valid_attributes
        # Assuming there are no other theaters in the database, this
        # specifies that the Theater created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Theater.any_instance.should_receive(:update_attributes).with({ "cinema_id" => "1" })
        put :update, {:id => theater.to_param, :theater => { "cinema_id" => "1" }}, valid_session
      end

      it "assigns the requested theater as @theater" do
        theater = Theater.create! valid_attributes
        put :update, {:id => theater.to_param, :theater => valid_attributes}, valid_session
        assigns(:theater).should eq(theater)
      end

      it "redirects to the theater" do
        theater = Theater.create! valid_attributes
        put :update, {:id => theater.to_param, :theater => valid_attributes}, valid_session
        response.should redirect_to(theater)
      end
    end

    describe "with invalid params" do
      it "assigns the theater as @theater" do
        theater = Theater.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Theater.any_instance.stub(:save).and_return(false)
        put :update, {:id => theater.to_param, :theater => { "cinema_id" => "invalid value" }}, valid_session
        assigns(:theater).should eq(theater)
      end

      it "re-renders the 'edit' template" do
        theater = Theater.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Theater.any_instance.stub(:save).and_return(false)
        put :update, {:id => theater.to_param, :theater => { "cinema_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested theater" do
      theater = Theater.create! valid_attributes
      expect {
        delete :destroy, {:id => theater.to_param}, valid_session
      }.to change(Theater, :count).by(-1)
    end

    it "redirects to the theaters list" do
      theater = Theater.create! valid_attributes
      delete :destroy, {:id => theater.to_param}, valid_session
      response.should redirect_to(theaters_url)
    end
  end

end
