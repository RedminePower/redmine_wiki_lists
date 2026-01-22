plugin_name = :redmine_wiki_lists

Rails.configuration.to_prepare do
  %w{issue_name_link ref_issues/parser ref_issues wiki_list}.each do |file_name|
    require_dependency "#{plugin_name}/#{file_name}"
  end
end

Redmine::Plugin.register plugin_name do
  requires_redmine :version_or_higher => '3.4'
  name 'Redmine Wiki Lists plugin'
  author 'Redmine Power (original by Tomohisa Kusukawa)'
  description 'wiki macros to display lists of issues.'
  version '0.0.12'
  url 'https://github.com/RedminePower/redmine_wiki_lists'
  author_url 'https://github.com/RedminePower/'
end
