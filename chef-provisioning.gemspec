$:.unshift(File.dirname(__FILE__) + '/lib')
require 'chef/provisioning/version'

Gem::Specification.new do |s|
  s.name = 'chef-provisioning'
  s.version = Chef::Provisioning::VERSION
  s.platform = Gem::Platform::RUBY
  s.extra_rdoc_files = ['README.md', 'CHANGELOG.md', 'LICENSE' ]
  s.summary = 'A library for creating machines and infrastructures idempotently in Chef.'
  s.description = s.summary
  s.author = 'John Keiser'
  s.email = 'jkeiser@opscode.com'
  s.homepage = 'http://wiki.opscode.com/display/chef'

  s.add_dependency 'net-ssh', '~> 2.0'
  s.add_dependency 'net-scp', '~> 1.0'
  s.add_dependency 'net-ssh-gateway', '~> 1.2.0'
  s.add_dependency 'inifile', '~> 2.0'
  s.add_dependency 'cheffish', '~> 0.8'
  s.add_dependency 'winrm', '~> 1.2.0'
#  s.add_dependency 'ruby-lxc'

  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rake'

  s.bindir       = "bin"
  s.executables  = s.files.grep(%r{^bin/}) { |f| File.basename(f) }

  s.require_path = 'lib'
  s.files = %w(Rakefile LICENSE README.md CHANGELOG.md) + Dir.glob("{distro,lib,tasks,spec}/**/*", File::FNM_DOTMATCH).reject {|f| File.directory?(f) }
end
