//
//  EditViewController.swift
//  Pixel
//
//  Created by Mizugaki on 2018/04/27.
//  Copyright © 2018年 edu.com. All rights reserved.
//

import UIKit

class EditViewController: UIViewController {

    @IBOutlet weak var editorView: EditorView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func onTapGrid(_ sender: UIBarButtonItem) {
        editorView.isGrid = !editorView.isGrid
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
