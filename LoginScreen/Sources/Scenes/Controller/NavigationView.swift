import UIKit
import SnapKit

final class NavigationView: UIView {
    
    private var navigationController = UINavigationController()
    
    // MARK: - UI
    
    private lazy var arrowButton: UIButton = {
       let button = UIButton()
        button.setImage(UIImage(systemName: "arrow.left"), for: .normal)
        button.tintColor = UIColor.label
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        return button
    }()
    
    // MARK: - Initalizers
    
    override private init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    convenience init(title: String, navigationController: UINavigationController) {
        self.init(frame: .zero)
        self.navigationController = navigationController
        
        setupView()
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup
    
    private func setupView() {
        backgroundColor = .systemBackground
    }
    
    private func setupHierarchy() {
        addSubview(arrowButton)
    }
    
    private func setupLayout() {
        arrowButton.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.left.equalToSuperview().offset(25)
            make.width.equalTo(25)
            make.height.equalTo(25)
        }
    }
    
    // MARK: - Action
    
    @objc
    func buttonTapped() {
        
    }
}
