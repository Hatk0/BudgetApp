import UIKit
import SnapKit

final class BarView: UIView {
    
    // MARK: - UI
    
    private lazy var pinkView: UIView = {
       let view = UIView()
        view.backgroundColor = UIColor(red: 1, green: 0.2, blue: 0.47, alpha: 1)
        view.layer.shadowColor = UIColor(red: 1, green: 0.2, blue: 0.471, alpha: 0.2).cgColor
        view.layer.shadowOpacity = 1
        view.layer.shadowOffset = .zero
        view.layer.shadowRadius = 42
        view.layer.cornerRadius = 20
        return view
    }()
    
    // MARK: - Initializers
    
    init() {
        super.init(frame: .zero)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    // MARK: - Setup
    
    private func setupView() {
        setupHierarchy()
        setupLayout()
    }
    
    private func setupHierarchy() {
        addSubview(pinkView)
    }
    
    private func setupLayout() {
        pinkView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(20)
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(-20)
            make.height.equalTo(100)
        }
    }
}
