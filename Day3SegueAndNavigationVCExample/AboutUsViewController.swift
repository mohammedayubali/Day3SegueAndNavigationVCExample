//
//  AboutUsViewController.swift
//  Day3SegueAndNavigationVCExample
//
//  Created by moxDroid on 2019-03-06.
//  Copyright © 2019 moxDroid. All rights reserved.
//

import UIKit

class AboutUsViewController: UIViewController {
    @IBOutlet weak var lblAnimalName: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var lblStepperValue: UILabel!
    @IBOutlet weak var segmentAnimal: UISegmentedControl!
    @IBOutlet weak var imgAnimal: UIImageView!
    var x:Int?
    override func viewDidLoad() {
        super.viewDidLoad()

        if let i = x
        {
            print(i)
        }
        
        //Add sengment dynamically
        segmentAnimal.insertSegment(withTitle: "Monkey", at: 3, animated: true)
    }
    
    @IBAction func segmentAnimalChanges(_ sender: UISegmentedControl)
    {
        print(sender.selectedSegmentIndex)
        
        switch sender.selectedSegmentIndex {
        case 0:
            lblAnimalName.text = "Cat"
            imgAnimal.image = UIImage(named: "cat")
            
        case 1:
            lblAnimalName.text = "Lion"
            imgAnimal.image = UIImage(named: "lion")
            
        case 2:
            lblAnimalName.text = "Tiger"
            imgAnimal.image = UIImage(named: "tiger.png")
            
        case 3:
            lblAnimalName.text = "I am dynamic Monkey"
            imgAnimal.image = UIImage(named: "monkey")
            
        default:
            print("Invalid Selection")
        }
    }
    
    @IBAction func stapperNumber(_ sender: UIStepper)
    {
        lblStepperValue.text = "\(sender.value)"
    }
    
    @IBAction func sliderValueChange(_ sender: UISlider)
    {
        progressBar.progress = sender.value / 100.0
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
