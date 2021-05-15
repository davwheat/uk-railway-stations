# A Database of UK Train Stations <!-- omit in toc -->

This repository contains several files listing all UK railway stations.

Stations listed are only those that can be queried through the National Rail Darwin API.

The dataset was originally from [Trainline EU's repository](https://github.com/trainline-eu/stations).

## Contents <!-- omit in toc -->

- [Exceptions in data](#exceptions-in-data)
- [Fields](#fields)
- [Data files](#data-files)
  - [CSV](#csv)
  - [JSON](#json)
- [Contributing](#contributing)
- [Licence](#licence)

## Exceptions in data

Some notable exceptions exist. These are stations/networks that are **not** included within the data.

- Manchester Metrolink

## Fields

| Name              | Description                                                                                                        |
| ----------------- | ------------------------------------------------------------------------------------------------------------------ |
| `stationName`     | Name of the station as it is locally known.                                                                        |
| `lat`             | Longitude coordinates as decimal value.                                                                            |
| `long`            | Latitude coordinates as decimal value.                                                                             |
| `isAirport`       | Specify if the station is related to an airport.                                                                   |
| `crsCode`         | The station's [CRS code](https://www.nationalrail.co.uk/stations_destinations/48541.aspx). Unique to each station. |
| `iataAirportCode` | The [IATA code](https://en.wikipedia.org/wiki/IATA_airport_code) for the airport the station is attached to.       |

## Data files

### CSV

The CSV file contains a header row, and the columns match the list of fields above in that order.

### JSON

The JSON file provided is an array of station objects.

## Contributing

When making changes, you should **only** perform changes to `stations.csv`. Other files are created via Python scripts in the `tools` folder. (This will be automated in the future.)

## Licence

The file `stations.csv` is distributed under the Open Database License (ODbL) licence, see [LICENCE.txt](https://github.com/davwheat/uk-railway-stations/blob/master/LICENCE). In short, any modification to this data source must be published.
