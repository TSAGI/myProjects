phonebook = [
    ["416-976-8585", "416-967-1111", "416-510-3530"], 
    ["905-731-7000", "905-310-2455", "905-789-4857"],
    ["647-898-9499", "647-323-9845", "647-778-4857"] 
]

for arr in phonebook do
    for num in arr do
        puts num 
    end
end
phonebook[0][3] = "416-223-6300"
phonebook[3] = ["310-663-2800", "310-881-9427", "310-222-5400"]

for arr in phonebook do
    for num in arr do
        print "#{num}\n"
    end
end