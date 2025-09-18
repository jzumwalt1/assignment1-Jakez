class PhoneBook
    def initialize
        @entries = {}
        @listed_numbers = []
    end

    def add(name, number, is_listed)
        #raise Exception, "Not implemented"
        if @entries.key?(name) then return false end
        unless number.match?(/[1-9]\d{2}-\d{3}-\d{4}/) then return false end
        if is_listed && @listed_numbers.include?(number) then return false end
        if is_listed then @listed_numbers << number end
        @entries[name] = {number: number, is_listed: is_listed}
        return true
    end

    def lookup(name)
        #raise Exception, "Not implemented"
        if @entries.key?(name)
            if @entries[name][:is_listed]
                return @entries[name][:number]
            else
                return nil
            end
        else
            return nil
        end
    end

    def lookupByNum(number)
        #raise Exception, "Not implemented"
        @entries.each do |name, entry|
            if entry[:number] == number && entry[:is_listed]
                return name
            end
        end
        return nil
    end

    def namesByAc(areacode)
        #raise Exception, "Not implemented"
        result = []
        @entries.each do |name, entry|
            if entry[:number].start_with?(areacode)
                result << name
            end
        end
        return result
    end
end
