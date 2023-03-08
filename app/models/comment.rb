class Comment < ApplicationRecord
  belongs_to :article

  validates :commenter, presence: {message: "must be given"}
  validates :body, length: {minimum: 5}
  # VALID_STATUSES = ['public', 'private', 'archived']

  # validates :status, inclusion: { in: VALID_STATUSES }

  def archived?
    status == 'archived'
  end
end

