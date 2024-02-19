

let start, end;
let clicks = 0;
function initMap() {
    const map = new google.maps.Map(document.getElementById("map"), {
        zoom: 15,
        center: {lat: 35.66, lng: 139.7},
    });
    const directionsService = new google.maps.DirectionsService();
    const directionsRenderer = new google.maps.DirectionsRenderer();
    directionsRenderer.setMap(map);
    const image = {
        url: "https://developers.google.com/maps/documentation/javascript/examples/full/images/beachflag.png",
        
        size: new google.maps.Size(20, 32),
        
        origin: new google.maps.Point(0, 0),
        
        anchor: new google.maps.Point(0, 32),
      };
      
      
      
    const shape = {
    coords: [1, 1, 1, 20, 18, 20, 18, 1],
    type: "poly",
    };
    map.addListener("click", (e) => {
        clicks++;
        if (clicks === 1) {
            start = e.latLng;
            // start地点にマーカーを表示
            new google.maps.Marker({
                position: start,
                map: map,
            });
        } else if (clicks === 2) {
            end = e.latLng;
            clicks = 0;
            // end地点にendマーカーを表示
            new google.maps.Marker({
                position: end,
                map: map,
                icon: image,
                shape: shape,
            });
            calculateAndDisplayRoute(directionsService, directionsRenderer, start, end);

        }
    }
    );
    // 追加
    
}
function calculateAndDisplayRoute(directionsService, directionsRenderer, start, end) {
    const num = 10;
    directionsService.route(
        {
            origin: start,
            destination: end,
            travelMode: google.maps.TravelMode.DRIVING,
        },
        (response, status) => {
            if (status === 'OK'){
                directionsRenderer.setDirections(response);
                // startからendまでの10地点を取得しリストに格納
                const route = response.routes[0].overview_path;
                
                const step = Math.floor(route.length / num);
                const markers = [];
                for (let i = 0; i < route.length; i += step) {
                    markers.push({
                        location: route[i],
                    });
                    
                }
                // num地点のstreetviewを地図の下に順に表示
                const sv = new google.maps.StreetViewService();
                markers.forEach((marker, index) => {
                    setTimeout(() => {
                        sv.getPanorama({location: marker.location, radius: 50}, (data, status) => {
                            if (status === "OK") {
                                const panorama = new google.maps.StreetViewPanorama(
                                    document.getElementById("pano")
                                );
                                panorama.setPano(data.location.pano);
                                panorama.setPov({
                                    heading: 270,
                                    pitch: 0,
                                });
                                panorama.setVisible(true);
                            }
                        });
                    }, index * 3000);
                });
               
                
            }
        }
    );
}