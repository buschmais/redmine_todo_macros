Redmine::Plugin.register :redmine_todo_macros do
  name 'Redmine Todo Macros plugin'
  author 'Frank Schwarz'
  description 'Todo macros such as {{TODO}} or {{AI}}'
  version '0.0.1.dev'
  url 'https://github.com/buschmais/redmine_todo_macros'
  author_url 'https://www.buschmais.de/author/frank/'

  Redmine::WikiFormatting::Macros.register do
    desc "Add Todo macros: {{TODO}}, {{AI}}"
    macro :TODO do |obj, args, text|
      out = ''.html_safe
      out << content_tag(:span, 'TODO', class: 'todo-macros todo')
      out
    end
    macro :AI do |obj, args, text|
        out = ''.html_safe
        out << content_tag(:span, 'AI', class: 'todo-macros ai')
        out
      end
    end
end
