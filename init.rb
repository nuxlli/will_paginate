
locale_files = Dir[File.join(File.dirname(__FILE__), 'locales', "*.{rb,yml}")]

first_app_element = 
  I18n.load_path.select{ |e| e =~ /^#{ RAILS_ROOT }/ }.reject{ |e| e =~ /^#{ RAILS_ROOT }\/vendor\/plugins/ }.first
app_index = I18n.load_path.index(first_app_element) || - 1

I18n.load_path.insert(app_index, *locale_files)

require 'will_paginate'
