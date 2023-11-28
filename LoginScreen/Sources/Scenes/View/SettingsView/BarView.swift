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
    
    private lazy var updateLabel: UILabel = {
       let label = UILabel()
        label.font = UIFont(name: "GTWalsheimPro-Thin", size: 12)
        label.text = "Update your settings"
        label.textColor = .white
        return label
    }()
    
    private lazy var notificationLabel: UILabel = {
       let label = UILabel()
        label.font = UIFont(name: "GTWalsheimPro-Bold", size: 21)
        label.text = "Turn on notifications"
        label.textColor = .white
        return label
    }()
    
    private lazy var bellImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "bell")
        view.contentMode = .scaleAspectFit
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
        pinkView.addSubview(updateLabel)
        pinkView.addSubview(notificationLabel)
        pinkView.addSubview(bellImage)
    }
    
    private func setupLayout() {
        pinkView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(20)
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(-20)
            make.height.equalTo(100)
        }
        
        updateLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(20)
            make.left.equalToSuperview().offset(25)
        }
        
        notificationLabel.snp.makeConstraints { make in
            make.top.equalTo(updateLabel.snp.bottom).offset(10)
            make.left.equalToSuperview().offset(25)
        }
        
        bellImage.snp.makeConstraints { make in
            make.centerY.equalToSuperview().offset(-25)
            make.right.equalToSuperview().offset(-20)
            make.width.height.equalTo(72)
        }
    }
}
