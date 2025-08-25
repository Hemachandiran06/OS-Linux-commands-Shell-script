BEGIN {
    # This block runs before reading input
}
{
    len = length($0)       # length of the current line
    print len, "\t", $0    # print line length + actual line

    wordcount += NF        # NF = number of fields (words) in this line
    chrcnt += len          # add length to character count
}
END {
    print "Total characters:", chrcnt
    print "Number of lines:", NR
    print "Number of words:", wordcount
}
