//
//  BaseViewController.swift
//  LairTour
//
//  Created by H.Namikawa on 2023/04/20.
//

import UIKit

class BaseViewController: UIViewController {
  
  let rightBarBtn = {
    let btn = UIBarButtonItem(title: "Go back Entrance")
    return btn
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    rightBarBtn.target = self
    rightBarBtn.action = #selector(goBackToEntrance(_:))
    //navigationItem.rightBarButtonItems = [rightBarBtn]
    navigationItem.rightBarButtonItem = rightBarBtn
    navigationItem.rightBarButtonItem?.isEnabled = true
  }
  
  @objc func goBackToEntrance(_ sender: UIBarButtonItem){
    navigationController?.popToRootViewController(animated: true)
  }
  
}
