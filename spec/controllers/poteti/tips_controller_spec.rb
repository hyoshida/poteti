describe Poteti::TipsController do
  render_views

  before { request }

  describe "GET 'show'" do
    let(:user) { FactoryGirl.create(:poteti_user, :with_tip) }
    let(:tip) { user.tips.first }
    let(:request) { poteti_get :show, id: tip.id }

    it { expect(response).to be_success }

    it 'assigns @tip' do
      expect(assigns(:tip)).to eq(tip)
    end

    it 'assigns @user' do
      expect(assigns(:user)).to eq(user)
    end

    it 'renders the show templete' do
      expect(response).to render_template(:show)
    end
  end
end
