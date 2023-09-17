# A Database of UK Train Stations <!-- omit in toc -->

This repository contains several files listing all UK railway stations.

Stations listed are only those that can be queried through the National Rail Darwin API.

The dataset was originally from [Trainline EU's repository](https://github.com/trainline-eu/stations). The sources they used are listed on their GitHub repository.

## Contents <!-- omit in toc -->

- [Using the dataset](#using-the-dataset)
  - [Git submodules](#git-submodules)
  - [NPM](#npm)
- [Attribution](#attribution)
- [Exceptions in data](#exceptions-in-data)
- [Fields](#fields)
- [Data files](#data-files)
  - [CSV](#csv)
  - [JSON](#json)
- [Contributing](#contributing)
- [Licence](#licence)

## Using the dataset

### Git submodules

You can clone this Git repository into your own as a 'submodule'. [Learn more about Git submodules.](https://medium.com/@porteneuve/mastering-git-submodules-34c65e940407)

```properties
git clone https://github.com/davwheat/uk-railway-stations
```

### NPM

You can also pull the dataset from the NPM registry. The default import is the `stations.json` file, but you can also import the `csv` file.

```
npm i uk-railway-stations
yarn add uk-railway stations
```

```js
import StationsListJSON from "uk-railway-stations"
import StationsListCSV from "uk-railway-stations/stations.csv"
```

## Attribution

Attribution must be provided to myself, Trainline EU, and [their sources](https://github.com/trainline-eu/stations#licence) for this dataset.

This is a limitation of the Open Database License (ODbL). For more info, see [LICENSE](LICENSE).

## Exceptions in data

Some notable exceptions exist. These are stations/networks that are **not** included within the data.

- Manchester Metrolink

## Fields

| Name              | Description                                                                                                                   |
| ----------------- | ----------------------------------------------------------------------------------------------------------------------------- |
| `stationName`     | Name of the station as it is locally known.                                                                                   |
| `lat`             | Longitude coordinates as decimal value.                                                                                       |
| `long`            | Latitude coordinates as decimal value.                                                                                        |  |
| `crsCode`         | The station's [CRS code](https://www.nationalrail.co.uk/stations_destinations/48541.aspx). Unique to each station.            |
| `iataAirportCode` | The [IATA code](https://en.wikipedia.org/wiki/IATA_airport_code) for the airport the station is attached to, if there is one. |

## Data files

### CSV

The CSV file contains a header row, and the columns match the list of fields above in that order.

### JSON

The JSON file provided is an array of station objects.

## Contributing

When making changes, you should **only** perform changes to `stations.csv`. When changes are merged into the main branch, the JSON file with be automatically re-generated from this CSV. This single source of truth means that edits to the JSON file will **not** be kept.

## Licence

The file `stations.csv` is distributed under the Open Database License (ODbL) licence, see [LICENCE.txt](https://github.com/davwheat/uk-railway-stations/blob/master/LICENCE). In short, any modification to this data source must be published.
