# brainf silver

puts "Filename (no extension and has to be in folder)"

filename = gets

fileobj = File.open(File.absolute_path("#{filename.gsub("\n", "")}.bfs")) # get a File object to 'C:/Users/.../file.bfs'

file = fileobj.read.gsub("\n", "") # read and remove all newlines

if file
    i = 0
    bytes = Array.new(8) {0}
    loc = 0
    hand = 0
    locs = []
    mode = true

    while i < file.size
        # limit pointer from overflow
        if loc < 0 
            loc = 0
        end
        if loc > bytes.size - 1
            loc = bytes.size - 1
        end
        # basic brainf
        if file[i] == '+'
            bytes[loc] += 1
        end
        if file[i] == '-'
            bytes[loc] -= 1
        end
        if file[i] == '>'
            loc += 1
        end
        if file[i] == '<'
            loc -= 1
        end
        if file[i] == '.'
            if mode
                print bytes[loc].chr
            else
                print bytes[loc]
            end
        end
        if file[i] == ','
            create = gets
            bytes[loc] = create
        end
        if file[i] == '['
            locs << i
        end
        if file[i] == ']'
            if bytes[loc] != 0
                i = locs[-1]
            else
                locs.pop
            end
        end
        # brainf silver additions
        if file[i] == '~' # toggles modes from letter to number and vice versa
            mode = !mode
        end
        if file[i] == '↑' # switches values with the current byte at the pointer and the hand value
            old = hand
            hand = bytes[loc]
            bytes[loc] = old
        end
        if file[i] == '*' # multiply current byte at pointer with current hand value
            bytes[loc] *= hand
        end
        if file[i] == '/' # divide current byte at pointer with current hand value
            bytes[loc] /= hand
        end
        if file[i] == '#' # add current byte at pointer with current hand value
            bytes[loc] += hand
        end
        if file[i] == '_' # subtract current byte at pointer with current hand value
            bytes[loc] -= hand
        end
        if file[i] == '|' # dumps data into console
            print bytes
        end
        if file[i] == '↓' # resets hand
            hand = 0
        end
        if file[i] == ')' # create a new byte forward of the pointer
            bytes.insert(loc + 1, 0)
        end
        if file[i] == '(' # delete the byte forward of the pointer
            bytes.delete_at(loc + 1)
        end
        if file[i] == '%' # modulo with hand
            bytes[loc] %= hand
        end
        if file[i] == '^' # exp with hand
            bytes[loc] **= hand
        end
        if file[i] == ':' # reset byte
            bytes[loc] = 0
        end
        if file[i] == '?' # run chance with the current byte at the pointer being a percentage, and replaces with '1' or '0' depending on if it won or not (1 meaning lost, 0 meaning win)
            if bytes[loc] > 100
                bytes[loc] = 100
            end
            if bytes[loc] < 0
                bytes[loc] = 0
            end
            if rand(0.0..10.0) >= 10 - (bytes[loc] / 10)
                bytes[loc] = 0
            else
                bytes[loc] = 1
            end
        end
        i += 1
    end
else
    puts "Aww, #{filename}.bfs could not be read!"
end
fileobj.close
