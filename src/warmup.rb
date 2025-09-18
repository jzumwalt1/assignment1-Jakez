def fib(n)
    #raise Exception, "Not Implemented"
    array = []
    n.times do |i|
        if i < 2
            array << i
        else
            array << array[i-1] + array[i-2]
        end
    end
    array
end

def isPalindrome(n)
    #raise Exception, "Not Implemented"
    str = n.to_s
    str_rev = str.reverse
    if str == str_rev
        return true
    else
        return false
    end
end

def nthmax(n, a)
    #raise Exception, "Not Implemented"
    sort_arr = a.sort
    rev_sort_arr = sort_arr.reverse
    if n > a.length
        return nil
    else
        return rev_sort_arr[n]
    end
end

def freq(s)
    #raise Exception, "Not Implemented"
    s_arr = s.chars
    if s_arr.empty?
        return ""
    end
    freq_hash = Hash.new(0)
    s_arr.each {|val| freq_hash[val] += 1 }
    return freq_hash.max_by{|_, freq| freq}[0]
end

def zipHash(arr1, arr2)
    #raise Exception, "Not Implemented"
    if arr1.length != arr2.length
        return nil
    end
    map = arr1.zip(arr2).to_h
    return map
end

def hashToArray(hash)
    #raise Exception, "Not Implemented"
    result = []
    hash.each do |key, value|
        result << [key, value]
    end
    return result
end
