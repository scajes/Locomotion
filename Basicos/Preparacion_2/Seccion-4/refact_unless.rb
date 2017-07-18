def swim(time)
	time < 10
	"#{time} seconds... New Record for 50 meters" if time
end

p swim(5) == "5 seconds... New Record for 50 meters"
p swim(8) == "8 seconds... New Record for 50 meters"