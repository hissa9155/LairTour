//
//  LibraryViewController.swift
//  LairTour
//
//  Created by H.Namikawa on 2023/04/20.
//

import UIKit

class SecretPassageViewController: BaseViewController {
  
  let roomImgV = {
    let roomImg = UIImage(named: "secret_passage" )
    let roomImgV = UIImageView(image: roomImg)
    roomImgV.translatesAutoresizingMaskIntoConstraints = false
    roomImgV.contentMode = .scaleAspectFill
    return roomImgV
  } ()
  
  let dungeonBtn = {
    let btn = UIButton(type: .system)
    btn.translatesAutoresizingMaskIntoConstraints = false
    btn.setTitle("Dungeon", for: .normal)
    return btn
  }()
  
  let labratoryBtn = {
    let btn = UIButton(type: .system)
    btn.translatesAutoresizingMaskIntoConstraints = false
    btn.setTitle("Labratory", for: .normal)
    return btn
  }()
  let mysteriousLakeBtn = {
    let btn = UIButton(type: .system)
    btn.translatesAutoresizingMaskIntoConstraints = false
    btn.setTitle("Mysterious Lake", for: .normal)
    return btn
  }()
    
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    
    view.addSubview(roomImgV)
    
    roomImgV.heightAnchor
      .constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.5).isActive = true
    roomImgV.topAnchor
      .constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
    roomImgV.leadingAnchor
      .constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 0).isActive = true
    roomImgV.trailingAnchor
      .constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 0).isActive = true
    
    let btnsSv = UIStackView(arrangedSubviews: [dungeonBtn, labratoryBtn, mysteriousLakeBtn])
    view.addSubview(btnsSv)
    btnsSv.translatesAutoresizingMaskIntoConstraints = false
    btnsSv.axis = .vertical
    btnsSv.spacing = 50
    btnsSv.alignment = .center
    btnsSv.distribution = .equalSpacing
    
    btnsSv.topAnchor.constraint(equalTo: roomImgV.bottomAnchor, constant: 50).isActive = true
    btnsSv.leadingAnchor
      .constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10).isActive = true
    btnsSv.trailingAnchor
      .constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 10).isActive = true
    btnsSv.centerXAnchor
      .constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
    
    dungeonBtn.addTarget(self, action: #selector(goToDungeon(_:)), for: .touchUpInside)
    labratoryBtn.addTarget(self, action: #selector(goToLabratory(_:)), for: .touchUpInside)
    mysteriousLakeBtn.addTarget(self, action: #selector(goToMysteriousLake(_:)), for: .touchUpInside)
  }
  
  // move to another room
  @objc func goToDungeon(_ sender: UIButton) {
    let room = DungeonViewController()
    navigationController?.pushViewController(room, animated: true)
  }
  
  @objc func goToLabratory(_ sender: UIButton) {
    let room = LabratoryViewController()
    navigationController?.pushViewController(room, animated: true)
  }
  
  @objc func goToMysteriousLake(_ sender: UIButton) {
    let room = MysteriousLakeViewController()
    navigationController?.pushViewController(room, animated: true)
  }
  
}
