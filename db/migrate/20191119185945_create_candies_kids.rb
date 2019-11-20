class CreateCandiesKids < ActiveRecord::Migration[6.0]
  def change
    create_table :candies_kids do |t|
      t.references :kid, null: false, foreign_key: true
      t.references :candy, null: false, foreign_key: true
    end
  end
end
#http://habtmexample.herokuapp.com/instructions
#http://joshfrankel.me/blog/create-a-many-to-many-activerecord-association-in-ruby-on-rails/