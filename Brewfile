# recursively read and use all brewfiles (except this one) in all subdirectories - win!
# idea taken from here https://github.com/Homebrew/homebrew-bundle/issues/521#issuecomment-513551124
Dir.glob(File.join(File.dirname(__FILE__), '*', '**', 'Brewfile')) do |brewfile|
  # puts brewfile
  eval(IO.read(brewfile), binding)
end

