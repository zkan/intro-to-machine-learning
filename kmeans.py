import pandas as pd
from sklearn import cluster


data = {
    'data': [2, 3, 4, 10, 12, 20, 30, 11, 25]
}
df = pd.DataFrame(data)

kmeans = cluster.KMeans(n_clusters=2)
kmeans.fit(df)
labels = kmeans.predict(df)
df['cluster'] = labels

print('Final Results:')
print(df)

print('Centroids:')
print(kmeans.cluster_centers_)
