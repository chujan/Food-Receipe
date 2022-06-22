//
//  JSONFileManager.swift
//  Food Receipe
//
//  Created by Jennifer Chukwuemeka on 21/06/2022.
//

import Foundation

class JSONFileManager {
    static func load<T: Decodable>(_ filename: String) -> T {
        let data: Data
        
        guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
            fatalError("Could not find the file named in  main bundle: \(filename).")
        }
        do {
            data = try Data(contentsOf: file)
        } catch {
            fatalError("File could not be loaded \(filename)")
        }
        do {
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
            
        } catch {
            fatalError("Could not parse the file \(filename)")
        }
    }
}
