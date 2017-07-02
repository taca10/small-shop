class User < ApplicationRecord
  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      user.nickname = auth['info']['nickname']
      user.image = auth['info']['image']
    end
  end
end
