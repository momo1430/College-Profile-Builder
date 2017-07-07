//
//  DetailViewController.swift
//  College Profile Builder
//
//  Created by Shane Olson on 7/5/17.
//  Copyright © 2017 Shane Olson. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate
{
    @IBOutlet weak var collegeTextField: UITextField!
    @IBOutlet weak var locationTextField: UITextField!
    @IBOutlet weak var enrollmentTextField: UITextField!
    @IBOutlet weak var websiteTextField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    
    let imagePicker = UIImagePickerController()
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
        imagePicker.delegate = self
        configureView()
    }


    @IBAction func onSaveButtonTapped(_ sender: Any)
    {
        if let college = self.detailItem
        {
            college.name = collegeTextField.text!
            college.location = locationTextField.text!
            college.enrollment = Int(enrollmentTextField.text!)!
            college.website = websiteTextField.text!
            college.image = UIImagePNGRepresentation(imageView.image!)!
        }
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    func configureView()
    {
        if let college = self.detailItem
        {
            if collegeTextField != nil
            {
                collegeTextField.text = college.name
                locationTextField.text = college.location
                enrollmentTextField.text = String(college.enrollment)
                websiteTextField.text = college.website
                imageView.image = UIImage(data: college.image)
            }
        }
    }
    
    
    @IBAction func onGoButtonTapped(_ sender: Any)
    {
        let website1 = URL(string: websiteTextField.text!)!
        UIApplication.shared.open(website1, options: [:], completionHandler: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any])
    {
        imagePicker.dismiss(animated: true)
        {
            let selectedImage = info[UIImagePickerControllerOriginalImage] as! UIImage
            self.imageView.image = selectedImage
        }
    }
    
    @IBAction func onPhotoLibraryButtonTapped(_ sender: Any)
    {
        imagePicker.sourceType = UIImagePickerControllerSourceType.photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
}
