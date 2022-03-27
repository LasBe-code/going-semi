![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/1f2577e7-e09f-456e-8035-1a50456f541e/Untitled.png)

# GOING - 숙박플랫폼 model2 프로젝트

## 목차

1. **개발환경**
2. **사용기술**
    1. 백엔드
    2. 프론트엔드
    3. API
3. **핵심 키워드**
4. **협업**
5. **설계**
6. **핵심 기능**
    1. Cloud Database
    2. 소셜 로그인
    3. 플랫폼 형태 구축
    4. 유효성 체크
    5. 문자인증
    6. 검색 시 숙소의 방중 최저가 표시
    7. 예약 완료된 방
    8. 결제
7. **프로젝트 후기**

---

## 1. 개발환경

- Window
- Mac Os
- Eclipse
- GitHub
- SQL Developer

---

## 2. 사용기술

### 2.1 백엔드

- 주요 프레임워크, 라이브러리
    - Java 16 openjdk
    - Mybatis
- Database
    - Oracle
    - Oracle Cloud / ADW
- WAS
    - Apache Tomcat

### 2.2 프론트엔드

- HTML
- CSS
- JavaScript
- jQuery
- Bootstrap5

### 2.3 API

- Kakao Login API
- Naver Cloud Flatform SENS
- Import API

---

## 3. 핵심 키워드

- 전반적인 팀프로젝트 제작 과정 경험
- Spring 학습 전 MVC 패턴에 대한 이헤도 쌓기
- 다양한 기능 구현을 통한 폭넓은 경험 쌓기
- 플랫폼 형태의 예약 서비스 구현으로 다양한 경우의 수에 대한 고민과 대응

---

## 4. 협업

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/0e1c62ac-8f53-4607-8ddf-d3a358e467a9/Untitled.png)

- 형상 관리
    - GitHub
- 일정 관리
    - Notion
- 설계
    - Whinsical
    

---

## 5. 설계

실시간 공동 참여 설계 플랫폼인 Whinsical을 이용해서 언제든 접근과 수정이 가능한 자료를 생성해, 프로젝트 진행에 큰 도움이 되었습니다.

그러나 빠른 시간 안에 결과물을 내놓아야했기 때문에 설계에 많은 시간을 투자할 수 없었고, 그만큼 최대한 설계 부분을 간소화할 수 밖에 없어 많은 아쉬움을 남겼습니다.

- 흐름도
    
    ![프로토타입@2x (1).png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/d0aacf55-49bb-43b2-84f0-9083eaf93f48/프로토타입2x_(1).png)
    

- Database ERD
    
    ![Database ERD@2x (2).png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/42d82bb1-fb80-4156-8310-bdc229222d46/Database_ERD2x_(2).png)
    

- 핵심 로직
    
    ![핵심 로직@2x (1).png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/f0854643-798b-438f-8703-4c773896c0f8/핵심_로직2x_(1).png)
    

---

## 6. 핵심기능

### 6.1 Cloud Database

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/701dc433-c997-4962-b8b4-b9448dc401d1/Untitled.png)

Oracle Cloud를 이용해 팀원들 간 동일한 데이터베이스를 클라우드에 올려 공유할 수 있었습니다.

덕분에 여러 팀원들이 백엔드 작업을 통해 모델을 수정해도 일관성이 유지되었습니다.

또한 데이터베이스를 Mybatis와 SQL Developer에 전자지갑으로 연결함으로써 개발 환경에 따른 변수를 제외할 수 있어 안정적인 사용이 가능했습니다.

### 6.2 소셜 로그인

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/58255c29-525c-443e-9185-38fdc53291ce/Untitled.png)

카카오 로그인 API를 이용해 넘겨주는 데이터를 파싱해서 소셜 로그인을 구현했습니다.

카카오 측에서 받는 데이터가 한정되어서 첫 로그인 시, 최초 회원가입을 진행하도록 하였습니다.

백엔드에서 JSON 형태의 데이터를 다룰 수 있는 좋은 기회였습니다.

### 6.3 플랫폼 형태 구축

![고객](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/898e2aa4-0e7f-43e8-b04b-efea9340d5b1/Untitled.png)

고객

![사업자](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/6c13f7b0-846e-4cf9-be5b-4c36af76b853/Untitled.png)

사업자

상품을 이용하는 고객, 공급하는 사업자 부분을 따로 나누어 플랫폼 형태로 제작하였습니다.

프로젝트가 진행이 될 수록 점차 플랫폼 서비스에는 생각 이상으로 많은 경우의 수가 존재한다는 것을 깨닫고 고객과 사업자 간 상호작용을 분석하며 서비스 구조와 복잡한 데이터 흐름에 대한 이해도를 키울 수 있었습니다.

### 6.4 유효성 체크

회원가입부터 날짜 선택, 약관 동의 등 예약 서비스에서 놓치면 안될 데이터들을 검사해주었습니다.

회원가입 부분에서는 AJAX를 이용해 비동기적으로 유효성을 체크해주었지만 날짜 선택부분은 주로 자바 스크립트로 처리했기 때문에 데이터 변조에 대해 매우 취약하다고 느끼고 있으며 추후 프로젝트에서는 서버단에서 검증할 수 있도록 보완할 예정입니다.

### 6.5 문자인증

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/88944da9-3241-4cf7-ba45-439f1a474524/Untitled.png)

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/f20ba31c-5fc2-4e51-a0d0-789eaaa83c08/Untitled.png)

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/1bc034c6-252c-4f6d-95c5-fc6301841447/Untitled.png)

숙박 플랫폼 특성 상 인증된 전화번호는 꼭 필요하다고 생각해 문자 인증 서비스를 구현했습니다.

서버에서 6자리 난수를 생성한 뒤 Naver Cloud API를 통해 이용자에게 문자를 보내고, 전송받은 코드를 AJAX로 비교할 수 있도록 했습니다.

완전한 본인인증 서비스는 요금과 계약 문제때문에 어려움이 있었다는 점이 많이 아쉬웠습니다.

### 6.6 검색 시 숙소의 방들 중 최저가 노출

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/5a154c62-3fad-45fe-9f42-6c4e3474e78c/Untitled.png)

이용자의 검색 결과에 맞게 사업자(숙소)가 등록한 방들 중 최저가를 노출하도록 했습니다.

최저가 방을 노출시키는 로직이 사용자의 요구에 완벽하게 부합하지 않아 쿼리 개선이 필요합니다.

### 6.7 예약 완료된 방

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/19adae35-575a-45b2-be11-131346e4ce86/Untitled.png)

상품의 상세 정보를 표시하는 페이지에서 이미 예약된 방을 예약할 수 없도록 처리했습니다.

이는 예약시 reserved(예약 중복 확인) 테이블에 [ 방 번호, 모든 숙박 날짜 ]를 저장해두고 상품을 탐색 시 이를 조회하도록 하여 구현했습니다.

정답을 모르는 상태로 고민 끝에 기능을 정상 작동하도록 만들었지만 로직 자체가 무거워서 서버에 많은 부하를 줄 것으로 예상됩니다.

### 6.8 결제

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/1c4e95e0-dda6-45bf-adbe-171517a3bd01/Untitled.png)

아임포트 API를 사용해 실제 결제 처리가 되면 AJAX를 이용해 예약 완료 로직이 구동되도록 했습니다.

예약 내역에서 예약 취소는 구현했으나, 결제 금액 환불처리는 구현하지 못했습니다.

또한 결제 검증이 되어있지 않아 추후 보완할 예정입니다.

---

## 7. 프로젝트 후기

제대로 된 팀 프로젝트는 처음이기도 하고 가이드라인이 없는 상태여서 도대체 어디서부터 시작해야될지 막막함을 느꼈습니다.

어떻게 역할 배분을 해야하는지, 어떻게 테이블을 구성하고 기능들을 연결해야할지 도저히 감도 잡히지 않았지만, 비전공자 팀원들 사이 유일한 전공자 팀장으로서 어떻게든 프로젝트를 이끌어나가야겠다는 책임감으로 설계부터 다시 공부하며 만들어 나갔습니다.

대략적인 페이지 흐름도와 데이터베이스 관계도를 작성해나가며 추상적이었던 로직들이 점차 구체화 됨을 느끼며 설계 단계의 중요성을 느낄 수 있었습니다.

설계가 어느정도 끝나고 나니 이젠 개발환경을 맞추고 세팅하는 과정에서 문제가 터져나왔습니다.

특히 깃허브 공동 리포지토리에 프로젝트를 올리고 내려받는 과정에서 많은 문제가 발생해, 이를 해결하며 전보다 깃 사용이 어느정도 능숙해졌음을 느낍니다.

프로젝트를 진행하는 동안 온라인에서는 부족한 부분을 채우기에는 한계가 있음을 느끼고 스터디룸에 팀원을 모아 기초적인 부분에 대해 설명하고 막히는 부분을 바로바로 소통하는 기회도 가졌습니다.

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/4660c4e5-d70a-4e6e-992e-fb04ae19f2d4/Untitled.png)

프로젝트에 적극적이었던 팀원들 덕에 몇번의 모임 후 프로젝트는 순조롭게 진행되었고 기초적인 내용을 설명하며 저 스스로의 기본기도 튼튼하게 다질 수 있었습니다.

프로젝트의 마무리에 가선 나뉘어있던 기능들을 이어주는 작업을 했고 그것들이 정상적으로 잘 작동하는 것을 보았을 때 너무나 큰 기쁨을 느꼈고, 막막했던 초기부터 완성까지의 기억들을 되짚어보며 개발에 대한 자신감을 가지게 되었습니다.

마지막으로 3주동안 함께 밤을 새고 서로에게 힘이 되었던 팀원에게 고맙다는 말을 남깁니다~~

![스크린샷 2022-03-16 오후 2.16.36(2).png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/ff53bd3b-a624-41c9-be94-21a8f4be5e4d/스크린샷_2022-03-16_오후_2.16.36(2).png)

[Model2-Going (1).pdf](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/f57925de-5f81-4560-b9d3-f7d777d725bc/Model2-Going_(1).pdf)
