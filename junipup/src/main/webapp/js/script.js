$( function () {
    //첫번째 배너
    $( "#image_list_1" ).jQBanner( {//롤링을 할 영역의 ID 값
        nWidth: 600,				//영역의 width
        nHeight: 150,				//영역의 height
        nCount: 5,					//돌아갈 이미지 개수
        isActType: "up",			//움직일 방향 (left, right, up, down)
        nOrderNo: 1,				//초기 이미지
        nDelay: 2000				//롤링 시간 타임 (1000 = 1초)
    } );
    //두번째 배너
    $( "#image_list_2" ).jQBanner( {
        nWidth: 600,
        nHeight: 150,
        nCount: 5,
        isActType: "left",
        nOrderNo: 1,
        isStartAct: "N",
        isStartDelay: "Y",
        nDelay: 2000,
        isBtnType: "li"             //레이블(버튼 타입)
    } );
    //세번째 배너
    $( "#image_list_3" ).jQBanner( {
        nWidth: 600,
        nHeight: 150,
        nCount: 5,
        isActType: "right",
        nOrderNo: 1,
        isStartAct: "N",
        isStartDelay: "Y",
        nDelay: 3000,
        isBtnType: "img"
    } );
} );