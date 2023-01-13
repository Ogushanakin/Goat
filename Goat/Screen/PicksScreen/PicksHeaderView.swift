//
//  PicksHeaderVİew.swift
//  Goat
//
//  Created by AKIN on 12.01.2023.
//

import UIKit

class PicksHeaderView: UIView {
    
    // MARK: - Properties
    
    private let headerView: UIView = {
        let view = UIView()
        
        let label = UILabel()
        label.text = "Picks"
        label.font = UIFont.systemFont(ofSize: 30, weight: .bold)
    
        view.addSubview(label)
        label.anchor(top: view.topAnchor, left: view.leftAnchor, paddingTop: 30, paddingLeft: 20)
        
        let profileView = UIImageView(image: UIImage(systemName: "person.circle.fill"))
        profileView.tintColor = .label
        view.addSubview(profileView)
        profileView.centerY(inView: label)
        profileView.setDimensions(height: 34, width: 34)
        profileView.anchor(right: view.rightAnchor, paddingRight: 20)
        
        let sc = UISegmentedControl(items: ["NFL", "NBA", "MLB", "Football", "Parlay"])
        sc.tintColor = UIColor.black
        sc.selectedSegmentIndex = 0
        
        view.addSubview(sc)
        sc.anchor(top: label.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 14, paddingLeft: 20, paddingRight: 20)
        
        return view
    }()

    // MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureUI()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Helpers
    
    func configureUI() {
        
        addSubview(headerView)
        headerView.anchor(top: self.topAnchor, left: self.leftAnchor,
                          bottom: self.bottomAnchor, right: self.rightAnchor)
    }
    
}
