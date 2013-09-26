puts "beggining"

def rub_block
	yield
end

rub_block do 
	puts "test"
end
