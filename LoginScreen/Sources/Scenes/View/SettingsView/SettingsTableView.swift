import UIKit
import SnapKit

final class SettingsTableView: UIView {
    
    // MARK: - UI
    
    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.rowHeight = 70
        return tableView
    }()
    
    // MARK: - Initalizers
    
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
        addSubview(tableView)
    }
    
    private func setupLayout() {
        tableView.snp.makeConstraints { make in
            make.top.right.bottom.left.equalToSuperview()
        }
    }
}
