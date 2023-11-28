import UIKit
import SnapKit

final class NavigationView: UIView {
    
    // MARK: - UI
    
    // MARK: - Initalizers
    
    override private init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    convenience init(title: String, navigationController: UINavigationController) {
        self.init(frame: .zero)
        
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

    }
    
    private func setupLayout() {

    }
    
    // MARK: - Action
}
