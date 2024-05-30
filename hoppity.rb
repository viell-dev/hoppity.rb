if ARGV[0]
  file_raw = ARGV[0].to_s
  if file_raw.match(/^\//) || file_raw.match(/\:\\/)
    file_path = file_raw
  else
    file_path = Dir.pwd + "/" + file_raw
  end
  File.open(file_path, "r") {|f| $i = f.readline.to_i}
  1.upto($i) do|i|
    if ( i.to_f / 3 ) == ( i / 3 ).to_i && ( i.to_f / 5 ) == ( i / 5 ).to_i
      puts "Hop"
    elsif ( i.to_f / 3 ) == ( i / 3 ).to_i
      puts "Hoppity"
    elsif ( i.to_f / 5 ) == ( i / 5 ).to_i
      puts "Hophop"
    end
  end
else
  puts "This script reqires you to pass a filename as a parameter to it."
end
