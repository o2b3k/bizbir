import 'models/job.dart';

// List<JobModel> jobList = [
//   JobModel(
//     description:
//         "Переводит научную, техническую, общественно-политическую, экономическую и другую специальную литературу, патентные описания, нормативно-техническую и товаросопроводительную документацию, материалы переписки с зарубежными организациями, а также материалы конференций, совещаний, семинаров и т.п. Выполняет в установленные сроки устные и письменные, полные и сокращенные переводы, обеспечивая при этом точное соответствие переводов лексическому, стилистическому и смысловому содержанию оригиналов, соблюдение установленных требований в отношении научных и технических терминов и определений.",
//     iconUrl:
//         "https://upload.wikimedia.org/wikipedia/commons/0/05/Facebook_Logo_%282019%29.png",
//     location: "Austin, TX",
//     title: "Переводчик",
//     salary: "24470 сом",
//     photos: [
//       "https://cdn.pixabay.com/photo/2015/04/20/13/17/work-731198_960_720.jpg",
//       "https://cdn.pixabay.com/photo/2017/07/31/11/31/laptop-2557468_960_720.jpg",
//       "https://cdn.pixabay.com/photo/2017/07/31/11/46/laptop-2557586_960_720.jpg",
//       "https://cdn.pixabay.com/photo/2015/05/28/14/38/ux-787980_960_720.jpg",
//     ],
//   ),
//   JobModel(
//     description:
//         "Консультанция граждан по правовым вопросам социальной сферы и по правам людей с инвалидностью; проведение лекториев по теме защиты прав людей с инвалидностью на площадках",
//     iconUrl:
//         "https://upload.wikimedia.org/wikipedia/commons/0/05/Facebook_Logo_%282019%29.png",
//     location: "Company, San Francisco, CA",
//     title: "Юрист",
//     salary: "30000 сом",
//     photos: [
//       "https://cdn.pixabay.com/photo/2015/04/20/13/17/work-731198_960_720.jpg",
//       "https://cdn.pixabay.com/photo/2017/07/31/11/31/laptop-2557468_960_720.jpg",
//       "https://cdn.pixabay.com/photo/2017/07/31/11/46/laptop-2557586_960_720.jpg",
//       "https://cdn.pixabay.com/photo/2015/05/28/14/38/ux-787980_960_720.jpg",
//     ],
//   ),
//   JobModel(
//     description:
//         "Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum culpa ab vitae, totam voluptatum laudantium excepturi accusantium, incidunt sunt quos nihil, odit consequuntur non modi vel veniam. Eligendi, dicta? Eius.",
//     iconUrl:
//         "https://upload.wikimedia.org/wikipedia/commons/0/05/Facebook_Logo_%282019%29.png",
//     location: "Company, San Francisco, CA",
//     title: "Backend Developer",
//     salary: "\$170,000 - 230,000\$",
//     photos: [
//       "https://cdn.pixabay.com/photo/2015/04/20/13/17/work-731198_960_720.jpg",
//       "https://cdn.pixabay.com/photo/2017/07/31/11/31/laptop-2557468_960_720.jpg",
//       "https://cdn.pixabay.com/photo/2017/07/31/11/46/laptop-2557586_960_720.jpg",
//       "https://cdn.pixabay.com/photo/2015/05/28/14/38/ux-787980_960_720.jpg",
//     ],
//   ),
//   JobModel(
//     description:
//         "Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum culpa ab vitae, totam voluptatum laudantium excepturi accusantium, incidunt sunt quos nihil, odit consequuntur non modi vel veniam. Eligendi, dicta? Eius.",
//     iconUrl:
//         "https://upload.wikimedia.org/wikipedia/commons/0/05/Facebook_Logo_%282019%29.png",
//     location: "Company, San Francisco, CA",
//     title: "Web Designer",
//     salary: "\$30,000 - 60,000\$",
//     photos: [
//       "https://cdn.pixabay.com/photo/2015/04/20/13/17/work-731198_960_720.jpg",
//       "https://cdn.pixabay.com/photo/2017/07/31/11/31/laptop-2557468_960_720.jpg",
//       "https://cdn.pixabay.com/photo/2017/07/31/11/46/laptop-2557586_960_720.jpg",
//       "https://cdn.pixabay.com/photo/2015/05/28/14/38/ux-787980_960_720.jpg",
//     ],
//   ),
//   JobModel(
//     description:
//         "Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum culpa ab vitae, totam voluptatum laudantium excepturi accusantium, incidunt sunt quos nihil, odit consequuntur non modi vel veniam. Eligendi, dicta? Eius.",
//     iconUrl:
//         "https://upload.wikimedia.org/wikipedia/commons/0/05/Facebook_Logo_%282019%29.png",
//     location: "Company, Austin, TX",
//     title: "AI Developer",
//     salary: "\$120,000 - 160,000\$",
//     photos: [
//       "https://cdn.pixabay.com/photo/2015/04/20/13/17/work-731198_960_720.jpg",
//       "https://cdn.pixabay.com/photo/2017/07/31/11/31/laptop-2557468_960_720.jpg",
//       "https://cdn.pixabay.com/photo/2017/07/31/11/46/laptop-2557586_960_720.jpg",
//       "https://cdn.pixabay.com/photo/2015/05/28/14/38/ux-787980_960_720.jpg",
//     ],
//   ),
// ];
