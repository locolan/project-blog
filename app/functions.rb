

ActiveRecord::Base.establish_connection(
:adapter  => 'sqlite3',
:database => (ENV['RACK_ENV'] == 'test') ? 'blogdb.test' : 'blogdb'
)


ActiveRecord::Base.logger = Logger.new(STDERR)


ActiveRecord::Schema.define do
  unless ActiveRecord::Base.connection.tables.include? 'posts'
    create_table :posts do |table|
      table.column :title, :string
      table.column :header, :string
      table.column :body, :string
    end
  end
  unless ActiveRecord::Base.connection.tables.include? 'users'
    create_table :users do |table|
      table.column :name, :string
      table.column :secure_password, :string
    end
  end


end

class Post < ActiveRecord::Base
  # title   - string of the title of the post
  # header  - header string
  # body    - body string
end

class User < ActiveRecord::Base
  # name            - username
  # secure_password - unsecure password
end
