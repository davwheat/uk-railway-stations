from pathlib import Path
import pandas as pd

currentDir = Path(__file__).parent.resolve()


def getPath(path):
    return currentDir.joinpath(path)


df = pd.read_csv(getPath("../stations.csv"))
json = df.to_json(orient="records")
json = json.replace(',"iataAirportCode":null', '')

with open(getPath("../stations.json"), "w") as myfile:
    myfile.write(json)
