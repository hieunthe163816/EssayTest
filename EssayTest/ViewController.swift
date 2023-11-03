//
//  ViewController.swift
//  EssayTest
//
//  Created by Hiếu đang cáu on 03/11/2023.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Question 1:
        
        var arrKey: [String] = ["HaNoi", "SaiGon", "BacGiang", "VinhPhuc"]
        var arrValue: [String] = ["Bun cha", "Banh canh", "Vai thieu", "Tao"]

        var dictionary: [String: String] = [:]
        for (index, key) in arrKey.enumerated() {
            let value = arrValue[index]
            dictionary.updateValue(value, forKey: key)
        }
        print(dictionary)
        
        
        //Question 2:
        
        var count = 0
        let number = 10
        for i in 1...number {
            if number % 2 != 0 {
                count += 1
            }
        }
        if count % 2 == 0 {
            print("tổng từ 1 đến \(number) là số chẵn")
        } else {
            print("tổng từ 1 đến \(number) là số lẻ")
        }
        
        
        //Question 3:
        
        
        let array1 = [1, 2, 3, 4, 5]
        let array2 = [0.5, 1.5, 2.5, 3.5, 4.5]

        var newArray = [Double]()
        for i in 0..<min(array1.count, array2.count) {
            let sum = Double(array1[i]) + array2[i]
            newArray.append(sum)
        }

        if array1.count > array2.count {
            for i in array2.count..<array1.count {
                newArray.append(Double(array1[i]))
            }
        } else if array2.count > array1.count {
            for i in array1.count..<array2.count {
                newArray.append(array2[i])
            }
        }

        newArray.sort()
        print(newArray)
        
        
        //Question 4:
        let myView = UIView()
        myView.frame = CGRect(x: 0, y: 0, width: 150, height: 150)
        myView.center = view.center
        myView.layer.cornerRadius = myView.frame.size.width / 2
        myView.layer.borderWidth = 2.0
        myView.layer.borderColor = UIColor.red.cgColor
        myView.backgroundColor = UIColor.red.withAlphaComponent(0.5)
        
        view.addSubview(myView)
        
        // Do any additional setup after loading the view.
    }


}

