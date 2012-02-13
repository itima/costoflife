class CreateServices < ActiveRecord::Migration
  def self.up
    create_table :services do |t|
      t.string :serviceid
      t.string :address
      t.string :phone
      t.string :fax
      t.string :title
      t.string :googlegeo
      t.string :cityid

      t.timestamps
    end
  end

  def self.down
    drop_table :services
  end
end
