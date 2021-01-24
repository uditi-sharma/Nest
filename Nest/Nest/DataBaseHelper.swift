//
//  DataBaseHelper.swift
//  Nest
//
//  Created by Uditi Sharma on 24/01/2021.
//

import Foundation
import UIKit
import CoreData

class DataBaseHelper {
    
    static let shareInstance = DataBaseHelper()
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    func saveImage(data: Data) {
        let imageInstance = Challenge_image(context: context)
        imageInstance.image = data
            
        do {
            try context.save()
//            print("Image is saved")
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func fetchImage() -> [Challenge_image] {
        var fetchingImage = [Challenge_image]()
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Challenge_image")
        
        do {
            fetchingImage = try context.fetch(fetchRequest) as! [Challenge_image]
        } catch {
            print("Error while fetching the image")
        }
        
        return fetchingImage
    }
}
