//
//  PicksCell.swift
//  Goat
//
//  Created by AKIN on 12.01.2023.
//

import UIKit

class PicksCell: UITableViewCell {

    private let pickView = PickView()
    
    private let dateView: UIView = {
        let view = UIView()
        
        let dateLabel = UILabel()
        dateLabel.text = "May 30,2023"
        dateLabel.textColor = .gray
        dateLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        
        view.addSubview(dateLabel)
        dateLabel.anchor(left: view.leftAnchor, bottom: view.bottomAnchor,
                         paddingLeft: 20, paddingBottom: 16)
        
        let hoursLabel = UILabel()
        hoursLabel.text = "3.20am"
        hoursLabel.textColor = .gray
        hoursLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        
        view.addSubview(hoursLabel)
        hoursLabel.anchor(bottom: view.bottomAnchor, right: view.rightAnchor,
                          paddingBottom: 16, paddingRight: 20)
        
        return view
    }()
    
    
    var hometeamImage: UIImageView = {
        var image = UIImageView()
        image.clipsToBounds = true
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = 50 / 2
        image.setDimensions(height: 50, width: 50)
        return image
    }()
    
    var guestteamImage: UIImageView = {
        var image = UIImageView()
        image.clipsToBounds = true
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = 50 / 2
        image.setDimensions(height: 50, width: 50)
        return image
    }()
    
    var homeName: UILabel = {
        var label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        return label
    }()
    
    var guestName: UILabel = {
        var label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        return label
    }()
    
    private let scoreboardView: UIView = {
        let view = UIView()
        
        let hometeamImage = UIImageView()
        hometeamImage.image = UIImage(named: "milwaki")
        hometeamImage.clipsToBounds = true
        hometeamImage.contentMode = .scaleAspectFill
        hometeamImage.layer.cornerRadius = 50 / 2
        hometeamImage.setDimensions(height: 50, width: 50)

        view.addSubview(hometeamImage)
        hometeamImage.anchor(top: view.topAnchor, left: view.leftAnchor,
                             paddingTop: 10, paddingLeft: 20)
        
        let guestteamImage = UIImageView()
        guestteamImage.image = UIImage(named: "lakers")
        guestteamImage.clipsToBounds = true
        guestteamImage.contentMode = .scaleAspectFill
        guestteamImage.layer.cornerRadius = 50 / 2
        guestteamImage.setDimensions(height: 50, width: 50)

        view.addSubview(guestteamImage)
        guestteamImage.anchor(top: view.topAnchor, right: view.rightAnchor,
                              paddingTop: 10, paddingRight: 20)
        
        let homeScoreLabel = UILabel()
        homeScoreLabel.text = "0"
        homeScoreLabel.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        homeScoreLabel.textColor = .white
        
        view.addSubview(homeScoreLabel)
        homeScoreLabel.centerY(inView: hometeamImage)
        homeScoreLabel.anchor(left: hometeamImage.rightAnchor, paddingLeft: 14)
        
        let guestScoreLabel = UILabel()
        guestScoreLabel.text = "0"
        guestScoreLabel.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        guestScoreLabel.textColor = .white
        
        view.addSubview(guestScoreLabel)
        guestScoreLabel.centerY(inView: guestteamImage)
        guestScoreLabel.anchor(right: guestteamImage.leftAnchor, paddingRight: 14)
        
        let blueView = UIView()
        blueView.backgroundColor = #colorLiteral(red: 0, green: 0.46, blue: 0.89, alpha: 1)
        blueView.layer.cornerRadius = 12
        blueView.setDimensions(height: 30, width: 30)
        view.addSubview(blueView)
        blueView.centerY(inView: guestteamImage)
        blueView.centerX(inView: view)
        
        let vsLabel = UILabel()
        vsLabel.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        vsLabel.textAlignment = .center
        vsLabel.text = "VS"
        vsLabel.textColor = .white
        
        view.addSubview(vsLabel)
        vsLabel.centerY(inView: guestteamImage)
        vsLabel.centerX(inView: view)
        
        let homeName = UILabel()
        homeName.text = "Bucks"
        homeName.textColor = #colorLiteral(red: 0.08754151314, green: 0.08187741786, blue: 0.1201933995, alpha: 1)
        homeName.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        
        view.addSubview(homeName)
        homeName.anchor(top: hometeamImage.bottomAnchor, left: view.leftAnchor,
                        paddingTop: 10, paddingLeft: 20)
        
        let guestName = UILabel()
        guestName.text = "Lakers"
        guestName.textColor = #colorLiteral(red: 0.08754151314, green: 0.08187741786, blue: 0.1201933995, alpha: 1)
        guestName.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        
        view.addSubview(guestName)
        guestName.anchor(top: guestteamImage.bottomAnchor, right: view.rightAnchor,
                         paddingTop: 10, paddingRight: 20)
        
        let homeStats = UILabel()
        homeStats.text = "(27-15 · 1ST IN CENTRAL)"
        homeStats.textColor = .gray
        homeStats.font = UIFont.systemFont(ofSize: 12, weight: .thin)
        
        view.addSubview(homeStats)
        homeStats.anchor(top: homeName.bottomAnchor, left: view.leftAnchor,
                        paddingTop: 10, paddingLeft: 20)
        
        let guestStats = UILabel()
        guestStats.text = "(19-23 · 5TH IN PACIFIC)"
        guestStats.textColor = .gray
        guestStats.font = UIFont.systemFont(ofSize: 12, weight: .thin)
        
        view.addSubview(guestStats)
        guestStats.anchor(top: guestName.bottomAnchor, right: view.rightAnchor,
                         paddingTop: 10, paddingRight: 20)
        
        return view
    }()
    
    // MARK: - Lifecycle

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Helpers
    
    func configureUI() {
        addSubview(pickView)
        pickView.anchor(top: self.topAnchor, left: self.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, paddingTop: 20, paddingLeft: 20, paddingRight: 20)
        
        addSubview(dateView)
        dateView.anchor(left: pickView.leftAnchor, bottom: pickView.bottomAnchor, right: pickView.rightAnchor)
        
        addSubview(scoreboardView)
        scoreboardView.anchor(top: pickView.topAnchor, left: pickView.leftAnchor, right: pickView.rightAnchor)
        
        

        addSubview(hometeamImage)
        hometeamImage.anchor(top: pickView.topAnchor, left: pickView.leftAnchor,
                             paddingTop: 10, paddingLeft: 20)
        
        addSubview(guestteamImage)
        guestteamImage.anchor(top: pickView.topAnchor, right: pickView.rightAnchor,
                              paddingTop: 10, paddingRight: 20)
        
        
        addSubview(homeName)
        homeName.anchor(top: hometeamImage.bottomAnchor, left: pickView.leftAnchor,
                        paddingTop: 10, paddingLeft: 20)
        
        addSubview(guestName)
        guestName.anchor(top: guestteamImage.bottomAnchor, right: pickView.rightAnchor,
                         paddingTop: 10, paddingRight: 20)
    }

}
