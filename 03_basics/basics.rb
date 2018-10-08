def who_is_bigger(a, b, c)
	if a.nil? || c.nil?
		return "nil detected"
	elsif a > b && a > c
		return "a is bigger"
	elsif b > a && b > c
		return "b is bigger"
	elsif c > a && c > b
		return "c is bigger"
	end
end

def reverse_upcase_noLTA(string)
	string.reverse!.upcase!
	string.delete!("L")
	string.delete!("T")
	string.delete!("A")
	return string
end

def array_42(array)
	return array.include? 42
end

def magic_array(array)
	return array.flatten.sort.uniq.collect { |value| value * 2 }.select { |value| value%3 != 0}
end

