import './disease.dart';

class Tomato {
  static var diseases = [
    new Disease(
        name: 'Tomato mosaic virus',
        code: 'Tomato___Tomato_mosaic_virus',
        image: 'Assets/img/tomato/Tomatomosaicvirus.jpg',
        desc:
            'Tomato mosaic virus is a serious and extremely contagious disease. It is also hard to identify, with symptoms varying wildly depending upon the variety and age of the infected plant, the strain of the virus, and environmental conditions. To make matters worse, it is very hard to distinguish from the closely related tobacco mosaic virus.',
        solution: [
          'Fungicides will NOT treat this viral disease.',
          'Do NOT save seed from infected crops.',
          'Spot treat with least-toxic, natural pest control products to reduce the number of disease carrying insects.',
          'Remove all perennial weeds, using least-toxic herbicides, within 100 yards of your garden plot.',
          'The virus can be spread through human activity, tools and equipment. Frequently wash your hands and disinfect garden tools, stakes, ties, pots, greenhouse benches, etc. (one part bleach to 4 parts water) to reduce the risk of contamination.',
          'Avoid working in the garden during damp conditions (viruses are easily spread when plants are wet).',
          'Avoid using tobacco around susceptible plants. Cigarettes and other tobacco products may be infected and can spread the virus.',
          'Remove and destroy all infected plants. Do NOT compost.'
        ]),
    new Disease(
        name: 'Tomato yellow leaf curl',
        code: 'Tomato___Tomato_Yellow_Leaf_Curl_Virus',
        image: 'Assets/img/tomato/Tomatomosaicvirus.jpg',
        desc:
            'Tomato yellow leaf curl is a disease of tomato where infected tomato plants initially show stunted and erect or upright plant growth; plants infected at an early stage of growth will show severe stunting. However, the most diagnostic symptoms are those in leaves. Leaves of infected plants are small and curl upward; and show strong crumpling and interveinal and marginal yellowing. The internodes of infected plants become shortened and, together with the stunted growth, plants often take on a bushy appearance, which is sometimes referred to as bonsai or broccoli-like growth. Flowers formed on infected plants commonly do not develop and fall off (abscise). Fruit production is dramatically reduced, particularly when plants are infected at an early age, and it is not uncommon for losses of 100% to be experienced in fields with heavily infected plants.',
        solution: [
          'Use only virus-and whitefly-free tomato and pepper transplants. Transplants should be treated with capture (bifenthrin) or Venom (dinotefuran) for whitefly adults and Oberon for eggs and nymphs. Imidacloprid or thiamethoxam should be used in transplant houses at least seven days before shipping.',
        ]),
    new Disease(
        name: 'Tomato target spot',
        code: 'Tomato___Target_Spot',
        image: 'Assets/img/tomato/Tomatomosaicvirus.jpg',
        desc:
            'The disease starts on the older leaves and spreads upwards. The first signs are irregular-shaped spots (less than 1 mm) with a yellow margin. Some of the spots enlarge up to 10 mm and show characteristics rings, hence the name of "target spot". Spread to all leaflets and to other leaves is rapid, causing the leaves to turn yellow, collapse and die. Spots also occur on the stems. They are long and thin. Small light brown spots with dark margins may also occur on the fruit. The spores are spread by wind-blown rain, and if windy wet weather continues for a few days, spread is fast and plants lose their leaves quickly. The fungus causes plants to lose their leaves; it is a major disease. If infection occurs before the fruit has developed, yields are low. This is a common disease on tomato in Pacific island countries. The disease occurs in the screen house and in the field.',
        solution: [
          'Do not plant new crops next to older ones that have the disease.',
          'Plant as far as possible from papaya, especially if leaves have small angular spots.',
          'Check all seedlings in the nursery, and throw away any with leaf spots.',
          'Remove a few branches from the lower part of the plants to allow better airflow at the base',
          'Remove and burn the lower leaves as soon as the disease is seen, especially after the lower fruit trusses have been picked.',
          'Keep plots free from weeds, as some may be hosts of the fungus.',
          'Do not use overhead irrigation; otherwise, it will create conditions for spore production and infection.',
          'Collect and burn as much of the crop as possible when the harvest is complete.',
          'Practice crop rotation, leaving 3 years before replanting tomato on the same land.'
        ]),
    new Disease(
        name: 'Spider mites on tomato plants',
        code: 'Tomato___Spider_mites Two-spotted_spider_mite',
        image: 'Assets/img/tomato/Tomatomosaicvirus.jpg',
        desc:
            'Spider mites are very little arachnids that are difficult to see without a magnifying glass unless they have multiplied so much as to be in colonies. When spider mites invade your tomato plants, they inflict small wounds on the plants that can eventually harm or kill them. The mites feed on the plant\'s sap, working from the bottom of the plant to the top, and on the underside of the plant\'s leaves. There is no particular season in which the mites are more prevalent; they are active all year. In addition, they change colors depending on their life stage, which makes them even more difficult to find when they are white or blend with the color of your plants. Keeping your tomato plants healthy and prevent infestation of spider mites takes regular attention and vigilant application of various control methods.',
        solution: [
          'Use natural predators such as those that feed on spider mites. It is important that you introduce them before there is a large infestation, so that they can adequately control it.',
          'Pick off any mites or eggs by hand. Destroy them by squishing or drowning. This works with only very mild cases of infestation.',
          'Spray plants using a stream of water to knock mites off the underside of leaves. Be careful to not spray them onto another plant.',
          'Spray hot pepper wax onto leaves (underside) to kill the mites. Repeat this application every few days. The spray will not destroy eggs so you must continue to apply to kill all the hatched mites.',
        ]),
  ];

    Disease getDisease(String code) {
    return diseases.firstWhere((d) => d.code == code);
  }
}

