//
//  JoinView.swift
//  Netflix_Layout
//
//  Created by Seokjune Hong on 2022/08/19.
//

import UIKit
import SnapKit

class JoinView: BaseView {
    
    let netflixLabel: UILabel = {
        let view = UILabel()
        view.text = "NETFLIX"
        view.textColor = .red
        view.font = .boldSystemFont(ofSize: 40)
        
        return view
    }()
    
    let idTextfield: DarkGrayRadiusTextField = {
        let view = DarkGrayRadiusTextField()
        view.attributedPlaceholder = NSAttributedString(string: "이메일 또는 전화번호", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        
        return view
    }()
    
    let passwordTextField: DarkGrayRadiusTextField = {
        let view = DarkGrayRadiusTextField()
        view.attributedPlaceholder = NSAttributedString(string: "비밀번호", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        
        return view
    }()
    
    let nicknameTextField: DarkGrayRadiusTextField = {
        let view = DarkGrayRadiusTextField()
        view.attributedPlaceholder = NSAttributedString(string: "닉네임", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        
        return view
    }()
    
    let locationTextField: DarkGrayRadiusTextField = {
        let view = DarkGrayRadiusTextField()
        view.attributedPlaceholder = NSAttributedString(string: "위치", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        return view
    }()
    
    let recommendCodeTextField: DarkGrayRadiusTextField = {
        let view = DarkGrayRadiusTextField()
        view.attributedPlaceholder = NSAttributedString(string: "추천 코드 입력", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        return view
    }()
    
    let joinButton: UIButton = {
        let view = UIButton()
        view.backgroundColor = .white
        view.layer.cornerRadius = 5
        view.setTitle("회원가입", for: .normal)
        view.setTitleColor(.black, for: .normal)
        
        return view
    }()
    
    let userSwitch: UISwitch = {
        let view = UISwitch()
        view.onTintColor = .orange
        view.isOn = true
        
        return view
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func configureUI() {
        [netflixLabel, idTextfield, passwordTextField, nicknameTextField, locationTextField, recommendCodeTextField, joinButton, userSwitch].forEach {
            self.addSubview($0)
            
        }
    }
    
    override func setConstraints() {
        netflixLabel.snp.makeConstraints { make in
            make.topMargin.equalTo(50)
            make.centerX.equalTo(self.snp.centerX)
        }
        
        idTextfield.snp.makeConstraints { make in
            make.top.equalTo(netflixLabel.snp.bottom).offset(100)
            make.centerX.equalTo(self.snp.centerX)
            make.height.equalTo(40)
            make.width.equalTo(self.snp.width).multipliedBy(0.8)
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(idTextfield.snp.bottom).offset(15)
            make.centerX.equalTo(self.snp.centerX)
            make.height.equalTo(idTextfield.snp.height)
            make.width.equalTo(idTextfield.snp.width)
        }
        
        nicknameTextField.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(15)
            make.centerX.equalTo(self.snp.centerX)
            make.height.equalTo(idTextfield.snp.height)
            make.width.equalTo(idTextfield.snp.width)
        }
        
        locationTextField.snp.makeConstraints { make in
            make.top.equalTo(nicknameTextField.snp.bottom).offset(15)
            make.centerX.equalTo(self.snp.centerX)
            make.height.equalTo(idTextfield.snp.height)
            make.width.equalTo(idTextfield.snp.width)
        }
        
        recommendCodeTextField.snp.makeConstraints { make in
            make.top.equalTo(locationTextField.snp.bottom).offset(15)
            make.centerX.equalTo(self.snp.centerX)
            make.height.equalTo(idTextfield.snp.height)
            make.width.equalTo(idTextfield.snp.width)
        }
        
        joinButton.snp.makeConstraints { make in
            make.top.equalTo(recommendCodeTextField.snp.bottom).offset(15)
            make.centerX.equalTo(self.snp.centerX)
            make.height.equalTo(50)
            make.width.equalTo(idTextfield.snp.width)
        }
        
        userSwitch.snp.makeConstraints { make in
            make.top.equalTo(joinButton.snp.bottom).offset(15)
            make.trailing.equalTo(joinButton.snp.trailing)
        }
        
        
    }
}
