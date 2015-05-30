class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.string :attachment
      t.references :task, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end