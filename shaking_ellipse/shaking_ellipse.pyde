import math
def setup():
    size(400, 400)

def draw():
    clear()
    fill(200, 100, 100)
    dx = math.pow(sin(frameCount / 100.0) * 5, 3)
    dy = math.pow(cos(frameCount / 100.0) * 5, 3)
    #dx = sin(3 * frameCount / 100.0) * 100
    #dy = cos(4 * frameCount / 100.0) * 100
    centerX = (width / 2.0) + dx
    centerY = (height / 2.0) + dy
    dw = ((centerX - mouseX + randomGaussian() * 10) / 4)
    dh = ((centerY - mouseY + randomGaussian() * 10) / 4)
    ellipse_width = 200 - dw
    ellipse_height = 200 - dh
    ellipse(centerX, centerY, ellipse_width, ellipse_height)
    saveFrame('frames/#####.png')
    if frameCount > 1000:
        exit()
