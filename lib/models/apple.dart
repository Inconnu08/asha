import './disease.dart';

class Apple {
  static var diseases = [
    new Disease(
        name: 'Apple scab',
        image: 'Assets/img/apple/apple_scab.JPG',
        desc:
            'Apple scab is a disease of Malus trees, such as apple trees, caused by the ascomycete fungus Venturia inaequalis. The disease manifests as dull black or grey-brown lesions on the surface of tree leaves, buds or fruits. Lesions may also appear less frequently on the woody tissues of the tree.',
        solution: [
          'Choose resistant varieties when possible.',
          'Rake under trees and destroy infected leaves to reduce the number of fungal spores available to start the disease cycle over again next spring.',
          'Water in the evening or early morning hours (avoid overhead irrigation) to give the leaves time to dry out before infection can occur.',
          'During the winter, check for red cankers and remove them by cutting them out or pruning away the affected limbs at least six inches beyond the wound.',
          'Destroy all infected tissue immediately and keep a watchful eye out for new signs of infection.',
        ]),
    new Disease(
        name: 'Apple Black rot',
        image: 'Assets/img/apple/apple_black rot.JPG',
        desc:
            'Black rot is a disease of apples that infects fruit, leaves and bark caused by the fungus Botryosphaeria obtusa. It can also jump to healthy tissue on pear or quince trees, but is typically a secondary fungus of weak or dead tissues in other plants.',
        solution: [
          'Treating black rot on apple trees starts with sanitation. Because fungal spores overwinter on fallen leaves, mummified fruits, dead bark and cankers, it’s important to keep all the fallen debris and dead fruit cleaned up and away from the tree.',
          'During the winter, check for red cankers and remove them by cutting them out or pruning away the affected limbs at least six inches beyond the wound.',
          'Destroy all infected tissue immediately and keep a watchful eye out for new signs of infection.',
        ]),
    new Disease(
        name: 'Apple cedar rust',
        image: 'Assets/img/apple/apple_cedar_rust.JPG',
        desc:
            'Gymnosporangium juniperi-virginianae is a plant pathogen that causes cedar-apple rust. In virtually any location where apples or crabapples and Eastern red-cedar coexist, cedar apple rust can be a destructive or disfiguring disease on both the apples and cedars.',
        solution: [
          'Choose resistant cultivars when available.',
          'Rake up and dispose of fallen leaves and other debris from under trees.',
          'Remove galls from infected junipers. In some cases, juniper plants should be removed entirely.',
          'Rake up and dispose of fallen leaves and other debris from under trees.',
          'Apply preventative, disease-fighting fungicides labeled for use on apples weekly, starting with bud break, to protect trees from spores being released by the juniper host. This occurs only once per year, so additional applications after this springtime spread are not necessary.',
          'On juniper, rust can be controlled by spraying plants with a copper solution (0.5 to 2.0 oz/ gallon of water) at least four times between late August and late October.',
          'Safely treat most fungal and bacterial diseases with SERENADE Garden. This broad spectrum bio-fungicide uses a patented strain of Bacillus subtilis that is registered for organic use. Best of all, SERENADE is completely non-toxic to honey bees and beneficial insects.',
        ]),
  ];
}
