require 'matplotlib/pyplot'
plt = Matplotlib::Pyplot

b = [-8,0,8] #СМЕЩЕНИЕ
w = 5 #ВЕС
b.each do |e|
	
	x = -8.step(8,0.1).to_a
	#f = 1 / (1 + Math.exp(-x * w))
	y = x.map {|x| 1 / (1 + Math.exp(-x * w + e)) }

plt.plot(x,y)
end
plt.show


=begin
xs = -8.step(8,0.1).to_a
xs = (w1, l1), (w2, l2), (w3, l3)
#xs = [*1..100].map {|x| (x - 50) * Math::PI / 100.0 }
p xs
ys = xs.map {|x| 1 / (1 + Math.exp(-x)) }
p ys

plt.plot(xs, ys)
plt.show()
=end

