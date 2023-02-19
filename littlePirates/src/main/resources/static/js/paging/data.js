/**
 * data.js
 */
 
/**
 * 비동기 호출 함수 (POST-일반)
 * @param {string} url 비동기 호출할 주소
 * @param {object} params 매개변수
 * @param {method} callbackMethod 실행될 함수
 */
let pageNum = 1;
let pageSize = 5;

document.addEventListener("DOMContentLoaded", function(event) {
    // 비동기로 페이징 데이터 호출
    DataFunc.getPagingData(1);
});


const DataFunc = {
    getPagingData: function(pageNum){
        let params = {
            "startOffset": pagingUtil.getStartOffset(pageNum, pageSize)
            , "endOffset": pagingUtil.getEndOffset(pageNum, pageSize)
        }
        
        // https://zero-gravity.tistory.com/331 참고.
        apiFetchPost("/getPagingList", params, function(resData) {
            //console.log("페이징 데이터 컴온-");
            PrintFunc.printPagingData(resData);     
        });
    },
    pagingPagingData: function(pNum){
        pageNum = pNum;
        DataFunc.getPagingData(pageNum);
    }
}

function apiFetchPost(url, params, callbackMethod) {
    fetch(url, {
        method: "POST",
        headers: {
            "Content-Type": "application/x-www-form-urlencoded; charset=UTF-8",
            "X-Requested-With": "XMLHttpRequest"
        },
        body: new URLSearchParams(params)
    })
    .then(res =>{
        if (res.redirected) { // 리다이렉트가 있을 경우 (에러 발생 시 화면 이동을 위해)
            window.location.href = res.url;
            res.redirect(res.url)
        }
        // 응답 데이터를 JSON 형태로 받아서 다음 then으로 넘김
        return res.json();
    })
    .then(res => {
        callbackMethod(res); // 함수 실행
    })
    .catch((error) => {
        console.log(error);
        alert("에러가 발생했습니다. \r\n관리자에게 문의해주십시오.");
    });
}
 
const PrintFunc = {
    printPagingData: function(resData){
    
    	console.log(resData.map);
    	console.log(resData.map.dataList);
    	console.log(resData.map.dataList.myArrayList);
    	console.log(resData.map.dataList.myArrayList[0]);
    	console.log(resData.map.dataList.myArrayList[0].map);
    	console.log(resData.map.dataList.myArrayList[0].map.exNo);
        let htmlResult = "";

        resData.map.dataList.myArrayList.forEach(function(data) {
            htmlResult += "<tr><td>" + data.map.exNo + "</td>"
                            + "<td>" + data.map.exTitle + "</td>"
                            + "<td>" + data.map.exContent + "</td>"
                            + "<td>" + data.map.exCreator + "</td>"
                            + "</tr>";
        });

        document.getElementById("dataList").innerHTML = htmlResult;
        document.getElementById("pagination").innerHTML = pagingUtil.pagingView(pageNum, pageSize, resData.map.COUNT, "DataFunc.pagingPagingData");
    }
}