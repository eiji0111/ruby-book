print 'Text: '
text = gets.chomp
begin
print 'Pattern: '
  pattern = gets.chomp
  regexp = Regexp.new(pattern)
rescue RegexpError => e
  p "不正なパターンが入力されました。もう一度入力してください。#{e.message}"
  retry
end
matches = text.scan(regexp)
if matches.size > 0
  puts "Mathced: #{matches.join(',')}"
else
  puts "Nothing matched."
end

# begin 例外処理の始まり
# rescue 例外発生時の処理
# raise 例外を発生させる（rescueでも拾いきれなかった例外処理などに使用）
# ensure 例外の有無に関わらず必ず実行したい処理
# cause もともと発生していた例外情報を取得する（rescueやensureの処理に例外が発生しそうな場面で使用する）