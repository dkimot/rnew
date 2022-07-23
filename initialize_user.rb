# frozen_string_literal: true

after_bundle do
  generate('devise:install')
  generate(:devise, :user)
  rails_command 'db:migrate'

  generate('pundit:install')

  generate('rolify', 'Role', 'User')
  rails_command 'db:migrate'

  generate('noticed:model')
end
