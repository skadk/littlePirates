/**
 * 페이징 처리 JS
 */
 var pagingUtil = {
    pagingView: function (currentPageNo, pageSize, totalCount, targetFunction) {
        var pageNo = parseInt(currentPageNo); // 현재 페이지 번호
        var countPage = 5; // 한 화면에 출력될 페이징 개수.

        var finalPageNo = parseInt(totalCount / pageSize);
        var strPaging = "";
        var targetFunction = (targetFunction == null || targetFunction == "") ? "goPage" : targetFunction;

        if (totalCount % pageSize > 0) {
            finalPageNo++;
        }

        if (finalPageNo < pageNo) {
            pageNo = finalPageNo;
        }

        var startPage = Math.floor(((pageNo - 1)/countPage)) * countPage + 1;
        var endPage = startPage + countPage - 1;

        if (startPage <= 0) {
            startPage = 1;
        }
        if (endPage > finalPageNo) {
            endPage = finalPageNo;
        }

        //strPaging ="<ul class='paginate'>";
        if (pageNo > 1) {
            // strPaging += "<a href=\"javascript:"+targetFunction+"(1);\">처음으로</a>";
            strPaging += "<li class='page-item'><a href=\"javascript:" + targetFunction + "(" + (pageNo - 1) + "); \" class='page-link'>이전</a></li>";
        }

        for (var iCount = startPage; iCount <= endPage; iCount++) {
            if (iCount == pageNo) {
                strPaging += "<li class='page-item active'><a href='javascript:void(0);' class='page-link'><strong>" + iCount + "</strong></a></li>";
            } else {
                strPaging += "<li class='page-item'><a href=\"javascript:" + targetFunction + "(" + iCount + ");\" class='page-link'>" + iCount + "</a></li>";
            }
        }

        if (pageNo < finalPageNo) {
            strPaging += "<li class='page-item'><a href=\"javascript:" + targetFunction + "(" + (pageNo + 1) + ");\" class='page-link'>다음</a></li>";
            //strPaging += "<a href=\"javascript:"+targetFunction+"("+finalPageNo+"); \" class='next'>다음페이지</a>";
        }
        //strPaging +="</ul>";

        return strPaging;
    }

    //게시글의 시작 인덱스번호
    , getStartOffset: function (currentPageNo, pageSize) {
        //      return ((currentPageNo -1) * pageSize) + 1;
        return (currentPageNo - 1) * pageSize;
    }

    //게시글의 끝 인덱스번호
    , getEndOffset: function (currentPageNo, pageSize) {
        //return (currentPageNo * pageSize);
        return 1 * pageSize;
    }

    //마지막 페이지 번호
    , getfinalPageNo: function (totalCount, pageSize) {
        var finalPageNo = parseInt(totalCount /pageSize);
        if (totalCount % pageSize > 0) {
            finalPageNo++;
        }
        return finalPageNo;
    }
}