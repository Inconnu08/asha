import './disease.dart';

class Grapes {
  static var diseases = [
    new Disease(
        name: 'Grape Black rot',
        code: 'Grape___Black_rot',
        image: 'Assets/img/apple/apple_scab.JPG',
        desc:
            'Black rot (Guignardia bidwellii (Ellis)) is a potentially devastating fungal disease that can infect the leaves, shoots, berries and cluster stems of grapes. Susceptibility to black rot varies greatly by variety, but it can be a concern whether the grape is an American, French Hybrid or vinifera variety. Black rot is considered to be the bane of organic grape growers due to the limited materials that are available for its control as well as the devastating crop losses that can occur due to berry infections. Complete crop loss can occur in warm, humid climates.',
        solution: [
          'Look for characteristic dark circles on the leaves, dark raisin-like berries and lesions on the leaves and shoots of the grapes to confirm it is black rot. Before you can begin curing the rot, you must diagnose that what you are dealing with is in fact black rot.',
          'Cut off the obviously affected parts of the grape vine with a sterile knife. Remove all spotted leaves and the black, mummified grapes. Be extremely thorough and make sure you remove all parts of the plant that are affected by the black rot.',
          'Place fans in the growing area to keep the plants dry. This will help prevent the rot from spreading to other sections of the plant and will help dry out the newly cut parts of the plant. Black rot is quite contagious and is easily spread by water dripping from one affected part of the plant to another. Drying the plants as quickly as possible after watering or rainfall helps keep the disease in check.',
          'Apply a paste of cinnamon mixed with cooking oil to the remaining tissues of the plant. This paste -- when applied to the newly cut sections of the plant -- seals the wound and keeps it dry.',
          'Apply a fungicide, such as myclobutanil or captan according to the directions on the label.',
          'Re-apply the fungicide at two-week intervals until the black rot has been cured. In the meantime, carefully examine the plant and use a sterile knife to remove any additional affected areas. Apply the fungicide paste to the new cuts to help them heal.'
        ]),
    new Disease(
        name: 'Grape Esca',
        code: 'Grape___Esca_(Black_Measles)',
        desc:
            'Grapevine measles, also called esca, black measles or Spanish measles, has long plagued grape growers with its cryptic expression of symptoms and, for a long time, a lack of identifiable causal organisms. The name ‘measles’ refers to the superficial spots found on the fruit. During the season, the spots may coalesce over the skin surface, making berries black in appearance. Spotting can develop anytime between fruit set and a few days prior to harvest. Berries affected at fruit set tend not to mature and will shrivel and dry up. In addition to spotting, fruit affected later in the season will also have an acrid taste. ',
        image: 'Assets/img/apple/apple_scab.JPG',
        solution: [
          'Presently, there are no effective management strategies for measles. Wine grape growers with small vineyards will often have field crews remove infected fruit prior to harvest. Raisins affected by measles will be discarded during harvest or at the packing house, while table grape growers will leave affected fruit on the vine. Current research is focused on protecting pruning wounds from fungal infections to minimize suspect fungi from colonizing fresh wounds.',
        ]),
    new Disease(
        name: 'Grape Leaf Blight',
        code: 'Grape Leaf blight (Isariopsis Leaf Spot)',
        desc:
            'Symptoms of this disease are frequently confused with those of powdery mildew. Infected leaves develop pale yellow-green lesions which gradually turn brown. Severely infected leaves often drop prematurely. Infected petioles, tendrils, and shoots often curl, develop a shepherd\'s crook, and eventually turn brown and die. Young berries are highly susceptible to infection and are often covered with white fruiting structures of the fungus. Infected older berries of white cultivars may turn dull gray-green, whereas those of black cultivars turn pinkish red.',
        image: 'Assets/img/apple/apple_scab.JPG',
        solution: [
          'Examine your grapevines and grapes for signs of fungal disease. Symptoms of downy mildew include yellow blotches on top of the grape leaves and off-white blotches of fungus on the underside of the leaves. Gray mold exhibits fuzzy gray mold on the grapes, especially when the humidity is high. Powdery mildew evidences itself with purple or gray leaf discoloration, rotted fruit, powdery growths on stems, fruit and leaves and split fruit.',
          'Combine one part whole milk to nine parts water, mix well and transfer to a spray bottle to begin organic treatment for downy mildew. Lightly spray the grapevines and leaves twice a week to control the fungus. You can also spray the vines and leaves at 14- to 21-day intervals with an organic, commercially available sulfur-based fungicide to control the fungus. Apply the following fungicides, commonly available at home and garden centers, according to manufacturer’s instructions to chemically treat downy mildew: thiophanate-methyl, triadimefon, propiconazole, potassium bicarbonate or triforine.',
          'Cover the ground with plastic sheeting to start treatment for gray mold. The sheeting serves as a barrier against reinfection, as it prevents the mold from surviving in the soil. Spray your grapevines and leaves with copper-based fungicides, thiophanate-methyl or carbendazim, available at home and garden centers, to treat the fungus. Apply the fungicide per manufacturer’s instructions.',
          'Mix 1 tablespoon of baking soda, 2 1/2 tablespoons of lightweight horticultural oil and 1 gallon of water, mix well, transfer to a spray bottle and apply to the tops of the leaves and vines to control and treat powdery mildew. You can also apply neem oil or potassium bicarbonate to the leaves and vines to control powdery mildew. Although the aforementioned fungicides commonly need applied every five to seven days, always refer to the manufacturer’s instructions for guidance.',
        ]),
  ];

  Disease getDisease(String code) {
    return diseases.firstWhere((d) => d.code == code);
  }
}
