declare module "uk-railway-stations" {
  export interface StationData {
    stationName: string
    lat: number
    long: number
    crsCode: string
    iataAirportCode?: string
  }

  const AllStationsJSON: StationData[]

  export default AllStationsJSON
}

declare module "uk-railway-stations/stations.csv" {
  const AllStationsCSV: string

  export default AllStationsCSV
}
