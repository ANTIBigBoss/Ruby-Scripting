require 'rubygems'
require 'markaby'

languages = ['Python', 'Ruby', 'R', 'PowerShell']

m = Markaby::Builder.new
m.html do
  body do
    h3 'Scripting Languages'
    ol do
      languages.each do |item|
        li item
      end
    end
  end
end

File.open("e:\\programming_languages_markaby.html", "w") { |f| f.write m }
