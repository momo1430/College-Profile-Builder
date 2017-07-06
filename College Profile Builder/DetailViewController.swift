//
//  DetailViewController.swift
//  College Profile Builder
//
//  Created by Shane Olson on 7/5/17.
//  Copyright © 2017 Shane Olson. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController
{
    @IBOutlet weak var collegeTextField: UITextField!
    @IBOutlet weak var locationTextField: UITextField!
    @IBOutlet weak var enrollmentTextField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    
    var detailItem: College?
    {
        didSet
        {
            configureView()
        }
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        configureView()
    }

    @IBAction func onSaveButtonTapped(_ sender: Any)
    {
        if let college = self.detailItem {
            college.name = collegeTextField.text!
            college.location = locationTextField.text!
            college.enrollment = Int(enrollmentTextField.text!)!
            college.image = UIImagePNGRepresentation(imageView.image!)!
        }
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    func configureView()
    {
        //Update the user interface for the detail item
        if let college = self.detailItem
        {
            if collegeTextField != nil
            {
                collegeTextField.text = college.name
                locationTextField.text = college.location
                enrollmentTextField.text = String(college.enrollment)
                imageView.image = UIImage(data: college.image)
            }
        }
    }
}
