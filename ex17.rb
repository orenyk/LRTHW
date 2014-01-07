# from_file, to_file = ARGV
# script = $0

# puts "Copying from #{from_file} to #{to_file}"

# # we could do these two on one line too, how?
# input = File.open(from_file)
# indata = input.read()

# puts "The input file is #{indata.length} bytes long"

# puts "Does the output file exist? #{File.exists? to_file}"
# puts "Ready, hit RETURN to continue, CTRL-C to abort."
# STDIN.gets

# output = File.open(to_file, 'w')
# output.write(indata)

# puts "Alright, all done."

# input.close()
# output.close()

# IN ONE LINE, IO.write and IO.read prevent us from needing to open and close the file
IO.write(ARGV[1],IO.read(ARGV[0]))