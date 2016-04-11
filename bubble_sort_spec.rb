require "./bubble_sort"

describe "bubble_sort" do 

	it 'sorts an array' do
		expect(bubble_sort([4,3,78,2,0,2])).to eq([0,2,2,3,4,78])
		
	end

end

describe "bubble_sort_by" do 

	it 'sorts an array' do
		by = Proc.new do |left, right|
			left.length - right.length
		end
		expect(bubble_sort_by(["hi","hello","hey"], &by)).to eq(["hi", "hey", "hello"])
		
	end

end