class CreateBackchannels < ActiveRecord::Migration
  def self.up
    create_table :backchannels do |t|
      t.string :name
      t.text :msg
      t.timestamps
    end
  end

  def self.down
    drop_table :backchannels
  end
end
