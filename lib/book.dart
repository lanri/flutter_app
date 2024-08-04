class Book {
 String name;
 String image;
 String categoryBook;


 Book({
   required this.name,
   required this.image,
   required this.categoryBook,
 });
}


List<Book> listBook = [
 Book(
     name: 'Redhat',
     image: 'assets/buku-redhat.png',
     categoryBook: 'Sysadmin IDN',),
 Book(
     name: 'Docker',
     image: 'assets/buku-docker.png',
     categoryBook: 'Sysadmin IDN',),
 Book(
     name: 'Hyper-V',
     image: 'assets/buku-hyper-v.png',
     categoryBook: 'Sysadmin IDN',),
 Book(
     name: 'NMS',
     image: 'assets/buku-nms.png',
     categoryBook: 'Sysadmin IDN',),
 Book(
     name: 'VPN',
     image: 'assets/buku-vpn.png',
     categoryBook: 'Network IDN',),
 Book(
     name: 'Openstack',
     image: 'assets/buku-openstack-admin.png',
     categoryBook: 'Network IDN',),
];