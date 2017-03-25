$(document).ready ->
  #https://snazzymaps.com/style/39/paper
  mapStyle = [
    {
      'featureType': 'administrative'
      'elementType': 'all'
      'stylers': [ { 'visibility': 'off' } ]
    }
    {
      'featureType': 'landscape'
      'elementType': 'all'
      'stylers': [
        { 'visibility': 'simplified' }
        { 'hue': '#0066ff' }
        { 'saturation': 74 }
        { 'lightness': 100 }
      ]
    }
    {
      'featureType': 'poi'
      'elementType': 'all'
      'stylers': [ { 'visibility': 'simplified' } ]
    }
    {
      'featureType': 'road'
      'elementType': 'all'
      'stylers': [ { 'visibility': 'simplified' } ]
    }
    {
      'featureType': 'road.highway'
      'elementType': 'all'
      'stylers': [
        { 'visibility': 'off' }
        { 'weight': 0.6 }
        { 'saturation': -85 }
        { 'lightness': 61 }
      ]
    }
    {
      'featureType': 'road.highway'
      'elementType': 'geometry'
      'stylers': [ { 'visibility': 'on' } ]
    }
    {
      'featureType': 'road.arterial'
      'elementType': 'all'
      'stylers': [ { 'visibility': 'off' } ]
    }
    {
      'featureType': 'road.local'
      'elementType': 'all'
      'stylers': [ { 'visibility': 'on' } ]
    }
    {
      'featureType': 'transit'
      'elementType': 'all'
      'stylers': [ { 'visibility': 'simplified' } ]
    }
    {
      'featureType': 'water'
      'elementType': 'all'
      'stylers': [
        { 'visibility': 'simplified' }
        { 'color': '#5f94ff' }
        { 'lightness': 26 }
        { 'gamma': 5.86 }
      ]
    }
  ]
  handler = Gmaps.build('Google')
  handler.buildMap {
    provider: {
      zoom: 20,
      mapTypeId: google.maps.MapTypeId.ROADMAP,
      styles: mapStyle
    },
    internal: id: 'map'
  }, ->
    markers = handler.addMarkers($('#map').data('points'))
    handler.bounds.extendWith markers
    handler.fitMapToBounds()
    return

