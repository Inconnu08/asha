import './disease.dart';

class Potato {
  static var diseases = [
    new Disease(
        name: 'Potato Early Blight',
        code: 'Potato___Early_blight',
        image: 'Assets/img/potato/potato_Early_Blight.JPG',
        desc:
            'Early blight (EB) is a disease of potato caused by the fungus Alternaria solani. It is found wherever potatoes are grown. The disease primarily affects leaves and stems, but under favorable weather conditions, and if left uncontrolled, can result in considerable defoliation and enhance the chance for tuber infection. Premature defoliation may lead to considerable reduction in yield. The disease can also be severe on tomatoes, and can occur on other solanaceous crops and weeds',
        solution: [
          'The following measures will help prevent the occurrence of serious EB outbreaks, (1) Plant only diseasefree, certified seed. ',
          'Follow a complete and regular foliar fungicide spray program. ',
          'Practice good killing techniques to lessen tuber infections. ',
          'Allow tubers to mature before digging, dig when vines are dry, not wet, and avoid excessive wounding of potatoes during harvesting and handling.',
          'Plow underall plant debris and volunteer potatoes after harvest. ',
          'Although no cultivar is immune to EB, several cultivars are moderately resistant and should be planted if blight is a continuing problem.'
        ]),
    new Disease(
        name: 'Potato Late Blight',
        code: 'Potato___Late_blight',
        image: 'Assets/img/Potato/Potato_Late_Blight.JPG',
        desc:
            'Phytophthora infestans is an oomycete or water mold, a microorganism that causes the serious potato and tomato disease known as late blight or potato blight. Late blight was a major culprit 1846 Highland potato famines. Which somehow affected the plants in Bangladesh. It is a world wide phenomena.',
        solution: [
          'Practices, which are usually applied for agriculture purposes not directly connected with crop protection, such as fertilization and irrigation. They may or may not have a positive or a negative side effect on disease incidence or severity.',
          'Practices that are used completely for disease control, such as sanitation and flooding.',
          'Practices, which are used for both agricultural purposes and for disease control, such as crop rotation, grafting and composting . Late blight of potato can be managed up to some extent using cultural practices. The infected potato tubers are the primary source of inoculums for causing initial infection of late blight.',
        ]),
  ];

  Disease getDisease(String code) {
    return diseases.firstWhere((d) => d.code == code);
  }
}
