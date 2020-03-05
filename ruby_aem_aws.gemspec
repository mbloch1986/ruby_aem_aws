require 'yaml'

gem_conf = YAML.load_file('conf/gem.yaml')

Gem::Specification.new do |s|
  s.name              = 'ruby_aem_aws'
  s.version           = gem_conf['version']
  s.platform          = Gem::Platform::RUBY
  s.authors           = ['Shine Solutions']
  s.email             = ['opensource@shinesolutions.com']
  s.homepage          = 'https://github.com/shinesolutions/ruby_aem_aws'
  s.summary           = 'AEM on AWS API Ruby client'
  s.description       = 'ruby_aem_aws is a Ruby client for Shine Solutions Adobe Experience Manager (AEM) Platform on AWS'
  s.license           = 'Apache-2.0'
  s.required_ruby_version = '>= 2.3'
  s.files             = Dir.glob('{conf,lib}/**/*')
  s.require_paths     = ['lib']

  # s.add_runtime_dependency 'aws-sdk-core', '3.71.0'
  s.add_runtime_dependency 'aws-sdk-autoscaling', '1.32.0'
  s.add_runtime_dependency 'aws-sdk-cloudformation', '1.30.0'
  s.add_runtime_dependency 'aws-sdk-cloudwatch', '1.32.0'
  s.add_runtime_dependency 'aws-sdk-cloudwatchlogs', '1.28.0'
  s.add_runtime_dependency 'aws-sdk-dynamodb', '1.43.0'
  s.add_runtime_dependency 'aws-sdk-ec2', '1.145.0'
  s.add_runtime_dependency 'aws-sdk-elasticloadbalancing', '1.19.0'
  s.add_runtime_dependency 'aws-sdk-s3', '1.60.2'
  s.add_runtime_dependency 'aws-sdk-sns', '1.21.0'
  s.add_runtime_dependency 'retries', '0.0.5'
  s.add_runtime_dependency 'tuples', '0.1.0'

  s.add_development_dependency 'rspec', '3.8.0'
  s.add_development_dependency 'yard', '0.9.20'
end
