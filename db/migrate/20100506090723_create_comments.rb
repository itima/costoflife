class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.string :commentid
      t.string :targetid
      t.string :commenttypeid
      t.references :commenttype
      t.binary :content
      t.integer :sortorder

      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
