describe 'Routes for tips' do
  routes { Poteti::Engine.routes }

  let(:user) { FactoryGirl.create(:poteti_user, :with_tip) }
  let(:tip) { user.tips.first }

  it 'routes to tips' do
    expect(get("/users/#{user.id}/tips/#{tip.id}")).to route_to(
      controller: 'poteti/tips',
      action: 'show',
      user_id: user.id.to_s,
      id: tip.id.to_s
    )
  end
end
