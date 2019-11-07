io.write('Vvedite rasstoyanie mezhdu mashinami: ')
s = io.read()
io.write('Vvedite skorost pervogo avtomobilya: ')
v1 = io.read()
io.write('Vvedite skorost vtorogo avtomobilya: ')
v2 = io.read()
io.write('Vvedite uskorenie pervogo avtomobilya: ')
a1 = io.read()
io.write('Vvedite uskorenie vtorogo avtomobilya: ')
a2 = io.read()
io.write('Vvedite rashod topliva na kilometr pervogo avtomobilya: ')
r1 = io.read()
io.write('Vvedite rashod topliva na kilometr vtorogo avtomobilya: ')
r2 = io.read()
io.write('Vvedite tsenu za 1 litr topliva: ')
pr = io.read()

--((a1 + a2) / 2) * t^2 + (v1 + v2) * t - s = 0 - uravnenie dvizheniya tel, dvizhushchihsya ravnouskorenno
a = (a1 + a2) / 2
b  = v1 + v2
c = -s
D = b^2 - 4 * a * c
t = (-b + math.sqrt(D)) / (2 * a)

vs = v1 + v2
t1 = s / vs
s1 = v1 * t1
s2 = v2 * t1

ts1 = s1 * r1 * pr / 100
ts2 = s2 * r2 * pr / 100
o1 = ts1 / pr
o2 = ts2/ pr

print('Vremya vstrechi: ', t)
print('Rasstoyanie, proydennoe pervim avtomobilem: ', s1)
print('Rasstoyanie, proydennoe vtorim avtomobilem: ', s2)
print('Obyom zatrachennogo topliva pervogo avtomobilya: '..o1..', tsena za toplivo: '..ts1)
print('Obyom zatrachennogo topliva vtorogo avtomobilya: '..o2..', tsena za toplivo: '..ts2)
