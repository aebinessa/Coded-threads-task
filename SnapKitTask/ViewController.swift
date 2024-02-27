//
//  ViewController.swift
//  SnapKitTask
//
//  Created by Abdullah Bin Essa on 2/27/24.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let profileImage = UIImageView()
    let bigUsernameLabel = UILabel()
    let smallUsernameLabel = UILabel()
    let bioLabel = UILabel()
    let verificationMarkImage = UIImageView()

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        view.addSubview(profileImage)
        view.addSubview(bigUsernameLabel)
        view.addSubview(smallUsernameLabel)
        view.addSubview(bioLabel)
        view.addSubview(verificationMarkImage)
        
        setupUI()
        setupConstraints()

        
    }
    
    func setupUI() {
        profileImage.image = UIImage(named: "Liverpool logo")
        profileImage.layer.cornerRadius = 50
        profileImage.layer.masksToBounds = true
        
        bigUsernameLabel.text = "CODED"
        bigUsernameLabel.font = UIFont.boldSystemFont(ofSize: 40)
        bigUsernameLabel.textColor = .white


        smallUsernameLabel.text = "joincoded"
        smallUsernameLabel.textColor = .white
        
        bioLabel.text = "🥇 1st Coding Academy in the Middle East\n🧑🏻‍💻 Learn To Code Websites, Apps, & MORE\n👩🏻‍🎓 Intensive Courses & Bootcamps\n🚀 5,000+ Graduates Since 2015"

        bioLabel.textColor = .white
        bioLabel.numberOfLines = 4
        
        verificationMarkImage.image = UIImage(named: "verification_mark_inPixio")

        
        
    }
    
    func setupConstraints(){
        profileImage.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(20)
            make.trailing.equalToSuperview().offset(-20)
            make.width.height.equalTo(100)
        }
        
        bigUsernameLabel.snp.makeConstraints { make in
            make.centerY.equalTo(profileImage.snp.centerY)
            make.leading.equalToSuperview().offset(30)

        }
        
        smallUsernameLabel.snp.makeConstraints { make in
            make.bottom.equalTo(bigUsernameLabel.snp.bottom).offset(20)
            make.leading.equalToSuperview().offset(28)
        }
        
        bioLabel.snp.makeConstraints { make in
            make.bottom.equalTo(smallUsernameLabel.snp.bottom).offset(120)
            make.leading.equalToSuperview().offset(20)

        }
        
        verificationMarkImage.snp.makeConstraints { make in
            make.leading.equalTo(profileImage.snp.leading)
                    make.bottom.equalTo(profileImage.snp.bottom)
                    make.width.height.equalTo(30)
                }
    }


}

