//
//  MainContentsView.swift
//  UIScrollViewWithStackView
//
//  Created by 윤병일 on 2021/12/20.
//

import UIKit

class MainContentsView : UIView {
  
  //MARK: - Properties
  let scrollView : UIScrollView = {
    let view = UIScrollView()
    return view
  }()
  
  let stackView : UIStackView = {
    let view = UIStackView()
    view.axis = .vertical
    view.backgroundColor = .white
    return view
  }()
  
  private let firstView : UIView = {
    let view = UIView()
    view.backgroundColor = .red
    return view
  }()
  
  private let secondView : UIView = {
    let view = UIView()
    view.backgroundColor = .blue
    return view
  }()
  
  private let thirdView : UIView = {
    let view = UIView()
    view.backgroundColor = .brown
    return view
  }()
  
  private let fourthView : UIView = {
    let view = UIView()
    view.backgroundColor = .purple
    return view
  }()
  
  private let fifthView : UIView = {
    let view = UIView()
    view.backgroundColor = .yellow
    return view
  }()
  
  private let sixthView : UIView = {
    let view = UIView()
    view.backgroundColor = .black
    return view
  }()
  
  
  //MARK: - Init
  override init(frame: CGRect) {
    super.init(frame: frame)
    configureUI()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  //MARK: - Functions
  private func configureUI() {
    addSubview(self.scrollView)
    
    self.scrollView.addSubview(self.stackView)
    
    self.scrollView.snp.makeConstraints {
      $0.edges.equalToSuperview()
    }
    
    self.stackView.snp.makeConstraints {
      $0.edges.equalToSuperview()
      $0.width.equalTo(self.scrollView.snp.width)
    }
    
    [self.firstView, self.secondView, self.thirdView, self.fourthView, self.fifthView, self.sixthView].forEach {
      $0.snp.makeConstraints {
        $0.height.equalTo(200)
      }
      
      self.stackView.addArrangedSubview($0)
    }
    
  }
  
  //MARK: - @objc func
  
}
