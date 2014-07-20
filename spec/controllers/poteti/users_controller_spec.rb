describe Poteti::UsersController do
  render_views

  before { request }

  describe "GET 'show'" do
    let(:user) { FactoryGirl.create(:poteti_user) }
    let(:request) { poteti_get :show, name: user.name }

    it { expect(response).to be_success }

    it 'assigns @user' do
      expect(assigns(:user)).to eq(user)
    end

    it 'renders the show templete' do
      expect(response).to render_template(:show)
    end
  end
end
