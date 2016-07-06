from PIL import Image, ImageDraw
from numpy import genfromtxt
my_data = genfromtxt('foo.csv', delimiter=',')
im = Image.open('013173-R.png').convert('RGB')
draw = ImageDraw.Draw(im)
for i in range(1,len(my_data)):
  x0 = my_data[i,0]
  y0 = my_data[i,1]
  x1 = my_data[i,2]
  y1 = my_data[i,3]
  bbox = (x0, y0, x0+x1, y0+y1)
  draw = ImageDraw.Draw(im)
  draw.rectangle(bbox)
  del draw
im.save("aoutput.png")
