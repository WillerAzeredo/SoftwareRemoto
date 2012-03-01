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

describe DesenvolvedorsController do

  # This should return the minimal set of attributes required to create a valid
  # Desenvolvedor. As you add validations to Desenvolvedor, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # DesenvolvedorsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all desenvolvedors as @desenvolvedors" do
      desenvolvedor = Desenvolvedor.create! valid_attributes
      get :index, {}, valid_session
      assigns(:desenvolvedors).should eq([desenvolvedor])
    end
  end

  describe "GET show" do
    it "assigns the requested desenvolvedor as @desenvolvedor" do
      desenvolvedor = Desenvolvedor.create! valid_attributes
      get :show, {:id => desenvolvedor.to_param}, valid_session
      assigns(:desenvolvedor).should eq(desenvolvedor)
    end
  end

  describe "GET new" do
    it "assigns a new desenvolvedor as @desenvolvedor" do
      get :new, {}, valid_session
      assigns(:desenvolvedor).should be_a_new(Desenvolvedor)
    end
  end

  describe "GET edit" do
    it "assigns the requested desenvolvedor as @desenvolvedor" do
      desenvolvedor = Desenvolvedor.create! valid_attributes
      get :edit, {:id => desenvolvedor.to_param}, valid_session
      assigns(:desenvolvedor).should eq(desenvolvedor)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Desenvolvedor" do
        expect {
          post :create, {:desenvolvedor => valid_attributes}, valid_session
        }.to change(Desenvolvedor, :count).by(1)
      end

      it "assigns a newly created desenvolvedor as @desenvolvedor" do
        post :create, {:desenvolvedor => valid_attributes}, valid_session
        assigns(:desenvolvedor).should be_a(Desenvolvedor)
        assigns(:desenvolvedor).should be_persisted
      end

      it "redirects to the created desenvolvedor" do
        post :create, {:desenvolvedor => valid_attributes}, valid_session
        response.should redirect_to(Desenvolvedor.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved desenvolvedor as @desenvolvedor" do
        # Trigger the behavior that occurs when invalid params are submitted
        Desenvolvedor.any_instance.stub(:save).and_return(false)
        post :create, {:desenvolvedor => {}}, valid_session
        assigns(:desenvolvedor).should be_a_new(Desenvolvedor)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Desenvolvedor.any_instance.stub(:save).and_return(false)
        post :create, {:desenvolvedor => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested desenvolvedor" do
        desenvolvedor = Desenvolvedor.create! valid_attributes
        # Assuming there are no other desenvolvedors in the database, this
        # specifies that the Desenvolvedor created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Desenvolvedor.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => desenvolvedor.to_param, :desenvolvedor => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested desenvolvedor as @desenvolvedor" do
        desenvolvedor = Desenvolvedor.create! valid_attributes
        put :update, {:id => desenvolvedor.to_param, :desenvolvedor => valid_attributes}, valid_session
        assigns(:desenvolvedor).should eq(desenvolvedor)
      end

      it "redirects to the desenvolvedor" do
        desenvolvedor = Desenvolvedor.create! valid_attributes
        put :update, {:id => desenvolvedor.to_param, :desenvolvedor => valid_attributes}, valid_session
        response.should redirect_to(desenvolvedor)
      end
    end

    describe "with invalid params" do
      it "assigns the desenvolvedor as @desenvolvedor" do
        desenvolvedor = Desenvolvedor.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Desenvolvedor.any_instance.stub(:save).and_return(false)
        put :update, {:id => desenvolvedor.to_param, :desenvolvedor => {}}, valid_session
        assigns(:desenvolvedor).should eq(desenvolvedor)
      end

      it "re-renders the 'edit' template" do
        desenvolvedor = Desenvolvedor.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Desenvolvedor.any_instance.stub(:save).and_return(false)
        put :update, {:id => desenvolvedor.to_param, :desenvolvedor => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested desenvolvedor" do
      desenvolvedor = Desenvolvedor.create! valid_attributes
      expect {
        delete :destroy, {:id => desenvolvedor.to_param}, valid_session
      }.to change(Desenvolvedor, :count).by(-1)
    end

    it "redirects to the desenvolvedors list" do
      desenvolvedor = Desenvolvedor.create! valid_attributes
      delete :destroy, {:id => desenvolvedor.to_param}, valid_session
      response.should redirect_to(desenvolvedors_url)
    end
  end

end