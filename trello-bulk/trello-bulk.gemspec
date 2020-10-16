Gem::Specification.new do |spec|
  spec.name          = 'trello-bulk-card-creator'
  spec.version       = '0.1.0'
  spec.authors       = ['Dean Wilson']
  spec.email         = ['dwilson@unixdaemon.net']
  spec.summary       = 'A trello bulk card creator.'
  spec.homepage      = 'https://github.com/deanwilson/trello-scripts/tree/main/trello-bulk'
  spec.license       = 'GPL-2.0'

  spec.bindir        = '.'
  spec.executables   = 'trello-bulk'

  spec.required_ruby_version = '>= 2.6.0'

  spec.add_runtime_dependency 'ruby-trello', '~> 2.1', '>= 2.1.0'
end
