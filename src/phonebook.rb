class PhoneBook
    def initialize
        @entries = []
    end

    def add(name, number, is_listed)
        usedNames = []
        @entries.each do |eachEntry|
            usedNames << eachEntry[0]
        end
        
        if usedNames.include?(name)
            return false
        else
            @entries << [name, number, is_listed]
            return true
        end

    end

    def lookup(name)
        usedNames = []
        @entries.each do |eachEntry|
            usedNames << eachEntry[0]
        end

        entryIndex = usedNames.index(name)
        if @entries[entryIndex][2] == true
            return @entries[entryIndex][1]
        else
            return nil
        end

    end

    def lookupByNum(number)
        usedNums = []
        @entries.each do |eachEntry|
            usedNums << eachEntry[1]
        end
        entryIndex = usedNums.index(number)
        if @entries[entryIndex][2] == true
            return @entries[entryIndex][0]
        else
            return nil
        end
    end

    def namesByAc(areacode)
        foundNames = []
        @entries.each do |eachEntry|
            if  eachEntry[1].start_with?(areacode)
                foundNames << eachEntry[0]
            end
        end
        return foundNames
    end
end
