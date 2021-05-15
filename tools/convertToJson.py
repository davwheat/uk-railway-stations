import pandas as pd

df = pd.read_csv(r"../stations.csv")
df.to_json(r"../stations.json", orient="records")
