from BBTree import RedBlackTree

rbt = RedBlackTree()
nums = [2, 1, 8, 9, 7, 3, 6, 4, 5, 0]

for num in nums:
    rbt.insert(num)

rbt.print_tree()

for _ in range(10):
    minimum = rbt.minimum(rbt.root)
    print(minimum.item)
    rbt.delete_node(minimum.item)
