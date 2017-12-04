//
//  UIImageView+Extensions.swift
//  CollectionBasic
//
//  Created by Admin on 11/19/17.
//  Copyright © 2017 FunLife. All rights reserved.
//

import Foundation
import UIKit

extension UIImageView {
    // resume: thuc thi URL Seesion khong dong bo, tien trinh Global
    public func getImageUrl(urlString: String){
        URLSession.shared.dataTask(with: NSURL(string: urlString)! as URL, completionHandler: {(data,reponse, error) -> Void in
            if error != nil {
                print(error!)
                return
            }
            
            // Chay tien trinh tren giao dien - tranh vuot cu giat giat. 
            DispatchQueue.main.async(execute: {()-> Void in
                let image  = UIImage(data: data!)
                self.image = image
            })
        }).resume()
    }
}
