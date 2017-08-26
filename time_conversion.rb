# given standard time in an hh:mm:ssAM/PM format, translate it to military time.

def timeConversion(s)
    # first two chars of string represent the hh hours of the format and are then transformed to integer
    hours = s[0..1].to_i

    if (s[-2] == "A") && hours == 12  # midnight, basically
        hours = 0
    else
        hours += 12 if (s[-2] == "P")
        hours = 12 if hours == 24 # noon
    end

    ("%02d" % hours) + s[2..-3]  # cool tip - "%<num>d" will pad num number of digits with leading zeroes

end


p timeConversion("12:00:00AM")