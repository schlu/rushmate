Gem::Specification.new do |s|
  s.name = "textmate_rush"
  s.version = "0.0.1"
  s.date = "2008-08-13"
  s.summary = "Textmate to Rush bridge"
  s.email = "schlueter@gmail.com"
  s.homepage = "http://github.com/schlueter/textmate_rush"
  s.description = "Textmate to Rush bridge"
  s.has_rdoc = false
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
  s.rdoc_options = ["--main", "README"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README"]
  s.add_dependency("rush", ["> 0.4"])
end