# frozen_string_literal: true

run 'rm ./app/helpers/application_helper.rb'

file 'app/helpers/application_helper.rb', <<-CODE
  module ApplicationHelper
    def fa_icon(icon_name, **options)
      weight = options.delete(:weight) || :solid

      name = icon_name.to_s.gsub("_", "-")     ■  Use `tr` instead of `gsub`.
      options[:class] = ["fa-#{weight}", "fa-#{name}", options.delete(:class)]

      tag.i(nil, **options)
    end
  end
CODE
