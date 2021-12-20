//
//  MainViewController.swift
//  UIScrollViewWithStackView
//
//  Created by 윤병일 on 2021/12/20.
//

import UIKit
import SnapKit

class MainViewController : UIViewController {
  
  //MARK: - Properties
  
  private let mainContentsView = MainContentsView()
  
  //MARK: - Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    configureUI()
  }
  
  //MARK: - Functions
  private func configureUI() {
    self.view.backgroundColor = .white
    
    self.view.addSubview(self.mainContentsView)
    
    self.mainContentsView.snp.makeConstraints {
      $0.top.bottom.equalTo(self.view.safeAreaLayoutGuide)
      $0.leading.trailing.equalToSuperview()
    }
  }
  
  //MARK: - @objc func
  
}
