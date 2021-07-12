def convert_hash_syntax(old_syntax)
  old_syntax.gsub(%r{:(\w+) *=> *}, '\1: ')
end