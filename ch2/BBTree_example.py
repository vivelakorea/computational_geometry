from BBTree import RedBlackTree, EventPointItem

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

eventQ = RedBlackTree()
points = [[1,1],[2,1],[2,3],[2,2],[3,3],[1,3],[2,4]]
event_points = list(map(lambda x: EventPointItem(x), points))
for event_point in event_points:
    eventQ.insert(event_point)

eventQ.print_tree()

for _ in range(7):
    minimum = eventQ.minimum(eventQ.root)
    print(minimum.item)
    eventQ.delete_node(minimum.item)