class CreateCorpora < ActiveRecord::Migration[5.0]
  def change
    create_table :corpora do |t|
      t.string :name
      t.string :fname

      t.timestamps
    end
  end
end
