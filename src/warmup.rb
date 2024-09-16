def fib(n)
    
    if n == 0
        return []
    elsif n == 1
        return [0]
    end
    fibArray = Array.new(n)
    fibArray[0] = 0
    fibArray[1] = 1
    for i in 2...n
        fibArray[i] = (fibArray[i-1] + fibArray[i-2])
    end
    return fibArray
end

def isPalindrome(n)
    stringedN = String(n)
    reversedN = stringedN.reverse
    if stringedN == reversedN
        return true
    else
        return false
    end

end

def nthmax(n, a)
    sorted = a.sort.reverse
    return sorted[n]
end

def freq(s)
    freqChar = ""
    maxTimes = 0

    for i in 0...s.length
        times = s.count(s[i])
        if times > maxTimes
            freqChar = s[i]
            maxTimes = times
        end
    end
    return freqChar
end

def zipHash(arr1, arr2)
    if arr1.length != arr2.length 
        return nil
    end
    hash = Hash.new()
    for i in 0...arr1.length
        hash[arr1[i]] = arr2[i]
    end
    return hash
end

def hashToArray(hash)
    array = hash.map do |key, value|
        [key, value]
    end
    return array
end

