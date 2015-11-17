class AddTopicToBookmarks < ActiveRecord::Migration
  def change
    add_reference :bookmarks, :topic, index: true, foreign_key: true
  end
end
