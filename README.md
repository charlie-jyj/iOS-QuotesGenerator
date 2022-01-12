###  명언 생성기

#### 1) 사용기술
- Storyboard
- AutoLayout
=> UI 구현
- UILabel
- UIButton

#### 2) 기본개념

##### (1) cocoa touch framework
iOS 개발을 위한 최상위 프레임워크
￼

- Foundation 기본 데이터타입, 자료구조, 각종 구조체, 타이머, 네트워크 통신, 파일 관리 (기본)
- UIKit framework 사용자 인터페이스 관리, 이벤트 처리
- 따라서 UI에 붙는 클래스들은 반드시 임포트 해야할 프레임워크이다.

￼


제스처, 애니메이션, 그림그리기, 이미지처리, 텍스트 처리…
어플리케이션 화면 구성 요소 또한 포함
Uiviewcontroller, uiview 에서 필 import

##### (2) code structure

￼

MVC 디자인 패턴
- model : data, business logic (무엇을)
- view: ui (보여주기)
- controller : 사용자의 액션에 따라 모델에게 어떤 작업을 처리해야 할지 알림 + 모델의 데이터 변화에 따라 뷰 업데이트  (어떻게)


현실의 UIkit 에서는 view-controller 가 강하게 연관성을 가진다.
￼

- controller 가 view의 lifecycle에 관여하기 때문에 분리하기 어렵다.
- 프로젝트 규모가 커질 수록 컨트롤러가 비대해져 유지 보수가 어려워질 수 있다.
- 이러한 단점 해결을 위해 나온 디자인 패턴이 MVVM, VIPER 등이 있다.

##### (3) viewcontroller

 (1) UIView 
￼
- 위치와 크기를 갖는 사각형, 배경색, 이미지 가질 수 있다
- 여러 ui component 를 보여준다
- 화면을 구성하는 기본 클래스, 여러 컴포넌트들이 상속받고 있는 것을 확인할 수 있다.

(2) ViewController
- 앱의 근간을 이루는 객체
- 모든 앱은 최소한 하나 이상의 뷰 컨트롤러를 가지고 있다.
- 사용자가 보는 화면의 관리 기능
-화면 하나를 관리하는 단위
- 데이터의 변화에 따라서 view 컨텐츠를 업데이트
- view 들과 함께 사용자 상호작용에 응답
- view 를 리사이징하고 전체적인 인터페이스의 레이아웃 관리
- 다른 뷰컨트롤러 들과 함께 앱 구성

=> “화면마다 다른 컨텐츠가 보이고, 액션에 따라서 다른 화면이 보이게 하는 것”


##### (4) AutoLayout
-두가지 이상의 view 가 있을 때, 제약조건 (Constraints) 을 이용해서 뷰의 위치를 지정한다.
-아이폰의 다양한 ‘해상도’에 대응하기 위해 나온 개념 (기기가 변해도 항상 같은 화면이 보이도록 하기 위해)
-스토리보드에서 관리

(1) 스토리 보드
- Scene 이라는 단위를 가진다
- 각 scene은 view 와 view controller 로 이루어져 있다

(2) add new constraint
뷰 간의 제약 조건 설정
￼

- trailing = right
= leading = left

(3) Align
각 뷰 간의 정렬 조정


(4) Resolve Auto Layout Issues
레이아웃 관련한 이슈 해결
제약 관리

##### (5) IBOutlet , IBAction
인터페이스 빌더 어노테이션

- storyboard 와의 연결고리
- 변수나 함수를 정의 할 때 @IBAction @IBOutlet 키워드를 통해 스토리보드의 버튼이나 레이블 같은 컴포넌트와 연결
- IBAction : 이벤트가 발생했을 때 호출되는 액션 정의, 입력이 들어왔을 때 어떤 행동을 할지
- IBOutlet : 스토리보드에 등록된 ui object에 접근하기 위해 사용하는 변수 (데이터 가져오기)

(1) viewUI 와 viewcontroller 연결하기

- assistant 
- show the identity inspector > custom class 에서 뷰컨트롤러를 지정할 수 있다
- 연결하기 원하는 viewUI를 마우스 오른쪽 버튼으로 클릭한 후 보조에디터 (assistant) 에 끌어다 놓는다.

(2) Content Hugging Priority, Content Compression Resistance Priority
Component 마다 고유의 크기가 있는데 컨텐츠(텍스트, 이미지) 에 따라서 크기가 변경될 경우, 늘어나는 것에 대한 제약 hugging, 줄어드는 것에 대한 제약 compression 이 존재한다.
priority에 따라서 본래의 크기에 비해 늘어나거나 줄어드게 하는 것을 정할 수 있다. 
Hugging priority 가 높으면 내 크기를 유지하고 우선순위가 낮으면 크기가 늘어난다.
Compression resistance priority 가 높으면 내 크기를 유지하고 우선순위가 낮으면 크기가 줄어든다.
1-1000 까지 1 단위로 지정할 수 있고, 250 단위로 레벨이 결정된다. 
1000은 required

Compression resistance
label에 많은 텍스트가 들어가서 넘칠 경우, 압축 저항 우선순위를 낮추어서 줄어들게 만든다.

