class AdministrarUsuario < ActiveRecord::Base
  belongs_to :rol
  belongs_to :user
end
