//
//  MapViewController.swift
//  brewsCruise
//
//  Created by Bryan Moore on 7/2/18.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    //MapView Stuff
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // set initial location in Honolulu
        let initialLocation = CLLocation(latitude: 48.7519, longitude: -122.4787)
        
        //Centering the map in Bellingham
        centerMapOnLocation(location: initialLocation)
        
        //Used for detailed annotations
        mapView.delegate = self
        
        //Showing specific 'artwork' on the map
        //Schweinhaus
        let schweinhaus = Artwork(title: "Schweinhaus",
                              locationName: "1330 N State St",
                              discipline: "Sculpture",
                              coordinate: CLLocationCoordinate2D(latitude: 48.749101, longitude: -122.4755023))
        mapView.addAnnotation(schweinhaus)
        
        //Aslan
        let aslan = Artwork(title: "Aslan Brewery",
                                  locationName: "1330 N State St",
                                  discipline: "Sculpture",
                                  coordinate: CLLocationCoordinate2D(latitude: 48.7484, longitude: -122.4745))
        mapView.addAnnotation(aslan)
        
        //Boundary Bay
        let boundarybay = Artwork(title: "Boundary Bay",
                            locationName: "1330 N State St",
                            discipline: "Sculpture",
                            coordinate: CLLocationCoordinate2D(latitude: 48.7476, longitude: -122.4809))
        mapView.addAnnotation(boundarybay)
        
        //Chuckanut Brewery
        let chuckanut = Artwork(title: "Chuckanut Brewery",
                                  locationName: "601 W Holly St",
                                  discipline: "Sculpture",
                                  coordinate: CLLocationCoordinate2D(latitude: 48.7533, longitude: -122.4851))
        mapView.addAnnotation(chuckanut)
        
        //Gruff Brewing
        let gruff = Artwork(title: "Gruff Brewing",
                            locationName: "104 E Maple St #101",
                                discipline: "Sculpture",
                                coordinate: CLLocationCoordinate2D(latitude: 48.7473, longitude: -122.4821))
        mapView.addAnnotation(gruff)
        
        //Illuminati Brewing
        let illuminati = Artwork(title: "Illuminati Brewing",
                            locationName: "3950 Hammer Dr.",
                            discipline: "Sculpture",
                            coordinate: CLLocationCoordinate2D(latitude: 48.7839, longitude: -122.4554))
        mapView.addAnnotation(illuminati)
        
        //Kulshan Brewing
        let kulshan = Artwork(title: "Kulshan Brewing",
                                 locationName: "2238 James St",
                                 discipline: "Sculpture",
                                 coordinate: CLLocationCoordinate2D(latitude: 48.7574, longitude: -122.4536))
        mapView.addAnnotation(kulshan)
        
        //Menace Brewing
        let menace = Artwork(title: "Menace Brewing",
                              locationName: "2529 Meridian St",
                              discipline: "Sculpture",
                              coordinate: CLLocationCoordinate2D(latitude: 48.7643, longitude: -122.4864))
        mapView.addAnnotation(menace)
        
        //Stones Throw Brewing
        let stonesthrow = Artwork(title: "Stones Throw Brewing",
                             locationName: "1009 Larabee Ave",
                             discipline: "Sculpture",
                             coordinate: CLLocationCoordinate2D(latitude: 48.7187, longitude: -122.5039))
        mapView.addAnnotation(stonesthrow)
        
        //Structures Brewing
        let structures = Artwork(title: "Structures Brewing",
                                  locationName: "1420 N State St",
                                  discipline: "Sculpture",
                                  coordinate: CLLocationCoordinate2D(latitude: 48.7499, longitude: -122.4744))
        mapView.addAnnotation(structures)
        
        //Wander Brewing
        let wander = Artwork(title: "Wander Brewing",
                                 locationName: "1807 Dean Ave",
                                 discipline: "Sculpture",
                                 coordinate: CLLocationCoordinate2D(latitude: 48.7543, longitude: -122.4741))
        mapView.addAnnotation(wander)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Function used for the zoom level on the map.
    let regionRadius: CLLocationDistance = 5000
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
                                                                  regionRadius, regionRadius)
        mapView.setRegion(coordinateRegion, animated: true)
    }


}

extension MapViewController: MKMapViewDelegate {
    // 1
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        // 2
        guard let annotation = annotation as? Artwork else { return nil }
        // 3
        let identifier = "marker"
        var view: MKMarkerAnnotationView
        // 4
        if let dequeuedView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier)
            as? MKMarkerAnnotationView {
            dequeuedView.annotation = annotation
            view = dequeuedView
        } else {
            // 5
            view = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: identifier)
            view.canShowCallout = true
            view.calloutOffset = CGPoint(x: -5, y: 5)
            view.rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
        }
        return view
    }
    
    func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView,
                 calloutAccessoryControlTapped control: UIControl) {
        let location = view.annotation as! Artwork
        let launchOptions = [MKLaunchOptionsDirectionsModeKey: MKLaunchOptionsDirectionsModeDriving]
        location.mapItem().openInMaps(launchOptions: launchOptions)
    }
}
