describe 'Routes for tips' do
  routes { Poteti::Engine.routes }

  let(:user) { FactoryGirl.create(:poteti_user, :with_tip) }
  let(:tip) { user.tips.first }

  it 'routes to tips' do
    expect(get("/users/#{user.name}/tips/#{tip.id}")).to route_to(
      controller: 'poteti/tips',
      action: 'show',
      user_name: user.name,
      id: tip.id.to_s
    )
  end
end
