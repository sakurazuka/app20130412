class CreateFakeTwitters < ActiveRecord::Migration
  def change
    create_table :fake_twitters do |t|
      t.string :tweet

      t.timestamps
    end
  end
end
