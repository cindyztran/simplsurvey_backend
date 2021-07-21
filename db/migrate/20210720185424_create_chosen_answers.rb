class CreateChosenAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :chosen_answers do |t|

      t.timestamps
    end
  end
end
