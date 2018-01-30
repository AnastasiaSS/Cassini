//
//  DemoURL.swift
//  Cassini
//
//  Created by Анастасия Соколан on 12.01.18.
//  Copyright © 2018 Анастасия Соколан. All rights reserved.
//

import Foundation

struct DemoURL
{
    static let stanford = URL(string: "http://c0.emosurf.com/0001pf0ysXco09G/0_ef653_1ca0d0f_orig.jpg")
    static var NASA: Dictionary<String,URL> = {
        let NASAURLStrings = [
            "Cassini" : "http://www.jpl.nasa.gov/images/cassini/20090202/pia03883-full.jpg",
            "Earth" : "http://www.nasa.gov/sites/default/files/wave_earth_mosaic_3.jpg",
            "Saturn" : "http://www.nasa.gov/sites/default/files/saturn_collage.jpg"
        ]
        var urls = Dictionary<String,URL>()
        for (key, value) in NASAURLStrings {
            urls[key] = URL(string: value)
        }
        return urls
    }()
}
