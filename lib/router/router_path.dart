/// 공통

const String _login = '/login';

const String _about = 'about';

const String _forgotPassword = '/forgotPassword';

const String _register = '/register';

/// 어드빈
const String _dashboardPage = '/dashboard';
const String _product = '/product';
const String _productDetail = '/productDetail';
const String _loadingPage = '/loading';
const String _errorPage = '/error';
const String _package = '/package';
const String _offer = '/product';

const String _default = '/default';

const String _marketplace = '/marketplace';
const String _publicProfile = '/publicProfile';
const String _internalProfile = '/internalProfile';
const String _post = '/post';

const String _settings = '/settings';
const String _smartPage = '/smartPage';

abstract class AppRoutes {
  /// 공통
  static String get error => _errorPage;


  static String get testPage => 'test';
  static String get testPagePath => '/testPage';

  static String get logoutPage => 'logout';
  static String get logoutPagePath => '/logoutPage';

  static String get error404Page => 'error404Page';
  static String get error404PagePath => '/404Page';

  static String get loadingPage => 'loading';
  static String get loadingPagePath => '/loading';

  static String get invalidAccountPage => 'invalidAccount';
  static String get invalidAccountPagePath => '/invalidAccount';

  static String get emailVerify => 'emailVerify';
  static String get emailVerifyPath => '/emailVerify';
  static String get startUp => 'startup';
  static String get startUpPath => '/startup';
  static String get joinSupplier => 'join_supplier';
  static String get joinSupplierPath => '/join_supplier';


  static String get forgotPassword => _forgotPassword;

  static String get marketplace => _marketplace;

  /// 다운로드 페이지
  static String get downloadPage => 'downloadPage';
  static String get downloadPagePath => '/downloads/:id'; // 디렉토리 패스

  ///** downloadTransfer 이 이름을 패스이름으로 사용하고 있음
  static String get downloadTransferPage => 'downloadTransfer';
  static String get downloadTransferPagePath => '/downloadTransfer';

  /// ======== Main(Consumer) ==============
  static String get home => 'home';
  static String get homePath => '/';
  static String get colorPalettes => 'colorPalettes';
  static String get colorPalettesPath => '/colorPalettes';
  static String get loginRegistration => 'sign';
  static String get loginRegistrationPath => '/sign/:login';
  static String get aboutUs => 'aboutUs';
  static String get aboutUsPath => '/aboutUs';

  static String get searchPage => 'search';
  static String get searchPagePath => '/search';

  static String get notificationSettingsPage => 'notificationSettingsPage';
  static String get notificationSettingsPagePath => '/notification_settings';

  static String get notificationPage => 'notification';
  static String get notificationPagePath => '/notification';

  static String get supplierNotificationPage => 'supplierNotification';
  static String get supplierNotificationPagePath => '/supplier/notification';

  static String get adminNotificationPage => 'adminNotification';
  static String get adminNotificationPagePath => '/admin/notification';


  static String get discovery => 'discovery';
  static String get discoveryPath => '/discovery';

  /// Event screen
  static String get discoveryEventCollectionScreen => 'discoveryEvent';
  static String get discoveryEventCollectionScreenPath =>
      'collections/:id';

  // 플팻폼에서 서비스 하는 타입: '상품', '트랜스퍼' 메인화면
  static String get discoveryServiceTypeMainScreen => 'discoveryServiceTypeMain';
  static String get discoveryServiceTypeMainScreenPath =>'service/:type';
  //  Product 상세페이지
  static String get discoveryServiceTypeProductItemDetail => 'discoveryServiceTypeProductItemDetail';
  static String get discoveryServiceTypeProductItemDetailPath => 'detail-sp/:id';
  //  Transfer 상세페이지
  static String get discoveryServiceTypeTransferDetail =>
      'discoveryServiceTypeTransferItemDetail';
  static String get discoveryServiceTypeTransferDetailPath => 'detail-st/:id';



  //서브 리스트 페이지: 디스커버리 카테고리 리스트
  static String get discoverySubCategoryList => 'discoveryItemList';
  static String get discoverySubCategoryListPath =>'category/:category'; //main Category

  // 디스커버리 리스트 페이지에서 탭 > Type: Product 상세페이지
  static String get discoveryProductItemDetail => 'discoveryProductItemDetail';
  static String get discoveryProductItemDetailPath => 'detail-p/:id';

  // 디스커버리 리스트 페이지에서 탭 > Type: Transfer 상세페이지
  static String get discoveryListItemTapTransferDetail =>
      'discoveryTransferItemDetail';
  static String get discoveryListItemTapTransferDetailPath => 'detail-t/:id';

  static String get itemDetail => 'itemDetail';
  static String get itemDetailPath => '/itemDetail/:id';

  static String get transferItemDetail => 'transferItemDetail';
  static String get transferItemDetailPath => '/transferDetail/:id';

  static String get productDetail => 'productDetail';
  static String get productDetailPath => '/productDetail/:id';

  //static String get forYou => 'forYou';
  //static String get forYouPath => '/forYou';
  //탐색

  //1)소비자 화면 시작 페이지: 나의요청
  static String get consumerStartRequest => 'consumerRequest'; //name
  static String get consumerStartRequestPath => '/consumer/request'; //path

  static String get consumerRequestDetail => 'requestDetail'; //name
  static String get consumerRequestDetailPath =>
      '/request/detail/:requestId'; //path

  //L 나의요청 리스트 > 요청클릭 > 요청상세: 공급자들 로부터 받은 내용이 있으면 표시
  static String get consumerReceivedOffer => 'supplier_offer'; //name
  static String get consumerReceivedOfferPath => 'supplier_offer/:title'; //path

  //2) 나의쇼핑
  static String get consumerMyShopping => 'shopping';
  static String get consumerMyShoppingPath => '/my_page/shopping';

  static String get consumerLocalProducts => 'localProducts';
  static String get consumerLocalProductsPath => '/my_page/local_products';

  // 설정:> 계정정보
  static String get consumerAccountInfo => 'accountInfo';
  static String get consumerAccountInfoPath => '/my_page/account';
  // account sub page
  static String get consumerAccountSettings => 'accountSetting';
  static String get consumerAccountSettingsPath => 'account_settings';

  static String get consumerCompanyInfo => 'companyInfo';
  static String get consumerCompanyInfoPath => '/my_page/company';
  // 회사정보입력
  static String get consumerCompanyEnter => 'companyEnter';
  static String get consumerCompanyEnterPath => 'edit';

  // 나의 게시글
  static String get consumerPosts => 'posts';
  static String get consumerPostsPath => '/my_page/posts';

  // 나의 배송주소
  static String get consumerShippingAddress => 'shippingAddress';
  static String get consumerShippingAddressPath => '/my_page/shippingAddress';

  // 설정
  static String get consumerSettings => 'settings';
  static String get consumerSettingsPath => '/my_page/account/settings';

  // 주소록 목록
  static String get consumerAddressBooks => 'addressBooks';
  static String get consumerAddressBooksPath => '/consumer/address_books';

  static String get consumerAddressBookCreate => 'address_book_create';
  static String get consumerAddressBookCreatePath =>
      '/consumer/address_books/create';
  // 주소 라벨
  static String get consumerAddressLabels => 'addressLabels';
  static String get consumerAddressLabelsPath => '/consumer/address_labels';

  //static String get consumerAddressLabelCreate => 'address_labels_create';
  //static String get consumerAddressLabelCreatePath => '/consumer/address_labels/create';
  /// ======== 공 급 자 =========
  ///
  static String get supplierDashboard => 'supplierDashboard';
  static String get supplierDashboardPath => '/supplier';

  static String get supplierHelpDesk => 'supplier_help_desk';
  static String get supplierHelpDeskPath => '/supplier/helpDesk';


  /// todo 공급자 프로필 페이지 필요
  static String get supplierInfo => 'supplierInfo';
  static String get supplierInfoPath => '/supplier_info';

  // 공급자 시작화면: 받은요청(소비자로 부터)
  static String get supplierStartConsumerRequest => 'supplier_consumer_request';
  static String get supplierStartConsumerRequestPath =>
      '/supplier/consumer_request';

  static String get supplierProductAdd => 'supplierProduct_add';
  static String get supplierProductAddPath => '/product/add';

  // 상품 리스트 페이지
  static String get supplierProductList => 'supplier_products';
  static String get supplierProductListPath => '/supplier/products';
  // 공급자 상품 수정
  static String get supplierProductEdit => 'product_edit';
  static String get supplierProductEditPath => 'product/edit:id';

  static String get supplierAddressBook => 'supplier_address_books';
  static String get supplierAddressBookPath => '/supplier/address_books';
  // 주소 라벨
  static String get supplierAddressLabels => 'supplierAddressLabels';
  static String get supplierAddressLabelsPath => '/supplier/address_labels';

  static String get supplierAccountInfo => 'supplier_account';
  static String get supplierAccountInfoPath => '/supplier/account';
  static String get supplierAccountSettings => 'settings'; // 계정세팅(수정페이지)
  static String get supplierAccountSettingsPath => '/settings'; // 계정세팅(수정페이지)

  static String get productFAQBuilder => 'productFAQBuilder';
  static String get productFAQBuilderPath => '/product/faq';

  //-----------------------------------------------------------------------
  /// 어드민
  static String get adminDashboard => 'admin_dashboard';
  static String get adminDashboardPath => '/admin/dashboard';

  static String get adminHelpDesk => 'admin_help_desk';
  static String get adminHelpDeskPath => '/admin/helpDesk';

  /// 공지사항 리스트
  static String get noticeBoard => 'notice_board';
  static String get noticeBoardPath => '/noticeBoard';
  /// 공지사항 등록
  static String get adminNotice => 'admin_notice';
  static String get adminNoticePath => '/admin/notice';

  /// 1:1 문의/답변 리스트
  static String get adminOneToOneBoard => 'admin_one_to_one_board';
  static String get adminOneToOneBoardPath => '/admin/one_to_one_board';

  /// 공급자 신청 업체 정보 보기
  static String get adminJoinSupplierView => 'admin_join_supplier_info';
  static String get adminJoinSupplierViewPath => '/admin/join_supplier_view/:id';



  static String get adminAccountManagement => 'admin_accounts';
  static String get adminAccountManagementPath => '/admin/accounts';
  static String get adminSupplierManagement => 'admin_suppliers';
  static String get adminSupplierManagementPath => '/admin/suppliers';

  static String get adminCompanyManagement => 'admin_companies';
  static String get adminCompanyManagementPath => '/admin/companies';

  static String get adminCategoryManagement => 'admin_category';
  static String get adminCategoryManagementPath => '/admin/category';

  static String get adminBannerManager => 'admin_banner';
  static String get adminBannerManagerPath => '/admin/banner';

  static String get adminSpeechToText => 'speechToText';
  static String get adminSpeechToTextPath => '/admin/speechToText';

  static String get dashboard => _dashboardPage;
  static String get login => 'login';
  static String get loginPath => '/login';
  static String get register => _register;
  static String get product => _product;

  static String get package => _package;
  static String get offer => 'offer';
  static String get offerPath => 'offer';
  static String get post => _post;

  static String get transfer => 'transfer';
  static String get transferPath => '/transfer';

  static String get transferRegistration => 'transferRegistrationScreen';
  static String get transferRegistrationPath => 'registration/:category';

  static String get transferCopyAdd => 'transferCopyAddScreen';
  static String get transferCopyAddPath => 'copyToTransfer/:id';

  static String get transferCopy => 'transferCopyScreen';
  static String get transferCopyPath => '/copyToTransfer/:id';

  static String get transferListScreen => 'transferListScreen';
  static String get transferListScreenPath => 'category/:category';
  static String get transferListItemCopy => 'transferListItemCopyScreen';
  static String get transferListItemCopyPath => 'itemCopyToTransfer/:id';

  static String get transferListSupplierScreen => 'transferListSupplierScreen';
  static String get transferListSupplierScreenPath => 'origin-list';

  static String get emailDeliveryStatusScreen => 'emailDeliveryStatusScreen';
  static String get emailDeliveryStatusScreenPath => 'delivery/:objectId';

  static String get request => 'request';
  static String get requestPath => '/request';

  /// 요청서 작성 페이지
  static String get requestFormPage => 'requestForm';
  static String get requestFormPagePath => 'request/form/:category';

  static String get requestList => 'requestList';
  static String get requestListPath => 'request/category/:id';

  /// 탐색
  static String get explore => 'explore';
  static String get explorePath => '/explore';
  // 검색결과 리스트 페이지
  static String get queryPronto => 'searchPronto';
  static String get queryProntoPath => 'pronto-search';
  // 검색 리스트에서 상품 Tap
  static String get searchProductDetail => 'searchProductDetail';
  static String get searchProductDetailPath => 'searchProductDetail/:id';

  static String get transferSupplier => 'supplier_transfer';
  static String get transferSupplierPath => '/supplier/transfer';

  static String get requestTalk => 'requestTalk';
  static String get requestTalkPath => '/requestTalk';

  static String get supplierTalk => 'supplierTalk';
  static String get supplierTalkPath => '/supplierTalk';

  static String get defaultPage => _default;
  static String get internalProfile => _internalProfile;
  static String get publicProfile => _publicProfile;
  static String get settings => _settings;
  static String get smartPage => _smartPage;
}