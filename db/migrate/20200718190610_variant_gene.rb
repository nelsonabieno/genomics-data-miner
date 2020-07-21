class VariantGene < ActiveRecord::Migration[6.0]
  def change
    create_table :variant_genes do |t|
      t.string :name
      t.string :transcript_id
      t.string :protein
      t.string :translation_id
      t.string :biotype
      t.timestamps
    end
  end
end
