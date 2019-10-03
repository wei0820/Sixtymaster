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
    
    @IBOutlet weak var mapview: MGLMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        let mapView = MGLMapView(frame: view.bounds)
        mapview.setCenter(CLLocationCoordinate2DMake(mapview.latitude, mapview.longitude), animated: false)
        mapview.zoomLevel = 13
        //        mapView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        //        mapview.setCenter(CLLocationCoordinate2D(latitude: mapView.latitude, longitude:mapView.longitude), zoomLevel: 9, animated: false)
        view.addSubview(mapview)
        mapview.styleURL = MGLStyle.streetsStyleURL

        
        
        
        // Set the map view's delegate
        mapview.delegate = self
        
        // Allow the map view to display the user's location
        mapview.showsUserLocation = true
        // Do any additional setup after loading the view.
        
        
    }
    func mapViewDidFinishLoadingMap(_ mapView: MGLMapView) {
        mapView.setCenter((mapView.userLocation?.coordinate)!, animated: false)
    }
    func mapView(_ mapView: MGLMapView, annotationCanShowCallout annotation: MGLAnnotation) -> Bool {
        // Always allow callouts to popup when annotations are tapped.
        
        return true
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
        style.localizeLabels(into: nil)
        // Into Simplified Chinese
        style.localizeLabels(into: Locale(identifier: "zh-Tw"))
        // Into the local language where a given feature is located
        style.localizeLabels(into: Locale(identifier: "mul"))
  
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
            break
            
        }
    }
    
}
