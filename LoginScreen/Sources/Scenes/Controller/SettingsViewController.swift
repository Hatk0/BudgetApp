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
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        setupHierarchy()
        setupLayout()
    }
    
    // MARK: - Setup
    
    private func setupView() {
        view.backgroundColor = .systemBackground
    }
    
    private func setupHierarchy() {
        view.addSubview(navigationView)
        view.addSubview(barView)
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
    }
    
    // MARK: - Configuration
    
}

// MARK: - Extension
