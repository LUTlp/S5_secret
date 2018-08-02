class User < ApplicationRecord

  validates :email, presence: {
  message: "Merci de renseigner votre adresse email."
}

  validates :email, uniqueness: {
  message: "Cette adresse email est déjà prise."
}

  has_secure_password
end
