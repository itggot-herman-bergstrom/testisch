class Issue
  include DataMapper::Resource

  property :id, Serial
  property :name, String, required: true
  property :description, String, required: true
  property :date, DateTime

  belongs_to :category
  has n, :user_issues
  has n, :users, :through => :user_issues
  has n, :attachments
  has n, :messages

end