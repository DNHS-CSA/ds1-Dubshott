// Made by Dubshot

import UIKit
class ChemController: UIViewController {
    
    // IBOutlet connects to Storyboard items, I had problems with Drag
    @IBOutlet weak var mass: UITextField!
    @IBOutlet weak var specificHeat: UITextField!
    @IBOutlet weak var deltaTemp: UITextField!
    @IBOutlet weak var q: UILabel!

    
    // Loads at initialization
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Initialize Outlets
        let variables = (mass: "0.0", specificHeat: "0.0", deltaTemp: "0.0", q: "0.0")
        mass.text = "0.0"
        specificHeat.text = (variables.specificHeat)
        deltaTemp.text = (variables.deltaTemp)
        q.text = (variables.q)
        
    }

    // IBAction created with Drag from Storyboard
   @IBAction func calculate(sender: UIButton) {
        // let is for values that are not modified
        let m = Float(mass.text!)
        let C = Float(specificHeat.text!)
        let T = Float(deltaTemp.text!)

        // Square Calculation
        let answer = ( m! * C! * T! )

        // Set calculation to screen
        q.text = String(answer)
        print("Pyth  \(q.text!)")
    
    }
}
