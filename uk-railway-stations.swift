//
//  uk-railway-stations.swift
//  uk-railway-stations
//
//  Created by Scotty on 11/06/2025.
//

import Foundation

extension Bundle {
    
    /// URL for `stations.json` within the bundle
    public static let stationsJSONBundleURL = Bundle.module.url(forResource: "stations", withExtension: "json")!
    
    /// URL for `stations.csv` within the bundle
    public static let stationsCSVBundleURL = Bundle.module.url(forResource: "stations", withExtension: "csv")!
}
