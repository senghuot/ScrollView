//
//  ImageViewController.swift
//  ScrollView
//
//  Created by Senghuot Lim on 4/26/16.
//  Copyright © 2016 Home Brew. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController, UIScrollViewDelegate {

//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//        scrollView.addSubview(imageView)
//        if image == nil {
//            fetchImage()
//        }
//    }
//    
//    
//    override func viewWillAppear(animated: Bool) {
//        super.viewWillAppear(animated)
//        if image == nil {
//            fetchImage()
//        }
//    }
//    
//    var imageURL: NSURL? {
//        didSet {
//            image = nil
//            if view.window != nil {
//                fetchImage()
//            }
//        }
//    }
//    
//    private func fetchImage() {
//        if let url = imageURL {
//            print(url)
//            let imageData = NSData(contentsOfURL: url)
//            if imageData == nil {
//                print("image data is nil")
//                image = nil
//            } else {
//                image = UIImage(data: imageData!)
//            }
//        }
//    }
//    
//    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView? {
//        return imageView
//    }
//    
//    @IBOutlet weak var scrollView: UIScrollView! {
//        didSet {
//            scrollView.contentSize = imageView.frame.size
//            scrollView.delegate = self
//            scrollView.minimumZoomScale = 0.01
//            scrollView.maximumZoomScale = 1.0
//        }
//    }
//    
//    
//    private var imageView = UIImageView()
//    private var image: UIImage? {
//        get {
//            return imageView.image
//        }
//        set {
//            imageView.image = newValue
//            imageView.sizeToFit()
//            scrollView?.contentSize = imageView.frame.size
//        }
//    }
    
    
    var imageURL: NSURL? {
        didSet {
            image = nil
            fetchImage()
        }
    }
    
    func fetchImage() {
        if let url = imageURL {
            let imageData = NSData(contentsOfURL: url)
            if imageData != nil {
                image = UIImage(data: imageData!)
            } else {
                image = nil
            }
        }
    }
    
    private var imageView = UIImageView()
    
    private var image: UIImage? {
        set {
            imageView.image = newValue
            imageView.sizeToFit()
            scrollView?.contentSize = imageView.frame.size
        }
        
        get {
            return imageView.image
        }
    }
    
    @IBOutlet weak var scrollView: UIScrollView! {
        didSet {
            scrollView.contentSize = imageView.frame.size
            scrollView.delegate = self
            scrollView.minimumZoomScale = 0.01
            scrollView.maximumZoomScale = 1.0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.addSubview(imageView)
        if image == nil {
            fetchImage()
        }
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        if image == nil {
            fetchImage()
        }
    }

}
