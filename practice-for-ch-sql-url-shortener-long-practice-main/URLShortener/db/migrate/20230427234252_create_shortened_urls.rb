class CreateShortenedUrls < ActiveRecord::Migration[7.0]
  def change
    create_table :shortened_urls do |t|
      t.string :long_url, null: false
      t.string :short_url, null: false
      t.references :user, null: false, foreign_key: {to_table: :users}, index: {unique: true}
      t.timestamps
    end
    add_index :shortened_urls, :long_url, unique: true
  end
end
