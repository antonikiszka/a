class Tree
	
attr_accessor :left
attr_accessor :right
attr_accessor :data

def initialize(x=nil)
	@left = nil
	@right = nil
	@data = x
end

def insert(x)
	list = []
	if @data == nil
		@data = x
	elsif @left == nil
		@left = Tree.new x
	elsif @right == nil
		@right = Tree.new x
	else
		list << @left
		list << @right
		loop do
			node = list.shift
			if node.left == nil
				node.insert(x)
				break
			else
				list << node.left
			end
			if node.right == nil
				node.insert(x)
				break
			else
				list << node.right
			end
		end
	end		
end

def to_s
	"[" +
	if left then left.to_s + "," else "" end +
	data.inspect +
	if right then "," + right.to_s else "" end + "]"
end

def to_a
	temp = []
	temp += left.to_a if left
	temp << data
	temp += right.to_a if right
	temp
end

end


		
