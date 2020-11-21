class CreateJoinTableAuthorPaper < ActiveRecord::Migration[6.0]
  def change
    create_join_table :authors, :papers do |t|
      t.belongs_to :author
      t.belongs_to :paper
    end
  end
end
