//
//  DetailViewController.swift
//  CallAPIExample
//
//  Created by imac-2437 on 2023/2/3.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var contyLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var aqiLabel: UILabel!
    @IBOutlet weak var aqiTitleLabel: UILabel!
    @IBOutlet weak var impactTitleLabel: UILabel!
    @IBOutlet weak var impactBodyLabel: UILabel!
    @IBOutlet weak var adviceTitleLabel: UILabel!
    @IBOutlet weak var adviceBodyLabel: UILabel!
    var conty: String!
    var status: String!
    var aqi: Int!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        // Do any additional setup after loading the view.
    }
    
    func setupUI() {
        setupLabel()
    }
    
    private func setupLabel() {
        contyLabel.text = "城市: " + conty
        statusLabel.text = "狀態: " + status
        aqiTitleLabel.text = "aqi數值:"
        aqiLabel.text = "\(aqi!)"
        impactTitleLabel.text = "對健康的影響"
        adviceTitleLabel.text = "建議採取的措施"
        setupOtherLabel(aqi: aqi)
    }
    
    private func setupOtherLabel(aqi: Int) {
        switch aqi {
        case 0...50:
            aqiLabel.backgroundColor = .systemGreen
            impactBodyLabel.text = "空氣品質令人滿意，基本無空氣污染"
            adviceBodyLabel.text = "各類人群可正常活動"
        case 51...100:
            aqiLabel.backgroundColor = .systemYellow
            impactBodyLabel.text = "空氣品質可接受，但某些污染物可能對極少數異常敏感人群健康有較弱影響"
            adviceBodyLabel.text = "極少數異常敏感人群應減少戶外活動"
        case 101...150:
            aqiLabel.backgroundColor = .systemOrange
            impactBodyLabel.text = "易感人群症狀有輕度加劇，健康人群出現刺激症狀"
            adviceBodyLabel.text = "兒童、老年人及心臟病、呼吸系統疾病患者應避免長時間、高強度的戶外鍛鍊，一般人群適量減少戶外運動"
        case 151...200:
            aqiLabel.backgroundColor = .systemRed
            impactBodyLabel.text = "進一步加劇易感人群症狀，可能對健康人群心臟、呼吸系統有影響"
            adviceBodyLabel.text = "兒童、老年人及心臟病、呼吸系統疾病患者應避免長時間、高強度的戶外鍛鍊，一般人群適量減少戶外運動"
        case 201...300:
            aqiLabel.backgroundColor = .systemPurple
            impactBodyLabel.text = "心臟病和肺病患者症狀顯著加劇，運動耐受力降低，健康人群普遍出現症狀"
            adviceBodyLabel.text = "兒童、老年人及心臟病、呼吸系統疾病患者應停留在室內，停止戶外活動，一般人群應避免戶外活動"
        case _ where aqi > 300:
            aqiLabel.backgroundColor = UIColor(red: CGFloat(188/255), green: CGFloat(143/255), blue: CGFloat(143/255), alpha: 1)
            impactBodyLabel.text = "健康人群運動耐受力降低，有明顯強烈症狀，提前出現某些疾病"
            adviceBodyLabel.text = "兒童、老年人及心臟病、呼吸系統疾病患者應停留在室內，避免體力消耗，一般人群應避免戶外活動"
        default:
            break
        }
    }


}
