class ProjectsTechnologies < ActiveRecord::Migration[7.0]
  def change
    create_table :projects_technologies, id: false do |t|
      t.belongs_to :Technologies
      t.belongs_to :Projects
    end
  end
end
