//
//  ChatRoomViewController.swift
//  LairTour
//
//  Created by H.Namikawa on 2023/04/20.
//

import UIKit

class CoatRoomViewController: BaseViewController {
  
  let roomImgV = {
    let roomImg = UIImage(named: "coat_room" )
    let roomImgV = UIImageView(image: roomImg)
    roomImgV.translatesAutoresizingMaskIntoConstraints = false
    roomImgV.contentMode = .scaleAspectFill
    return roomImgV
  } ()
  
  let libraryBtn = {
    let btn = UIButton(type: .system)
    btn.translatesAutoresizingMaskIntoConstraints = false
    btn.setTitle("Library", for: .normal)
    return btn
  }()
  
  let diningRoomBtn = {
    let btn = UIButton(type: .system)
    btn.translatesAutoresizingMaskIntoConstraints = false
    btn.setTitle("Dining Room", for: .normal)
    return btn
  }()
  
  let stairsUpBtn = {
    let btn = UIButton(type: .system)
    btn.translatesAutoresizingMaskIntoConstraints = false
    btn.setTitle("Stairs Up", for: .normal)
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
    
    let btnsSv = UIStackView(arrangedSubviews: [libraryBtn, diningRoomBtn, stairsUpBtn])
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
    
    libraryBtn.addTarget(self, action: #selector(goToLibrary(_:)), for: .touchUpInside)
    diningRoomBtn.addTarget(self, action: #selector(goToDiningRoom(_:)), for: .touchUpInside)
    stairsUpBtn.addTarget(self, action: #selector(goToStairUp(_:)), for: .touchUpInside)
  }
  
  // move to another room
  @objc func goToLibrary(_ sender: UIButton) {
    let chatRoom = LibraryViewController()
    navigationController?.pushViewController(chatRoom, animated: true)
  }
  
  @objc func goToDiningRoom(_ sender: UIButton) {
    let chatRoom = DiningRoomViewController()
    navigationController?.pushViewController(chatRoom, animated: true)
  }
  
  @objc func goToStairUp(_ sender: UIButton) {
    let chatRoom = StairsUpViewController()
    navigationController?.pushViewController(chatRoom, animated: true)
  }
}
