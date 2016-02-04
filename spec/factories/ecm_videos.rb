FactoryGirl.define do
  factory :ecm_video, class: 'Ecm::Video' do
    category nil
    identifier 'MyString'
    published_at '2015-12-26 17:18:19'
    position 1
  end
end
