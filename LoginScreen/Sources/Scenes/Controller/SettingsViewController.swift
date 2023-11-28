import UIKit
import SnapKit

class SettingsViewController: UIViewController {
    
    // MARK: - UI
    
    private lazy var navigationView: UIView = {
        let navigationView = NavigationView(title: "Settings", navigationController: self.navigationController ?? UINavigationController())
        return navigationView
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
    }

    private func setupLayout() {
        navigationView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(20)
        }
    }
    
    // MARK: - Configuration
    
}

// MARK: - Extension
