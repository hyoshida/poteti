describe Poteti::UsersController do
  render_views

  describe "GET 'show'" do
    let(:user) { FactoryGirl.create(:poteti_user) }

    it 'has success' do
      poteti_get :show, name: user.name
      expect(response).to be_success
    end

    it 'assigns @user' do
      poteti_get :show, name: user.name
      expect(assigns(:user)).to eq(user)
    end

    it 'renders the show templete' do
      poteti_get :show, name: user.name
      expect(response).to render_template(:show)
    end
  end
end
