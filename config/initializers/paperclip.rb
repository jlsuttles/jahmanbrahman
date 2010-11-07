module Paperclip
  Config = YAML.load(ERB.new(File.read(File.join(Rails.root, 'config', 'paperclip.yml'))).result)[Rails.env]
end
