import UIKit
import SnapKit

class SettingsViewController: UIViewController {
    
    // MARK: - UI
    
    private lazy var navigationView: UIView = {
        let navigationView = NavigationView(title: "Settings", navigationController: self.navigationController ?? UINavigationController())
        return navigationView
    }()
    
    private lazy var barView: UIView = {
        let barView = BarView()
        return barView
    }()
    
    private lazy var settingsTableView: SettingsTableView = {
       let tableView = SettingsTableView()
        return tableView
    }()
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        setupHierarchy()
        setupLayout()
        
        configure()
    }
    
    // MARK: - Setup
    
    private func setupView() {
        view.backgroundColor = .systemBackground
    }
    
    private func setupHierarchy() {
        view.addSubview(navigationView)
        view.addSubview(barView)
        view.addSubview(settingsTableView)
    }

    private func setupLayout() {
        navigationView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(20)
        }
        
        barView.snp.makeConstraints { make in
            make.top.equalTo(navigationView.snp.bottom).offset(10)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(50)
        }
        
        settingsTableView.snp.makeConstraints { make in
            make.top.equalTo(barView.snp.bottom).offset(100)
            make.leading.trailing.bottom.equalToSuperview()
        }
    }
    
    // MARK: - Configuration
    
    private func configure() {
        settingsTableView.tableView.register(SettingsTableViewCell.self, forCellReuseIdentifier: SettingsTableViewCell.identifier)
        settingsTableView.tableView.dataSource = self
        settingsTableView.tableView.delegate = self
        settingsTableView.tableView.isScrollEnabled = false
        
        settingsTableView.tableView.reloadData()
    }
}

// MARK: - Extension

extension SettingsViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
}
