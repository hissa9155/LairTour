//
//  LibraryViewController.swift
//  LairTour
//
//  Created by H.Namikawa on 2023/04/20.
//

import UIKit

class DiningRoomViewController: BaseViewController {
  
  let roomImgV = {
    let roomImg = UIImage(named: "dining_room" )
    let roomImgV = UIImageView(image: roomImg)
    roomImgV.translatesAutoresizingMaskIntoConstraints = false
    roomImgV.contentMode = .scaleAspectFill
    return roomImgV
  } ()
  
  let kitchenBtn = {
    let btn = UIButton(type: .system)
    btn.translatesAutoresizingMaskIntoConstraints = false
    btn.setTitle("Kitchen", for: .normal)
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
    
    let btnsSv = UIStackView(arrangedSubviews: [kitchenBtn])
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
    
    kitchenBtn.addTarget(self, action: #selector(goToKitchen(_:)), for: .touchUpInside)
  }
  
  // move to another room
  @objc func goToKitchen(_ sender: UIButton) {
    let room = KitchenViewController()
    navigationController?.pushViewController(room, animated: true)
  }
  
}
