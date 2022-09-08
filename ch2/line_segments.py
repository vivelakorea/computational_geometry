import plotly.graph_objects as go
import random


### generate set S

diversity = 1000
num_of_points = 40

points = []
for _ in range(diversity):
    x = random.random()
    y = random.random()
    points.append([x, y])

S = []
cnt = 0
while cnt < num_of_points:
    i = random.randrange(diversity)
    j = random.randrange(diversity)
    if i == j: continue

    S.append((i, j))
    cnt += 1

fig = go.Figure()
for p1_idx, p2_idx in S:
    p1 = points[p1_idx]
    p2 = points[p2_idx]
    fig.add_trace(go.Scatter(x=[p1[0], p2[0]], y=[p1[1], p2[1]], 
        marker=dict(
            color='LightSkyBlue',
            size=5,
            line=dict(
                color='MediumPurple',
                width=2
            )
        ),
        showlegend=False
        )
    )

fig.update_yaxes(
    scaleanchor = "x",
    scaleratio = 1,
  )

fig.show()


### Initialize an empty event Q. Next, insert the segment endpoints into Q






