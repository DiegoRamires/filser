require 'rails_helper'

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

RSpec.describe SeriesController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # Series. As you add validations to Series, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # SeriesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all series as @series" do
      series = Series.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:series)).to eq([series])
    end
  end

  describe "GET show" do
    it "assigns the requested series as @series" do
      series = Series.create! valid_attributes
      get :show, {:id => series.to_param}, valid_session
      expect(assigns(:series)).to eq(series)
    end
  end

  describe "GET new" do
    it "assigns a new series as @series" do
      get :new, {}, valid_session
      expect(assigns(:series)).to be_a_new(Series)
    end
  end

  describe "GET edit" do
    it "assigns the requested series as @series" do
      series = Series.create! valid_attributes
      get :edit, {:id => series.to_param}, valid_session
      expect(assigns(:series)).to eq(series)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Series" do
        expect {
          post :create, {:series => valid_attributes}, valid_session
        }.to change(Series, :count).by(1)
      end

      it "assigns a newly created series as @series" do
        post :create, {:series => valid_attributes}, valid_session
        expect(assigns(:series)).to be_a(Series)
        expect(assigns(:series)).to be_persisted
      end

      it "redirects to the created series" do
        post :create, {:series => valid_attributes}, valid_session
        expect(response).to redirect_to(Series.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved series as @series" do
        post :create, {:series => invalid_attributes}, valid_session
        expect(assigns(:series)).to be_a_new(Series)
      end

      it "re-renders the 'new' template" do
        post :create, {:series => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested series" do
        series = Series.create! valid_attributes
        put :update, {:id => series.to_param, :series => new_attributes}, valid_session
        series.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested series as @series" do
        series = Series.create! valid_attributes
        put :update, {:id => series.to_param, :series => valid_attributes}, valid_session
        expect(assigns(:series)).to eq(series)
      end

      it "redirects to the series" do
        series = Series.create! valid_attributes
        put :update, {:id => series.to_param, :series => valid_attributes}, valid_session
        expect(response).to redirect_to(series)
      end
    end

    describe "with invalid params" do
      it "assigns the series as @series" do
        series = Series.create! valid_attributes
        put :update, {:id => series.to_param, :series => invalid_attributes}, valid_session
        expect(assigns(:series)).to eq(series)
      end

      it "re-renders the 'edit' template" do
        series = Series.create! valid_attributes
        put :update, {:id => series.to_param, :series => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested series" do
      series = Series.create! valid_attributes
      expect {
        delete :destroy, {:id => series.to_param}, valid_session
      }.to change(Series, :count).by(-1)
    end

    it "redirects to the series list" do
      series = Series.create! valid_attributes
      delete :destroy, {:id => series.to_param}, valid_session
      expect(response).to redirect_to(series_index_url)
    end
  end

end
