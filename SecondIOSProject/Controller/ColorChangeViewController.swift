//
//  ViewController.swift
//  SecondIOSProject
//
//  Created by Runyan, Jacob on 10/11/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

public class ColorChangeViewController: UIViewController
{
    private lazy var myColor: ColorTool = ColorTool()
    
    @IBOutlet weak var colorButton: UIButton!
    @IBOutlet weak var basicLabel: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    public override func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func colorClick(_ sender: Any) -> Void
    {
        colorButton.backgroundColor = myColor.randomColor()
        basicLabel.backgroundColor = myColor.randomColor()
    }
    
    @IBAction func colorSlide(_ sender: Any) -> Void
    {
        updateColor()
    }
    
    private func updateColor()
    {
        self.view.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(100))
    }
}

