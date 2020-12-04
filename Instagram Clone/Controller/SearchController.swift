//
//  SearchController.swift
//  Instagram Clone
//
//  Created by 김용대 on 2020/11/26.
//

import UIKit

private let reuseIndentifier = "UserCell"

class SearchController: UITableViewController {
    
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTableView()
    }
    
    // MARK: - Helpers
    
    func configureTableView() {
        view.backgroundColor = .white
        
        tableView.register(UserCell.self, forCellReuseIdentifier: reuseIndentifier)
        tableView.rowHeight = 64
    }
    
}

// MARK: UITableViewDataSource

extension SearchController {
    
    override func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int
    ) -> Int {
        return 5
    }
    
    override func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIndentifier,
                                                 for: indexPath)
        return cell
    }
    
}
