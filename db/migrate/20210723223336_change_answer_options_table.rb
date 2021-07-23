class ChangeAnswerOptionsTable < ActiveRecord::Migration[6.1]
  def change
    change_column :answer_options, :answer_numeric, :integer, :default => 0
  end
end
