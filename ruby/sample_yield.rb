puts ":: Welcome to  Sample YIELD ::"

def run_it
	puts "  Running It \\/"
	yield
	puts @var1 if @var1
end

run_it do
	puts "    My message :)"
end

run_it { puts "    My message inline \\o/" }

run_it do
	@var1 = "Scope variable"
	@var1.prepend("    ")
end


