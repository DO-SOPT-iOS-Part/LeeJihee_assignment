//
//  WeekHeaderView.swift
//  SOPTWeather
//
//  Created by 지희의 MAC on 12/12/23.
//

import UIKit

import SnapKit

final class WeekHeaderView: UITableViewHeaderFooterView {
    // MARK: - Variables
    // MARK: Const
    static var reuseId = "WeekHeaderView"
    
    // MARK: Component
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = .sfProMedium15
        label.text = "10일간의 일기예보"
        label.textColor = .darkGray
        return label
    }()
    
    private let iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "calendar")?.withTintColor(.darkGray, renderingMode: .alwaysOriginal)
        return imageView
    }()
    
    private lazy var titleStackView : UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 5
        stackView.addArrangeSubViews(iconImageView, titleLabel)
        return stackView
    }()
    
    
    // MARK: - Function
    // MARK: LifeCycle
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        setUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Layout Helpers
    private func setUI(){
        setViewHierarchy()
        setConstraints()
    }
    
    private func setViewHierarchy() {
        self.addSubViews(titleStackView)
    }
    
    private func setConstraints() {
        titleStackView.snp.makeConstraints {
            $0.top.equalToSuperview().offset(8)
            $0.leading.equalToSuperview().offset(15)
        }
    }
}
