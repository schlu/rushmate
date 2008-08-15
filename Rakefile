task :coverage do
  system("rm -fr coverage")
  system("export TM_SUPPORT_PATH=/Applications/TextMate.app/Contents/SharedSupport/Support && rcov --sort=coverage --threshold=100 --exclude=gems/*,TextMate.app --sort=coverage test/*_test.rb")
  system("open coverage/index.html")
end