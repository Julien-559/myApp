class User < ActiveRecord::Base
	attr_accessible :nom, :prenom, :email, :password, :password_confirmation

	validates :nom, :presence => true

    # validates :password, :presence     => true,
    #                :confirmation => true,
    #                :length       => { :within => 6..40 }

    # before_save :encrypt_password

    # private

	   #  def encrypt_password
	   #    self.encrypted_password = encrypt(password)
	   #  end

	   #  def encrypt(string)
	   #    string # Implémentation provisoire !
	   #  end

	has_many :activities

end
