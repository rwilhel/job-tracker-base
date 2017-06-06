class CreateTaggings < ActiveRecord::Migration[5.0]
  def change
    create_table :taggings do |t|
      t.belongs_to :job, index: true
      t.belongs_to :tag, index: true
      t.integer :count
      t.timestamps
    end
  end
end
