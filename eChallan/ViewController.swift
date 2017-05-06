//
//  ViewController.swift
//  eChallan
//
//  Created by Sahil Dhawan on 06/05/17.
//  Copyright © 2017 Sahil Dhawan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Variables
    var imagePicker : UIImagePickerController? = nil
    
    //MARK: Outlets
    @IBOutlet weak var capturedImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker = UIImagePickerController()
        imagePicker?.sourceType = .camera
        imagePicker?.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func imageButtonPressed(_ sender: Any)
    {
        self.present(self.imagePicker!, animated: true, completion: nil)
    }

}

extension ViewController : UIImagePickerControllerDelegate,UINavigationControllerDelegate
{
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.dismiss(animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let chosenImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        self.capturedImage.image = chosenImage
    }
}
