import './disease.dart';

class Corn {
  static var diseases = [
    new Disease(
        name: 'Corn Cercospora (Gray leaf spot)',
        code: 'Corn_(maize)___Cercospora_leaf_spot Gray_leaf_spot',
        image: 'Assets/img/corn/Cron_Cercospora_leaf_spot_gray_leaf_spot.JPG',
        desc:
            'Grey leaf spot (GLS) is a foliar fungal disease that affects maize, also known as corn. There are two fungal pathogens that cause GLS, which are Cercospora zeae-maydis and Cercospora zeina . Symptoms seen on corn include leaf lesions, discoloration (chlorosis), and foliar blight.',
        solution: [
          'Crop rotation away from corn can reduce disease pressure, but multiple years may be necessary in no-till scenarios.',
          'Planting hybrids with a high level of genetic resistance can help reduce the risk of yield loss due to gray leaf spot infection.',
        ]),
    new Disease(
        name: 'Corn common rust',
        code: 'Corn_(maize)___Common_rust_',
        image: 'Assets/img/corn/cron_common_rust.JPG',
        desc:
            'common rust of corn (Puccinia sorghi) P. sorghi is characterized by the presence of golden-brown to cinnamon-brown pustules (uredinial) that can develop on any above-ground plant part including leaves, husks, tassels and stalks.',
        solution: [
          'Scout corn to detect common rust early.',
          'Monitor disease development, crop growth stage and weather forecast.',
          'Apply a foliar fungicide if rust is spreading rapidly or likely to spread and yield may be affected.',
        ]),
  ];

  Disease getDisease(String code) {
    return diseases.firstWhere((d) => d.code == code);
  }
}
