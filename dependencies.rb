# frozen_string_literal: true

gem 'annotate'
after_bundle do
  generate('annotate:install')
end

gem 'view_component'
after_bundle do
  file 'app/components/application_component.rb', <<-CODE
    class ApplicationComponent < ViewComponent::Base
      include ApplicationHelper
    end
  CODE
end

gem 'authtrail'
gem 'devise'
gem 'noticed'
gem 'rolify'
gem 'pundit'

gem 'overcommit'

gem 'slowpoke'
gem 'rack-attack'

gem 'meta-tags'

gem 'prosopite'
gem 'pg_query'

gem_group :development do
  gem 'letter_opener'
end

gem_group :development, :test do
  gem 'amazing_print'
  gem 'brakeman'
end
