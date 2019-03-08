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
    
    @IBOutlet weak var imgAnimal: UIImageView!
    var x:Int?
    override func viewDidLoad() {
        super.viewDidLoad()

        if let i = x
        {
            print(i)
        }
    }
    
    @IBAction func segmentAnimalChanges(_ sender: UISegmentedControl)
    {
        print(sender.selectedSegmentIndex)
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
