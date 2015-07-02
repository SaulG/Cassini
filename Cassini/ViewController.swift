//
//  ViewController.swift
//  Cassini
//
//  Created by saul on 02/07/15.
//  Copyright (c) 2015 SaulGausin. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    var imageURL: NSURL? {
        didSet {
            image = nil
            fetchImage()
        }
    }
    
    private func fetchImage()
    {
        if let url = imageURL {
            let imageData = NSData(contentsOfURL: url)
            if imageData != nil {
                image = UIImage(data: imageData!)
            } else {
                image = nil
            }
        }
    }
    
    private var imageView: UIImageView = UIImageView()
    
    private var image: UIImage? {
        get { return imageView.image }
        set {
            imageView.image = newValue
            imageView.sizeToFit()
        }
    }
}

