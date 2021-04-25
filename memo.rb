require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.to_s

if memo_type = "1"
    puts "拡張子を除いたファイルを入力して下さい"
    file_name = gets
    file = File.open("#{file_name}.csv", "w")
    puts "メモしたい内容を入力して下さい"
    puts "完了したら　control＋d　を入力します"
    memo_message = gets
    file.puts "#{memo_message}"
    
elsif memo_type = "2"
    puts "既存のメモを編集する"
    file_name = gets
    file = File.open("#{file_name}.csv", "w")
    puts "メモしたい内容を入力して下さい"
    puts "完了したら　control＋d　を入力します"
    memo_message = gets
    file.puts "#{memo_message}"
end

