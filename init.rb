I18n.load_path.map { |f| File.basename(f).gsub(/\.(rb|yml)$/, '') }.uniq.each |locale|
  I18n.load_path += Dir[File.join(File.dirname(__FILE__), 'locale', "#{locale}.{rb,yml}")]
end

require 'will_paginate'
