//
//  ViewController.swift
//  youtube_clone
//
//  Created by Ritesh Singh on 19/12/21.
//

import UIKit

class ViewController: UIViewController {

    var model = Model()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        model.getVideos()
    }


}

