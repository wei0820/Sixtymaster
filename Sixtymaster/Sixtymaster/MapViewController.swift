//
//  MapViewController.swift
//  Sixtymaster
//
//  Created by oneplay on 2019/10/3.
//  Copyright © 2019 jackpan. All rights reserved.
//

import UIKit
import Mapbox
class MapViewController: UIViewController, MGLMapViewDelegate,UITabBarDelegate {
    let userDefaults = UserDefaults.standard

    @IBOutlet weak var mapview: MGLMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        mapview.setCenter(CLLocationCoordinate2DMake(25.034815, 121.564392), animated: false)
        mapview.zoomLevel = 15
        mapview.styleURL = MGLStyle.streetsStyleURL
        mapview.delegate = self
        mapview.showsUserLocation = true
        addMarker(latitude: 25.054632, longitude: 121.533446, title: "長春路四面佛", subtitle: "很靈驗！")

        
        
    }
    @IBAction func mLoacrionBtn(_ sender: Any) {
      
        mapview.setCenter((mapview.userLocation?.coordinate)!, animated: false)
        var lat  : Double = mapview.userLocation?.coordinate.latitude ?? 0.0
        var lon :Double =   mapview.userLocation?.coordinate.longitude ?? 0.0

        mapview.setCenter(CLLocationCoordinate2DMake(lat, lon), animated: false)
             mapview.zoomLevel = 15

    }
    func mapViewDidFinishLoadingMap(_ mapView: MGLMapView) {
        if(mapView.userLocation == nil && mapView.userLocation?.coordinate == nil){
            mapview.setCenter(CLLocationCoordinate2DMake(25.034815, 121.564392), animated: false)

        }else{
            mapView.setCenter((mapView.userLocation?.coordinate)!, animated: false)

        }
    }
  
    func mapView(_ mapView: MGLMapView, didSelect annotation: MGLAnnotation) {
        let camera = MGLMapCamera(lookingAtCenter: mapView.centerCoordinate, altitude: 4500, pitch: 15, heading: 180)
        
        // Animate the camera movement over 5 seconds.
        mapView.setCamera(camera, withDuration: 5, animationTimingFunction: CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut))
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    func mapView(_ mapView: MGLMapView, didFinishLoading style: MGLStyle) {
        style.localizeLabels(into: Locale(identifier: "zh-Tw"))
        // Into the local language where a given feature is located
    }
    @IBOutlet weak var tabBar: UITabBar!
    
    @IBOutlet weak var homeItem: UITabBarItem!
    
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        switch item.tag {
        case 1:
            let stroyboard = UIStoryboard(name: "Main", bundle: nil);
            let HomeVc = stroyboard.instantiateViewController(withIdentifier: "home")
            let appDelegate = UIApplication.shared.delegate as! AppDelegate;
            appDelegate.window?.rootViewController = HomeVc
            break
        default:
            if((userDefaults.value(forKey: "userID")) != nil){
                let controller = UIAlertController(title: "訪客身份", message: "請先登入在使用！", preferredStyle: .alert)
                  let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                  controller.addAction(okAction)
                  present(controller, animated: true, completion: nil)
            }
            break
            
        }
    }
    //latitude: 25.054632, longitude: 121.533446
    func addMarker(latitude:Double,longitude:Double,title:String,subtitle  :String){
        let  hello = MGLPointAnnotation()
        hello.coordinate = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        hello.title = title
        hello.subtitle = subtitle
        // Add marker `hello` to the map.
        mapview.addAnnotation(hello)
    }
    func mapView(_ mapView: MGLMapView, tapOnCalloutFor annotation: MGLAnnotation) {
        print(annotation.title)
   

    }
    func mapView(_ mapView: MGLMapView, annotationCanShowCallout annotation: MGLAnnotation) -> Bool {
          // Always allow callouts to popup when annotations are tapped
          return true
      }
      
}
