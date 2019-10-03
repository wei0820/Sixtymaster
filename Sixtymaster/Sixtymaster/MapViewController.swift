//
//  MapViewController.swift
//  Sixtymaster
//
//  Created by oneplay on 2019/10/3.
//  Copyright © 2019 jackpan. All rights reserved.
//

import UIKit
import Mapbox
class MapViewController: UIViewController, MGLMapViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        let mapView = MGLMapView(frame: view.bounds)
        mapView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        mapView.setCenter(CLLocationCoordinate2D(latitude: mapView.latitude, longitude:mapView.longitude), zoomLevel: 9, animated: false)
        view.addSubview(mapView)
        mapView.styleURL = MGLStyle.streetsStyleURL
 
         
        // Set the map view's delegate
        mapView.delegate = self
         
        // Allow the map view to display the user's location
        mapView.showsUserLocation = true
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
    let camera = MGLMapCamera(lookingAtCenter: annotation.coordinate, fromDistance: 4500, pitch: 15, heading: 180)
    mapView.fly(to: camera, withDuration: 4,
    peakAltitude: 3000, completionHandler: nil)
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

}
