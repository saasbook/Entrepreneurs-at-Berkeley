FactoryBot.define do
    factory :user do
      first 'Test'
      last 'User'
      email 'example@example.com'
      sid '123'
      password 'changeme'
      password_confirmation 'changeme'
      code 'blank'
      # required if the Devise Confirmable module is used
      # confirmed_at Time.now
    end

    factory :admin, class: User do
      first 'Test'
      last 'User'
      email 'example@example.com'
      sid '1234'
      password 'changeme'
      password_confirmation 'changeme'
      code 'blank'
      # required if the Devise Confirmable module is used
      # confirmed_at Time.now
    end
  end
