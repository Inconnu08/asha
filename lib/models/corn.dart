import './disease.dart';

class Corn {
  static var diseases = [
    new Disease(
        name: 'Corn Cercospora (Gray leaf spot)',
        code: 'Corn_(maize)___Cercospora_leaf_spot Gray_leaf_spot',
        image: 'Assets/img/tomato/Tomatomosaicvirus.jpg',
        desc:
            'Grey leaf spot (GLS) is a foliar fungal disease that affects maize, also known as corn. There are two fungal pathogens that cause GLS, which are Cercospora zeae-maydis and Cercospora zeina . Symptoms seen on corn include leaf lesions, discoloration (chlorosis), and foliar blight.',
        solution: [
          'Crop rotation away from corn can reduce disease pressure, but multiple years may be necessary in no-till scenarios.',
          'Planting hybrids with a high level of genetic resistance can help reduce the risk of yield loss due to gray leaf spot infection.',
        ]),
    new Disease(
        name: 'Corn common rust',
        code: 'Corn_(maize)___Common_rust_',
        image: 'Assets/img/tomato/Tomatomosaicvirus.jpg',
        desc:
            'common rust of corn (Puccinia sorghi) P. sorghi is characterized by the presence of golden-brown to cinnamon-brown pustules (uredinial) that can develop on any above-ground plant part including leaves, husks, tassels and stalks.',
        solution: [
          'Scout corn to detect common rust early.',
          'Monitor disease development, crop growth stage and weather forecast.',
          'Apply a foliar fungicide if rust is spreading rapidly or likely to spread and yield may be affected.',
        ]),
    // new Disease(
    //     name: 'Apple cedar rust',
    //     image: 'Assets/img/tomato/Tomatomosaicvirus.jpg',
    //     desc:
    //         'Gymnosporangium juniperi-virginianae is a plant pathogen that causes cedar-apple rust. In virtually any location where apples or crabapples and Eastern red-cedar coexist, cedar apple rust can be a destructive or disfiguring disease on both the apples and cedars.',
    //     solution: [
    //       'Choose resistant cultivars when available.',
    //       'Rake up and dispose of fallen leaves and other debris from under trees.',
    //       'Remove galls from infected junipers. In some cases, juniper plants should be removed entirely.',
    //       'Rake up and dispose of fallen leaves and other debris from under trees.',
    //       'Apply preventative, disease-fighting fungicides labeled for use on apples weekly, starting with bud break, to protect trees from spores being released by the juniper host. This occurs only once per year, so additional applications after this springtime spread are not necessary.',
    //       'On juniper, rust can be controlled by spraying plants with a copper solution (0.5 to 2.0 oz/ gallon of water) at least four times between late August and late October.',
    //       'Safely treat most fungal and bacterial diseases with SERENADE Garden. This broad spectrum bio-fungicide uses a patented strain of Bacillus subtilis that is registered for organic use. Best of all, SERENADE is completely non-toxic to honey bees and beneficial insects.',
    //     ]),
  ];
}
