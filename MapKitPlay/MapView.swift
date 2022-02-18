//
//  MapView.swift
//  MapKitPlay
//
//  Created by 경원이 on 2022/01/21.
//

import Foundation
import UIKit
import SnapKit
import MapKit

class MapView: UIView{


    let sesacLocationButton = UIButton()
    let myLocationButton = UIButton()
    let map = MKMapView()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addSubview(map)
        self.addSubview(myLocationButton)
        self.addSubview(sesacLocationButton)
        configure()
        makeConstraints()
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func configure() {
        myLocationButton.setTitle("내 위치로 가기", for: .normal)
        myLocationButton.backgroundColor = .darkGray
        myLocationButton.setTitleColor(.yellow, for: .normal)
        myLocationButton.layer.cornerRadius = 12
        
        sesacLocationButton.setTitle("새싹 캠퍼스 가기", for: .normal)
        sesacLocationButton.backgroundColor = .darkGray
        sesacLocationButton.setTitleColor(.yellow, for: .normal)
        sesacLocationButton.layer.cornerRadius = 12
        
//        myLocationButton.addTarget(self, action: #selector(findMyLocation), for: .touchUpInside)
//        sesacLocationButton.addTarget(self, action: #selector(findSesacLocation), for: .touchUpInside)
    }
    
    func makeConstraints() {
        map.snp.makeConstraints { make in
            make.top.leading.trailing.bottom.equalToSuperview()
            
        }
        
        myLocationButton.snp.makeConstraints { make in
            make.leading.trailing.bottom.equalTo(self.safeAreaLayoutGuide).inset(20)
            make.height.equalTo(50)
        }
        
        sesacLocationButton.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(20)
            make.bottom.equalTo(myLocationButton.snp.top).offset(-20)
            make.height.equalTo(50)
        }
    }
    
    
}


