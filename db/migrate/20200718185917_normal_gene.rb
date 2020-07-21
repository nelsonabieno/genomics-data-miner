class NormalGene < ActiveRecord::Migration[6.0]
  def change
    create_table :normal_genes do |t|
      t.string :name
      t.string :biotype
      t.integer :chromosome_position
      t.timestamps
    end
  end
end
