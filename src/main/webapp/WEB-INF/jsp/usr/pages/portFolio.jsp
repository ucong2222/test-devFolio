<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../part/mainLayoutHead.jspf"%>
    
<main>
  <div id="wrapper" class="w-full">
	  <div id="slider-wrap" class="w-full">
	    <ul id="slider">
	      <li class="w-1/4" style="background-color:#2E4C92">
	        <div class="slider-contents-top">
	          <h3>PortFolio에 오신걸 환영합니다!</h3>
	        </div>
	      </li>
	
	      <li class="w-1/4" style="background-color:#258BF7">
	        <div class="slider-contents-bottom">
	          <h3>포트폴리오를 작성해보세요!</h3>
	          <div class="slider-contents-btn">
	            <div class="flex justify-end">
	              <a href="../article/write?boardId=1" class="bg-blue-400 hover:bg-blue-800 hover:text-white font-bold py-2 px-4 rounded z-10">포트폴리오 작성하기</a>
	            </div>
	          </div>
	        </div>
	      </li>
	
	      <li class="w-1/4" style="background-color:#22DFBF">
	        <div class="slider-contents-bottom">
	          <h3>채용공고를 확인해보세요!</h3>
	          <div class="flex justify-end"><a href="../article/list?boardId=2"" class="bg-green-500 hover:bg-green-900 hover:text-white font-bold py-2 px-4 rounded z-10">채용공고 확인하기</a></div>
	        </div>
	      </li>
	      
	      <li class="w-1/4" style="background-color:#c6e5f3">
	        <div class="slider-contents-bottom">
	          <h3>개발자가 되기 위해선 뭘 준비해야할까?</h3>
	          <div class="flex justify-end"><a href="../article/list?boardId=3"" class="bg-blue-400 hover:bg-blue-800 hover:text-white font-bold py-2 px-4 rounded z-10">커뮤니티 들어가기</a></div>
	        </div>
	      </li>
	
	    </ul>
	
	    <!--controls-->
	    <div class="btns" id="next"><i class="fa fa-arrow-right"></i></div>
	    <div class="btns" id="previous"><i class="fa fa-arrow-left"></i></div>
	
	    <div id="pagination-wrap">
	      <ul>
	      </ul>
	    </div>
	    <!--controls-->
	
	  </div>
	</div>

  <div class="section-2 border-b border-gray-300">
    <div class="container m-auto flex my-10">
      <div class="flex items-center">
        <nav>
          <ul class="flex items-center text-lg font-bold text-gray-600">
            <li class="mx-4">
              <a href="#" class="hover:underline">
                <span>최신순</span>
              </a>
            </li>
            <li class="mr-4">
              <a href="#" class="hover:underline">
                <span>추천순</span>
              </a>
            </li>
            </ul>
        </nav>
      </div>

      <div class="ml-4">
        <select class="block lg:w-48 w-32 text-gray-700 py-2 px-3 border border-gray-300 bg-white rounded-md shadow-sm focus:outline-none focus:ring-primary-500 focus:border-primary-500" name="animals">
          <option value="all">
            전체기간
          </option>
          <option value="2021">
            최근 24시간
          </option>
          <option value="2020">
            최근 1주일
          </option>
          <option value="2019">
            최근 1달
          </option>
          <option value="2018">
            최근 3달
          </option>
        </select>
      </div>

      <div class="ml-4">
        <select class="block lg:w-48 w-32 text-gray-700 py-2 px-3 border border-gray-300 bg-white rounded-md shadow-sm focus:outline-none focus:ring-primary-500 focus:border-primary-500" name="animals">
          <option value="all">
            전체분야
          </option>
          <option value="front-end">
            Front-end
          </option>
          <option value="back-end">
            Back-end
          </option>
        </select>
      </div>

      <div class="ml-4">
        <select class="block lg:w-48 w-32 text-gray-700 py-2 px-3 border border-gray-300 bg-white rounded-md shadow-sm focus:outline-none focus:ring-primary-500 focus:border-primary-500" name="animals">
          <option value="all">
            경력
          </option>
          <option value="front-end">
            신입
          </option>
          <option value="back-end">
            1년
          </option>
          <option value="back-end">
            2년
          </option>
          <option value="back-end">
            3년
          </option>
          <option value="back-end">
            4년
          </option>
          <option value="back-end">
            5년 이상
          </option>
        </select>
      </div>

    </div>
  </div>

  <div class="secion-3">
    <div class="container m-auto portfolio-list-box mt-6">
      <div class="portfolio-list grid xl:grid-cols-4 lg:grid-cols-3 md:grid-cols-2 grid-cols-1 px-3 gap-x-6 gap-y-20">

		<c:forEach items="${articles}" var="article">
			<c:set var="detailUrl" value="../article/detail?id=${article.id}"></c:set>
	        <div class="portfolio-list-item">
	          <div class="portfolio-list-img-box relative pt-80p overflow-hidden rounded-md box-border">
	            <a class="portfolio-list-img block" href="${detailUrl}">
	              <img class="absolute inset-0 h-full object-cover duration-1000" src="https://cdn.pixabay.com/photo/2020/12/27/12/07/sunrise-5863751_960_720.png" alt="">
	            </a>
	          </div>
	          <div class="portfolio-list-info">
	            <div class="portfolio-info-top">
	              <a class="portfolio-title block py-2 text-2xl font-bold truncate" href="${detailUrl}">${article.title}</a>
	            </div>
	            <div class="portfolio-info-bottom flex text-xl mt-1 text-gray-500">
	              <div class="portfolio-nickname text-black">
	                <a href="#">${article.extra__writer}</a>
	              </div>
	              <div class="flex-grow"></div>
	              <div class="portfolio-hit">
	                <span><i class="far fa-eye"></i></span>
	                <span>36</span>
	              </div>
	              <div class="portfolio-like ml-2">
	                <span><i class="far fa-heart"></i></span>
	                <span>36</span>
	              </div>
	              <div class="portfolio-reply ml-2">
	                <span><i class="far fa-comment-dots"></i></span>
	                <span>36</span>
	              </div>
	            </div>
	          </div>
	        </div>
        </c:forEach>
    
        

      </div>
    </div>
  </div>

</main>
<%@ include file="../part/mainLayoutFoot.jspf"%>
    