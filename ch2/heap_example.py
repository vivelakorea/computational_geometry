from heapq import heappush, heappop


points = [
    (0, 1),
    (4, 3),
    (9, 1),
    (6, 9)
]


heap = [] # points are saved as: (-y, -x)

for point in points:
    heappush(heap, (-point[1], -point[0]))

for i in range(4):
    tmp = heappop(heap)
    point = (-tmp[1], -tmp[0])
    print(point)