task :coverage do
  system("rm -fr coverage")
  system("export TM_SUPPORT_PATH=/Applications/TextMate.app/Contents/SharedSupport/Support && rcov --sort=coverage --threshold=100 --exclude=gems/*,TextMate.app --sort=coverage test/*_test.rb")
  system("open coverage/index.html")
end

task :install do
  %x{rm -f rushmate-*}
  puts %x{gem build rushmate.gemspec}
  puts %x{sudo gem install --local -f rushmate}
end

task :uninstall do
  puts %x{sudo gem uninstall rushmate}
end

task :cleanup do
  %x{rm -rf coverage}
  %x{rm -f rushmate-*}
end