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
    
    private lazy var settingsLabel: UILabel = {
       let label = UILabel()
        label.font = UIFont(name: "GTWalsheimPro-Bold", size: 24)
        return label
    }()
    
    // MARK: - Initalizers
    
    override private init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    convenience init(title: String, navigationController: UINavigationController) {
        self.init(frame: .zero)
        settingsLabel.text = title
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
        addSubview(settingsLabel)
    }
    
    private func setupLayout() {
        arrowButton.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.left.equalToSuperview().offset(25)
            make.width.equalTo(25)
            make.height.equalTo(25)
        }
        
        settingsLabel.snp.makeConstraints { make in
            make.left.equalTo(arrowButton.snp.right).offset(18)
            make.right.equalToSuperview().offset(-16)
            make.centerY.equalToSuperview()
        }
    }
    
    // MARK: - Action
    
    @objc
    func buttonTapped() {
        
    }
}
