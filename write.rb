require 'json'

def write_file(data, file)
  if File.exist?(file)
    file_data = File.read(file)

    json_array = JSON.parse(file_data)

    json_array << data

    File.open(file, 'w') { |f| f.puts JSON.pretty_generate(json_array) }
  else
    File.open(file, 'w') { |f| f.puts JSON.pretty_generate([data]) }
  end
end
