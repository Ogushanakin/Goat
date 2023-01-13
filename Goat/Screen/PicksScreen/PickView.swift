//
//  PickView.swift
//  Goat
//
//  Created by AKIN on 12.01.2023.
//

import UIKit

class PickView: UIView {
    
    private let pickView: UIView = {
        
        let background = UIView()
        background.backgroundColor = #colorLiteral(red: 0.08754151314, green: 0.08187741786, blue: 0.1201933995, alpha: 1)
        background.layer.cornerRadius = 12
        
        let roundedView = UIView()
        roundedView.backgroundColor = .black
        roundedView.layer.cornerRadius = 30 / 2
        roundedView.setDimensions(height: 30, width: 30)
        
        let roundeddView = UIView()
        roundeddView.backgroundColor = .black
        roundeddView.layer.cornerRadius = 30 / 2
        roundeddView.setDimensions(height: 30, width: 30)
        
        background.addSubview(roundedView)
        roundedView.anchor(left: background.leftAnchor, bottom: background.bottomAnchor,
                           paddingLeft: -15, paddingBottom: 40)
        
        background.addSubview(roundeddView)
        roundeddView.anchor(bottom: background.bottomAnchor, right: background.rightAnchor,
                            paddingBottom: 40, paddingRight: -15)
        
        let seperatorView = UIView()
        seperatorView.backgroundColor = .black
        seperatorView.layer.cornerRadius = 1
        seperatorView.setDimensions(height: 5, width: 20)
        
        let seperatorrView = UIView()
        seperatorrView.backgroundColor = .black
        seperatorrView.layer.cornerRadius = 1
        seperatorrView.setDimensions(height: 5, width: 20)
        
        let seperatoRView = UIView()
        seperatoRView.backgroundColor = .black
        seperatoRView.layer.cornerRadius = 1
        seperatoRView.setDimensions(height: 5, width: 20)
        
        let seperatoRRView = UIView()
        seperatoRRView.backgroundColor = .black
        seperatoRRView.layer.cornerRadius = 1
        seperatoRRView.setDimensions(height: 5, width: 20)
        
        let SeperatorView = UIView()
        SeperatorView.backgroundColor = .black
        SeperatorView.layer.cornerRadius = 1
        SeperatorView.setDimensions(height: 5, width: 20)
        
        let SEperatorrView = UIView()
        SEperatorrView.backgroundColor = .black
        SEperatorrView.layer.cornerRadius = 1
        SEperatorrView.setDimensions(height: 5, width: 20)
        
        let seperatoRVieww = UIView()
        seperatoRVieww.backgroundColor = .black
        seperatoRVieww.layer.cornerRadius = 1
        seperatoRVieww.setDimensions(height: 5, width: 20)
        
        let seperatoRRVieW = UIView()
        seperatoRRVieW.backgroundColor = .black
        seperatoRRVieW.layer.cornerRadius = 1
        seperatoRRVieW.setDimensions(height: 5, width: 20)
        
        let seperatoRRVieWW = UIView()
        seperatoRRVieWW.backgroundColor = .black
        seperatoRRVieWW.layer.cornerRadius = 1
        seperatoRRVieWW.setDimensions(height: 5, width: 20)
        
        let seperatorStack = UIStackView(arrangedSubviews: [seperatorView, seperatorrView, seperatoRView, seperatoRRView, SeperatorView, SEperatorrView, seperatoRVieww, seperatoRRVieW, seperatoRRVieWW])
        seperatorStack.axis = .horizontal
        seperatorStack.spacing = 18
        
        background.addSubview(seperatorStack)
        seperatorStack.centerY(inView: roundedView)
        seperatorStack.anchor(left: roundedView.rightAnchor)
        
        return background
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
        
        addSubview(pickView)
        pickView.anchor(top: self.topAnchor, left: self.leftAnchor,
                          bottom: self.bottomAnchor, right: self.rightAnchor)
    }

}
