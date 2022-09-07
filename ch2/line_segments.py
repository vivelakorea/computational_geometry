import plotly.graph_objects as go
import random

# fig = go.Figure()

# fig.add_trace(go.Scatter(x=[0,1,3], y=[0,1,1], mode='lines'))

# fig.show()

points = []
for _ in range(100):
    x = random.random()
    y = random.random()
    points.append([x, y])

S = set()
for _ in range(20):
    i = random.randrange(100)
    j = random.randrange(100)
    S.add((i, j))

print(S)

fig = go.Figure()
for p1_idx, p2_idx in S:
    p1 = points[p1_idx]
    p2 = points[p2_idx]
    fig.add_trace(go.Scatter(x=[p1[0], p2[0]], y=[p1[1], p2[1]], mode='lines'))

fig.show()
