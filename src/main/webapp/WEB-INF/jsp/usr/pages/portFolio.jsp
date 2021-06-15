<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../part/mainLayoutHead.jspf"%>
    
<main>
  <div class="section-1 h-96 w-full bg-main">
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

        <div class="portfolio-list-item">
          <div class="portfolio-list-img-box relative pt-80p overflow-hidden rounded-md box-border">
            <a class="portfolio-list-img block" href="#">
              <img class="absolute inset-0 h-full object-cover duration-1000" src="https://cdn.pixabay.com/photo/2020/12/27/12/07/sunrise-5863751_960_720.png" alt="">
            </a>
          </div>
          <div class="portfolio-list-info">
            <div class="portfolio-info-top">
              <a class="portfolio-title block py-2 text-2xl font-bold truncate" href="#">물위에 도시가 떠다니네요 정말 신기하군요</a>
            </div>
            <div class="portfolio-info-bottom flex text-xl mt-1 text-gray-500">
              <div class="portfolio-nickname text-black">
                <a href="#">유콩이</a>
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
        
        <div class="portfolio-list-item">
          <div class="portfolio-list-img-box relative pt-80p overflow-hidden rounded-md box-border">
            <a class="portfolio-list-img block" href="#">
              <img class="absolute inset-0 h-full object-cover duration-1000" src="https://cdn.pixabay.com/photo/2020/12/27/12/07/sunrise-5863751_960_720.png" alt="">
            </a>
          </div>
          <div class="portfolio-list-info">
            <div class="portfolio-info-top">
              <a class="portfolio-title block py-2 text-2xl font-bold truncate" href="#">물위에 도시가 떠다니네요 정말 신기하군요</a>
            </div>
            <div class="portfolio-info-bottom flex text-xl mt-1 text-gray-500">
              <div class="portfolio-nickname text-black">
                <a href="#">유콩이</a>
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
        <div class="portfolio-list-item">
          <div class="portfolio-list-img-box relative pt-80p overflow-hidden rounded-md box-border">
            <a class="portfolio-list-img block" href="#">
              <img class="absolute inset-0 h-full object-cover duration-1000" src="https://cdn.pixabay.com/photo/2020/12/27/12/07/sunrise-5863751_960_720.png" alt="">
            </a>
          </div>
          <div class="portfolio-list-info">
            <div class="portfolio-info-top">
              <a class="portfolio-title block py-2 text-2xl font-bold truncate" href="#">물위에 도시가 떠다니네요 정말 신기하군요</a>
            </div>
            <div class="portfolio-info-bottom flex text-xl mt-1 text-gray-500">
              <div class="portfolio-nickname text-black">
                <a href="#">유콩이</a>
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
        <div class="portfolio-list-item">
          <div class="portfolio-list-img-box relative pt-80p overflow-hidden rounded-md box-border">
            <a class="portfolio-list-img block" href="#">
              <img class="absolute inset-0 h-full object-cover duration-1000" src="https://cdn.pixabay.com/photo/2020/12/27/12/07/sunrise-5863751_960_720.png" alt="">
            </a>
          </div>
          <div class="portfolio-list-info">
            <div class="portfolio-info-top">
              <a class="portfolio-title block py-2 text-2xl font-bold truncate" href="#">물위에 도시가 떠다니네요 정말 신기하군요</a>
            </div>
            <div class="portfolio-info-bottom flex text-xl mt-1 text-gray-500">
              <div class="portfolio-nickname text-black">
                <a href="#">유콩이</a>
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
        <div class="portfolio-list-item">
          <div class="portfolio-list-img-box relative pt-80p overflow-hidden rounded-md box-border">
            <a class="portfolio-list-img block" href="#">
              <img class="absolute inset-0 h-full object-cover duration-1000" src="https://cdn.pixabay.com/photo/2020/12/27/12/07/sunrise-5863751_960_720.png" alt="">
            </a>
          </div>
          <div class="portfolio-list-info">
            <div class="portfolio-info-top">
              <a class="portfolio-title block py-2 text-2xl font-bold truncate" href="#">물위에 도시가 떠다니네요 정말 신기하군요</a>
            </div>
            <div class="portfolio-info-bottom flex text-xl mt-1 text-gray-500">
              <div class="portfolio-nickname text-black">
                <a href="#">유콩이</a>
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
        <div class="portfolio-list-item">
          <div class="portfolio-list-img-box relative pt-80p overflow-hidden rounded-md box-border">
            <a class="portfolio-list-img block" href="#">
              <img class="absolute inset-0 h-full object-cover duration-1000" src="https://cdn.pixabay.com/photo/2020/12/27/12/07/sunrise-5863751_960_720.png" alt="">
            </a>
          </div>
          <div class="portfolio-list-info">
            <div class="portfolio-info-top">
              <a class="portfolio-title block py-2 text-2xl font-bold truncate" href="#">물위에 도시가 떠다니네요 정말 신기하군요</a>
            </div>
            <div class="portfolio-info-bottom flex text-xl mt-1 text-gray-500">
              <div class="portfolio-nickname text-black">
                <a href="#">유콩이</a>
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
        <div class="portfolio-list-item">
          <div class="portfolio-list-img-box relative pt-80p overflow-hidden rounded-md box-border">
            <a class="portfolio-list-img block" href="#">
              <img class="absolute inset-0 h-full object-cover duration-1000" src="https://cdn.pixabay.com/photo/2020/12/27/12/07/sunrise-5863751_960_720.png" alt="">
            </a>
          </div>
          <div class="portfolio-list-info">
            <div class="portfolio-info-top">
              <a class="portfolio-title block py-2 text-2xl font-bold truncate" href="#">물위에 도시가 떠다니네요 정말 신기하군요</a>
            </div>
            <div class="portfolio-info-bottom flex text-xl mt-1 text-gray-500">
              <div class="portfolio-nickname text-black">
                <a href="#">유콩이</a>
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
        <div class="portfolio-list-item">
          <div class="portfolio-list-img-box relative pt-80p overflow-hidden rounded-md box-border">
            <a class="portfolio-list-img block" href="#">
              <img class="absolute inset-0 h-full object-cover duration-1000" src="https://cdn.pixabay.com/photo/2020/12/27/12/07/sunrise-5863751_960_720.png" alt="">
            </a>
          </div>
          <div class="portfolio-list-info">
            <div class="portfolio-info-top">
              <a class="portfolio-title block py-2 text-2xl font-bold truncate" href="#">물위에 도시가 떠다니네요 정말 신기하군요</a>
            </div>
            <div class="portfolio-info-bottom flex text-xl mt-1 text-gray-500">
              <div class="portfolio-nickname text-black">
                <a href="#">유콩이</a>
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
        <div class="portfolio-list-item">
          <div class="portfolio-list-img-box relative pt-80p overflow-hidden rounded-md box-border">
            <a class="portfolio-list-img block" href="#">
              <img class="absolute inset-0 h-full object-cover duration-1000" src="https://cdn.pixabay.com/photo/2020/12/27/12/07/sunrise-5863751_960_720.png" alt="">
            </a>
          </div>
          <div class="portfolio-list-info">
            <div class="portfolio-info-top">
              <a class="portfolio-title block py-2 text-2xl font-bold truncate" href="#">물위에 도시가 떠다니네요 정말 신기하군요</a>
            </div>
            <div class="portfolio-info-bottom flex text-xl mt-1 text-gray-500">
              <div class="portfolio-nickname text-black">
                <a href="#">유콩이</a>
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
        <div class="portfolio-list-item">
          <div class="portfolio-list-img-box relative pt-80p overflow-hidden rounded-md box-border">
            <a class="portfolio-list-img block" href="#">
              <img class="absolute inset-0 h-full object-cover duration-1000" src="https://cdn.pixabay.com/photo/2020/12/27/12/07/sunrise-5863751_960_720.png" alt="">
            </a>
          </div>
          <div class="portfolio-list-info">
            <div class="portfolio-info-top">
              <a class="portfolio-title block py-2 text-2xl font-bold truncate" href="#">물위에 도시가 떠다니네요 정말 신기하군요</a>
            </div>
            <div class="portfolio-info-bottom flex text-xl mt-1 text-gray-500">
              <div class="portfolio-nickname text-black">
                <a href="#">유콩이</a>
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
        <div class="portfolio-list-item">
          <div class="portfolio-list-img-box relative pt-80p overflow-hidden rounded-md box-border">
            <a class="portfolio-list-img block" href="#">
              <img class="absolute inset-0 h-full object-cover duration-1000" src="https://cdn.pixabay.com/photo/2020/12/27/12/07/sunrise-5863751_960_720.png" alt="">
            </a>
          </div>
          <div class="portfolio-list-info">
            <div class="portfolio-info-top">
              <a class="portfolio-title block py-2 text-2xl font-bold truncate" href="#">물위에 도시가 떠다니네요 정말 신기하군요</a>
            </div>
            <div class="portfolio-info-bottom flex text-xl mt-1 text-gray-500">
              <div class="portfolio-nickname text-black">
                <a href="#">유콩이</a>
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
        <div class="portfolio-list-item">
          <div class="portfolio-list-img-box relative pt-80p overflow-hidden rounded-md box-border">
            <a class="portfolio-list-img block" href="#">
              <img class="absolute inset-0 h-full object-cover duration-1000" src="https://cdn.pixabay.com/photo/2020/12/27/12/07/sunrise-5863751_960_720.png" alt="">
            </a>
          </div>
          <div class="portfolio-list-info">
            <div class="portfolio-info-top">
              <a class="portfolio-title block py-2 text-2xl font-bold truncate" href="#">물위에 도시가 떠다니네요 정말 신기하군요</a>
            </div>
            <div class="portfolio-info-bottom flex text-xl mt-1 text-gray-500">
              <div class="portfolio-nickname text-black">
                <a href="#">유콩이</a>
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
        <div class="portfolio-list-item">
          <div class="portfolio-list-img-box relative pt-80p overflow-hidden rounded-md box-border">
            <a class="portfolio-list-img block" href="#">
              <img class="absolute inset-0 h-full object-cover duration-1000" src="https://cdn.pixabay.com/photo/2020/12/27/12/07/sunrise-5863751_960_720.png" alt="">
            </a>
          </div>
          <div class="portfolio-list-info">
            <div class="portfolio-info-top">
              <a class="portfolio-title block py-2 text-2xl font-bold truncate" href="#">물위에 도시가 떠다니네요 정말 신기하군요</a>
            </div>
            <div class="portfolio-info-bottom flex text-xl mt-1 text-gray-500">
              <div class="portfolio-nickname text-black">
                <a href="#">유콩이</a>
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
        <div class="portfolio-list-item">
          <div class="portfolio-list-img-box relative pt-80p overflow-hidden rounded-md box-border">
            <a class="portfolio-list-img block" href="#">
              <img class="absolute inset-0 h-full object-cover duration-1000" src="https://cdn.pixabay.com/photo/2020/12/27/12/07/sunrise-5863751_960_720.png" alt="">
            </a>
          </div>
          <div class="portfolio-list-info">
            <div class="portfolio-info-top">
              <a class="portfolio-title block py-2 text-2xl font-bold truncate" href="#">물위에 도시가 떠다니네요 정말 신기하군요</a>
            </div>
            <div class="portfolio-info-bottom flex text-xl mt-1 text-gray-500">
              <div class="portfolio-nickname text-black">
                <a href="#">유콩이</a>
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
        <div class="portfolio-list-item">
          <div class="portfolio-list-img-box relative pt-80p overflow-hidden rounded-md box-border">
            <a class="portfolio-list-img block" href="#">
              <img class="absolute inset-0 h-full object-cover duration-1000" src="https://cdn.pixabay.com/photo/2020/12/27/12/07/sunrise-5863751_960_720.png" alt="">
            </a>
          </div>
          <div class="portfolio-list-info">
            <div class="portfolio-info-top">
              <a class="portfolio-title block py-2 text-2xl font-bold truncate" href="#">물위에 도시가 떠다니네요 정말 신기하군요</a>
            </div>
            <div class="portfolio-info-bottom flex text-xl mt-1 text-gray-500">
              <div class="portfolio-nickname text-black">
                <a href="#">유콩이</a>
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
        <div class="portfolio-list-item">
          <div class="portfolio-list-img-box relative pt-80p overflow-hidden rounded-md box-border">
            <a class="portfolio-list-img block" href="#">
              <img class="absolute inset-0 h-full object-cover duration-1000" src="https://cdn.pixabay.com/photo/2020/12/27/12/07/sunrise-5863751_960_720.png" alt="">
            </a>
          </div>
          <div class="portfolio-list-info">
            <div class="portfolio-info-top">
              <a class="portfolio-title block py-2 text-2xl font-bold truncate" href="#">물위에 도시가 떠다니네요 정말 신기하군요</a>
            </div>
            <div class="portfolio-info-bottom flex text-xl mt-1 text-gray-500">
              <div class="portfolio-nickname text-black">
                <a href="#">유콩이</a>
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
        <div class="portfolio-list-item">
          <div class="portfolio-list-img-box relative pt-80p overflow-hidden rounded-md box-border">
            <a class="portfolio-list-img block" href="#">
              <img class="absolute inset-0 h-full object-cover duration-1000" src="https://cdn.pixabay.com/photo/2020/12/27/12/07/sunrise-5863751_960_720.png" alt="">
            </a>
          </div>
          <div class="portfolio-list-info">
            <div class="portfolio-info-top">
              <a class="portfolio-title block py-2 text-2xl font-bold truncate" href="#">물위에 도시가 떠다니네요 정말 신기하군요</a>
            </div>
            <div class="portfolio-info-bottom flex text-xl mt-1 text-gray-500">
              <div class="portfolio-nickname text-black">
                <a href="#">유콩이</a>
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
        <div class="portfolio-list-item">
          <div class="portfolio-list-img-box relative pt-80p overflow-hidden rounded-md box-border">
            <a class="portfolio-list-img block" href="#">
              <img class="absolute inset-0 h-full object-cover duration-1000" src="https://cdn.pixabay.com/photo/2020/12/27/12/07/sunrise-5863751_960_720.png" alt="">
            </a>
          </div>
          <div class="portfolio-list-info">
            <div class="portfolio-info-top">
              <a class="portfolio-title block py-2 text-2xl font-bold truncate" href="#">물위에 도시가 떠다니네요 정말 신기하군요</a>
            </div>
            <div class="portfolio-info-bottom flex text-xl mt-1 text-gray-500">
              <div class="portfolio-nickname text-black">
                <a href="#">유콩이</a>
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
        <div class="portfolio-list-item">
          <div class="portfolio-list-img-box relative pt-80p overflow-hidden rounded-md box-border">
            <a class="portfolio-list-img block" href="#">
              <img class="absolute inset-0 h-full object-cover duration-1000" src="https://cdn.pixabay.com/photo/2020/12/27/12/07/sunrise-5863751_960_720.png" alt="">
            </a>
          </div>
          <div class="portfolio-list-info">
            <div class="portfolio-info-top">
              <a class="portfolio-title block py-2 text-2xl font-bold truncate" href="#">물위에 도시가 떠다니네요 정말 신기하군요</a>
            </div>
            <div class="portfolio-info-bottom flex text-xl mt-1 text-gray-500">
              <div class="portfolio-nickname text-black">
                <a href="#">유콩이</a>
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
        <div class="portfolio-list-item">
          <div class="portfolio-list-img-box relative pt-80p overflow-hidden rounded-md box-border">
            <a class="portfolio-list-img block" href="#">
              <img class="absolute inset-0 h-full object-cover duration-1000" src="https://cdn.pixabay.com/photo/2020/12/27/12/07/sunrise-5863751_960_720.png" alt="">
            </a>
          </div>
          <div class="portfolio-list-info">
            <div class="portfolio-info-top">
              <a class="portfolio-title block py-2 text-2xl font-bold truncate" href="#">물위에 도시가 떠다니네요 정말 신기하군요</a>
            </div>
            <div class="portfolio-info-bottom flex text-xl mt-1 text-gray-500">
              <div class="portfolio-nickname text-black">
                <a href="#">유콩이</a>
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
        <div class="portfolio-list-item">
          <div class="portfolio-list-img-box relative pt-80p overflow-hidden rounded-md box-border">
            <a class="portfolio-list-img block" href="#">
              <img class="absolute inset-0 h-full object-cover duration-1000" src="https://cdn.pixabay.com/photo/2020/12/27/12/07/sunrise-5863751_960_720.png" alt="">
            </a>
          </div>
          <div class="portfolio-list-info">
            <div class="portfolio-info-top">
              <a class="portfolio-title block py-2 text-2xl font-bold truncate" href="#">물위에 도시가 떠다니네요 정말 신기하군요</a>
            </div>
            <div class="portfolio-info-bottom flex text-xl mt-1 text-gray-500">
              <div class="portfolio-nickname text-black">
                <a href="#">유콩이</a>
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
        <div class="portfolio-list-item">
          <div class="portfolio-list-img-box relative pt-80p overflow-hidden rounded-md box-border">
            <a class="portfolio-list-img block" href="#">
              <img class="absolute inset-0 h-full object-cover duration-1000" src="https://cdn.pixabay.com/photo/2020/12/27/12/07/sunrise-5863751_960_720.png" alt="">
            </a>
          </div>
          <div class="portfolio-list-info">
            <div class="portfolio-info-top">
              <a class="portfolio-title block py-2 text-2xl font-bold truncate" href="#">물위에 도시가 떠다니네요 정말 신기하군요</a>
            </div>
            <div class="portfolio-info-bottom flex text-xl mt-1 text-gray-500">
              <div class="portfolio-nickname text-black">
                <a href="#">유콩이</a>
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
        <div class="portfolio-list-item">
          <div class="portfolio-list-img-box relative pt-80p overflow-hidden rounded-md box-border">
            <a class="portfolio-list-img block" href="#">
              <img class="absolute inset-0 h-full object-cover duration-1000" src="https://cdn.pixabay.com/photo/2020/12/27/12/07/sunrise-5863751_960_720.png" alt="">
            </a>
          </div>
          <div class="portfolio-list-info">
            <div class="portfolio-info-top">
              <a class="portfolio-title block py-2 text-2xl font-bold truncate" href="#">물위에 도시가 떠다니네요 정말 신기하군요</a>
            </div>
            <div class="portfolio-info-bottom flex text-xl mt-1 text-gray-500">
              <div class="portfolio-nickname text-black">
                <a href="#">유콩이</a>
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
        <div class="portfolio-list-item">
          <div class="portfolio-list-img-box relative pt-80p overflow-hidden rounded-md box-border">
            <a class="portfolio-list-img block" href="#">
              <img class="absolute inset-0 h-full object-cover duration-1000" src="https://cdn.pixabay.com/photo/2020/12/27/12/07/sunrise-5863751_960_720.png" alt="">
            </a>
          </div>
          <div class="portfolio-list-info">
            <div class="portfolio-info-top">
              <a class="portfolio-title block py-2 text-2xl font-bold truncate" href="#">물위에 도시가 떠다니네요 정말 신기하군요</a>
            </div>
            <div class="portfolio-info-bottom flex text-xl mt-1 text-gray-500">
              <div class="portfolio-nickname text-black">
                <a href="#">유콩이</a>
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
        <div class="portfolio-list-item">
          <div class="portfolio-list-img-box relative pt-80p overflow-hidden rounded-md box-border">
            <a class="portfolio-list-img block" href="#">
              <img class="absolute inset-0 h-full object-cover duration-1000" src="https://cdn.pixabay.com/photo/2020/12/27/12/07/sunrise-5863751_960_720.png" alt="">
            </a>
          </div>
          <div class="portfolio-list-info">
            <div class="portfolio-info-top">
              <a class="portfolio-title block py-2 text-2xl font-bold truncate" href="#">물위에 도시가 떠다니네요 정말 신기하군요</a>
            </div>
            <div class="portfolio-info-bottom flex text-xl mt-1 text-gray-500">
              <div class="portfolio-nickname text-black">
                <a href="#">유콩이</a>
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
        <div class="portfolio-list-item">
          <div class="portfolio-list-img-box relative pt-80p overflow-hidden rounded-md box-border">
            <a class="portfolio-list-img block" href="#">
              <img class="absolute inset-0 h-full object-cover duration-1000" src="https://cdn.pixabay.com/photo/2020/12/27/12/07/sunrise-5863751_960_720.png" alt="">
            </a>
          </div>
          <div class="portfolio-list-info">
            <div class="portfolio-info-top">
              <a class="portfolio-title block py-2 text-2xl font-bold truncate" href="#">물위에 도시가 떠다니네요 정말 신기하군요</a>
            </div>
            <div class="portfolio-info-bottom flex text-xl mt-1 text-gray-500">
              <div class="portfolio-nickname text-black">
                <a href="#">유콩이</a>
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
        

      </div>
    </div>
  </div>

</main>
<%@ include file="../part/mainLayoutFoot.jspf"%>
    