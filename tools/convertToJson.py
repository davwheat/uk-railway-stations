from pathlib import Path
import pandas as pd

currentDir = Path(__file__).parent.resolve()


def getPath(path):
    return currentDir.joinpath(path)


df = pd.read_csv(getPath("../stations.csv"))
df.to_json(getPath("../stations.json"), orient="records")
