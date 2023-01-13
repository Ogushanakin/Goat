//
//  PicksController.swift
//  Goat
//
//  Created by AKIN on 12.01.2023.
//

import UIKit


private let reuseIdentifier = "PicksCell"

final class PicksController: UITableViewController {

    // MARK: - Properties
    
    var homeTeamLogo: [UIImage] = [
        UIImage(named: "milwaki")!,
        UIImage(named: "pacers")!,
        UIImage(named: "bulls")!
    ]
    
    var homeTeamName = [ "Bucks", "Pacers", "Bulls" ]
    var guestTeamName = [ "Lakers", "Knicks", "Heat" ]
    
    var guestTeamLogo: [UIImage] = [
        UIImage(named: "lakers")!,
        UIImage(named: "knicks")!,
        UIImage(named: "heat")!
    ]
    
    private lazy var headerView = PicksHeaderView(frame: .init(x: 0, y: 0,
                                                               width: view.frame.width,
                                                               height: 130))
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }

    // MARK: - Helpers
    
    func configureUI() {
        
        navigationController?.isNavigationBarHidden = true
        tableView.separatorStyle = .none
        tableView.tableHeaderView = headerView
        tableView.rowHeight = 210
        tableView.register(PicksCell.self, forCellReuseIdentifier: reuseIdentifier)
        
    }
    

}

// MARK: - UITableViewDataSource

extension PicksController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return homeTeamLogo.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->     UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! PicksCell
        cell.hometeamImage.image = homeTeamLogo[indexPath.row]
        cell.homeName.text = homeTeamName[indexPath.row]
        cell.guestteamImage.image = guestTeamLogo[indexPath.row]
        cell.guestName.text = guestTeamName[indexPath.row]
        return cell
    }
}
