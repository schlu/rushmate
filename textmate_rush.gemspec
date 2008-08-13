Gem::Specification.new do |s|
  s.name = "textmate_rush"
  s.version = "0.0.2"
  s.email = "schlueter@gmail.com"
  s.homepage = "http://github.com/schlueter/textmate_rush"
  s.description = "Textmate to Rush bridge"
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.date = %q{2008-08-13}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.2.0}
  s.summary = "Textmate to Rush bridge"
  s.authors = ["Nicholas Schlueter"]
  s.files = [
    "History.txt",
    "Manifest.txt",
    "README",
    "textmate_rush.gemspec",
    "lib/textmate_rush.rb",
    "lib/textmate_rush/command.rb",
    "lib/textmate_rush/textmate_helper.rb"
  ]
  
  s.has_rdoc = true
  s.rdoc_options = ["--main", "README"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README"]
  s.add_dependency(%q<rush>, [">= 0.4"])

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

  else
  end
end