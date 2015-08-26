# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  nombre1                :string(255)      default(""), not null
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#

class User < ActiveRecord::Base
  	rolify
  	# Include default devise modules. Others available are:
  	# :confirmable, :lockable, :timeoutable and :omniauthable

    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  	has_many :experiencias_laborales
    has_and_belongs_to_many :estudios_complementario
  	has_many :curriculums
  
    validates :nombre1, :presence => { :message => "Por Favor ingresa tu nombre"}, :on => :create
	  validates_format_of :nombre1, :with => /\A[a-zA-Z]+\z/,  :message => "Por favor ingresa solo texto", :on => :create
    validates :apellido1, :presence => { :message => "Por Favor ingresa tu apellido"}, :on => :create
    validates_format_of :apellido1, :with => /\A[a-zA-Z]+\z/,  :message => "Por favor ingresa solo texto", :on => :create
    validates :fecha_nacimiento, :presence => { :message => "Por Favor ingresa tu Fecha de nacimiento"}, :on => :create
    validates :nombre1, :presence => { :message => "Por Favor ingresa tu Cedula"}, :on => :create
    validates_numericality_of :cedula, 
    greater_than_or_equal_to: 1,
    less_than_or_equal_to: 9999999999999999999999,
    message: "Por favor ingresa tu cedula", :on => :create
    validates :genero, :presence => { :message => "Por Favor ingresa tu Fecha de nacimiento"}, :on => :create
    validates :estado_civil, :presence => { :message => "Por Favor ingresa tu Fecha de nacimiento"}, :on => :create
    validates_numericality_of :telefono, 
    greater_than_or_equal_to: 1,
    less_than_or_equal_to: 9999999999999999999999,
    message: "Por favor ingresa tu telefono", :on => :create
    validates_numericality_of :celular, 
    greater_than_or_equal_to: 1,
    less_than_or_equal_to: 9999999999999999999999,
    message: "Por favor ingresa tu celular", :on => :create
    validates :direccion, :presence => { :message => "Por Favor ingresa tu nombre"}, :on => :create
    validates :perfil, :presence => { :message => "Por Favor ingresa tu nombre"}, :on => :create


    has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100#" }, 
    :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

    # Nota: Todas las imágenes guardadas se encontrarán en public/system/products/images/000/000/.z
end
