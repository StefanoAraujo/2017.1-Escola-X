class Subject < ApplicationRecord
	belongs_to :teacher
	has_many :grades, dependent: :destroy
	has_many :classroom_subjects, dependent: :destroy
	has_many :alumns, through: :grades
	has_many :classrooms, through: :classroom_subjects
	validates_associated :grades
	validates_associated :alumns

  validates :name_subject,
  			presence: { message: "Não pode estar em branco!" },
  			length: { minimum: 5,
		            maximum: 20,
		            :too_short => "deve possuir mais de 5 caracteres.",
		            :too_long => "deve possuir no máximo 20 caracteres."}

  validates :class_level,
            presence: {message: "série não pode estar em branco!"},
            numericality: { only_integer: true }

  validates :teacher,
            presence: { message: "não válido para criar matéria!" },
            uniqueness: true

end