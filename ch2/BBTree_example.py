from BBTree import RedBlackTree, EventPointItem
import numpy as np
# import plotly.graph_objects as go
import time

# rbt = RedBlackTree()
# nums = [2, 1, 8, 9, 7, 3, 6, 4, 5, 0]

# for num in nums:
#     rbt.insert(num)

# rbt.print_tree()

# for _ in range(10):
#     minimum = rbt.minimum(rbt.root)
#     print(minimum.item)
#     rbt.delete_node(minimum.item)


#############################################################################################################################

# eventQ = RedBlackTree()
# points = [[1,1],[2,1],[2,3],[2,2],[3,3],[1,3],[2,4]]
# event_points = list(map(lambda x: EventPointItem(x), points))
# for event_point in event_points:
#     eventQ.insert(event_point)

# eventQ.print_tree()
# print()

# eventQ.delete_node(EventPointItem([1,3]))

# eventQ.print_tree()
# print()

# for _ in range(6):
#     minimum = eventQ.minimum(eventQ.root)
#     print(minimum.item)
#     eventQ.delete_node(minimum.item)

# eventQ.print_tree()
# print()


## for numpy array
points = np.random.randn(100, 2)

start = time.time()
for _ in range(100):

    eventQ = RedBlackTree()
    event_points = list(map(lambda x: EventPointItem(x), points))
    for event_point in event_points:
        eventQ.insert(event_point)


    # fig = go.Figure()
    # tmp = [0,10]
    for _ in range(100):
        minimum = eventQ.minimum(eventQ.root)
        # print(minimum.item)
        # fig.add_trace(go.Scatter(x=[tmp[0], minimum.item.x], y=[tmp[1], minimum.item.y], marker=dict(color='LightSkyBlue',size=5,line=dict(color='MediumPurple',width=2)),showlegend=False))
        # tmp = [minimum.item.x, minimum.item.y]
        eventQ.delete_node(minimum.item)
end = time.time()
print('time elapsed for red black tree: ' + str(end-start))


def min_idx(points):
    min_point = points[0]
    idx = 0
    for i, point in enumerate(points):
        if point[1] > min_point[1] or point[0] < min_point[0]:
            min_point = point
            idx = i
    return idx

start = time.time()
for _ in range(100):
    
    eventQ_list = []
    for point in points:
        eventQ_list.append(point)

    for _ in range(100):
        idx = min_idx(eventQ_list)
        eventQ_list.pop(idx)

end = time.time()
print('time elapsed for list: ' + str(end-start))


# fig.update_yaxes(scaleanchor = "x", scaleratio = 1)

# fig.show()


