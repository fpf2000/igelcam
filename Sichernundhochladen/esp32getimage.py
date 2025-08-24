
import requests
from PIL import Image
from io import BytesIO

url = 'http://192.168.69.188/capture'
output = 'bilder/output.jpg'

r = requests.get(url)
img = Image.open(BytesIO(r.content))
img.save(output)
