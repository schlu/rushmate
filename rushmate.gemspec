Gem::Specification.new do |s|
  s.name = "rushmate"
  s.version = "0.0.7"
  s.email = "schlueter@gmail.com"
  s.homepage = "http://github.com/schlueter/rushmate"
  s.description = "Makes writing TextMate commands easier by providing convient methods for getting environment variables and getting user input."
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.date = %q{2008-08-14}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.2.0}
  s.summary = "Textmate to Rush bridge"
  s.authors = ["Nicholas Schlueter"]
  s.files = [
    "History.txt",
    "Manifest.txt",
    "README",
    "Rakefile",
    "rushmate.gemspec",
    "lib/rushmate.rb",
    "lib/rushmate/command.rb",
    "lib/rushmate/exit.rb",
    "lib/rushmate/textmate_helper.rb",
    "lib/rushmate/user_input.rb",
    "test/command_test.rb",
    "test/helper.rb",
    "test/textmate_helper_test.rb",
    "test/user_input_test.rb"
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