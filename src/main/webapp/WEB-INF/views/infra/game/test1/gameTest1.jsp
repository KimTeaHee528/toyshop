<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!-- jstl s -->
<%@include file="../../common/comm/includeV1/jstl.jsp"%>
<!-- jstl e -->
<!DOCTYPE html>
<html lang="en">
	<!-- head s -->
	<%@include file="../../common/xdmin/includeV1/head.jsp"%>
	<!-- head e -->
<body>
	<div style="display:block; margin-bottom:800px; width: 100%; text-align: center;">
	<!-- top s -->
	<%@include file="../../common/user/includeV1/top.jsp"%>
	<!-- top e -->
		<!--=========내용=========-->
	</div>

	<br>
	<h1>WebGl</h1>
	<div style="display:block; margin-top:0px; width: 100%; text-align: center;">
		<div style="display: inline-block; text-align: center; width: 960px; overflow: auto;">
			<div id="unity-container" class="unity-desktop" style="width:960px;">
				<canvas id="unity-canvas" style="width:960px; height:600px;"></canvas>
				<div id="unity-loading-bar">
					<div id="unity-logo" style=" width: 154px; height: 130px; background: url('/resources/WebGlFallBack/TemplateData/unity-logo-dark.png') no-repeat center "></div>
					<div id="unity-progress-bar-empty" style="width: 141px; height: 18px; margin-top: 10px; margin-left: 6.5px; background: url('/resources/WebGlFallBack/TemplateData/progress-bar-empty-dark.png') no-repeat center">
						<div id="unity-progress-bar-full" style="width: 0%; height: 18px; margin-top: 10px; background: url('/resources/WebGlFallBack/TemplateData/progress-bar-full-dark.png') no-repeat center"></div>
					</div>
				</div>
				<div id="unity-warning"> </div>
				<div id="unity-footer" style="position: relative">
					<div id="unity-webgl-logo" style="float:left; width: 204px; height: 38px; background: url('/resources/WebGlFallBack/TemplateData/webgl-logo.png') no-repeat center"></div>
					<div id="unity-fullscreen-button" style="float: right; width: 38px; height: 38px; background: url('/resources/WebGlFallBack/TemplateData/fullscreen-button.png') no-repeat center"></div>
					<div id="unity-build-title" style="float: right; margin-right: 10px; line-height: 38px; font-family: arial; font-size: 18px">2dRun</div>
				</div>
			</div>
		</div>
	</div>
<!-- 	<div style="display:block; margin-top:0px; width: 100%; text-align: center;"> -->
<!-- 		<div style="display: inline-block; text-align: center; width: 960px; overflow: auto;"> -->
<!-- 			<canvas id="modelA" style="border: 1px solid black"></canvas> -->
<!-- 		</div> -->
<!-- 	</div> -->
<canvas id="c"></canvas>

					
<!--   리스트 넣는곳   -->



<!-- foot s -->
	<%@include file="../../common/comm/includeV1/foot.jsp"%>
<!-- foot e -->
	<!--======= RIGHTS =========-->
	<script src="/resources/js/jquery-1.11.3.min.js"></script>
	<script src="/resources/js/bootstrap.min.js"></script>
	<script src="/resources/js/own-menu.js"></script>
	<script src="/resources/js/jquery.lighter.js"></script>
	<script src="/resources/js/owl.carousel.min.js"></script>

	<!-- SLIDER REVOLUTION 4.x SCRIPTS  -->
	<script type="text/javascript" src="/resources/rs-plugin/js/jquery.tp.t.min.js"></script>
	<script type="text/javascript" src="/resources/rs-plugin/js/jquery.tp.min.js"></script>
	<script src="/resources/js/main.js"></script>
	<script src="https://kit.fontawesome.com/0089819b08.js" crossorigin="anonymous"></script>
	
    <script>
      var container = document.querySelector("#unity-container");
      var canvas = document.querySelector("#unity-canvas");
      var loadingBar = document.querySelector("#unity-loading-bar");
      var progressBarFull = document.querySelector("#unity-progress-bar-full");
      var fullscreenButton = document.querySelector("#unity-fullscreen-button");
      var warningBanner = document.querySelector("#unity-warning");

      // Shows a temporary message banner/ribbon for a few seconds, or
      // a permanent error message on top of the canvas if type=='error'.
      // If type=='warning', a yellow highlight color is used.
      // Modify or remove this function to customize the visually presented
      // way that non-critical warnings and error messages are presented to the
      // user.
      function unityShowBanner(msg, type) {
        function updateBannerVisibility() {
          warningBanner.style.display = warningBanner.children.length ? 'block' : 'none';
        }
        var div = document.createElement('div');
        div.innerHTML = msg;
        warningBanner.appendChild(div);
        if (type == 'error') div.style = 'background: red; padding: 10px;';
        else {
          if (type == 'warning') div.style = 'background: yellow; padding: 10px;';
          setTimeout(function() {
            warningBanner.removeChild(div);
            updateBannerVisibility();
          }, 5000);
        }
        updateBannerVisibility();
      }

      var buildUrl = "/resources/WebGlFallBack/Build";
      var loaderUrl = buildUrl + "/WebGlFallBack.loader.js";
      var config = {
        dataUrl: buildUrl + "/WebGlFallBack.data.unityweb",
        frameworkUrl: buildUrl + "/WebGlFallBack.framework.js.unityweb",
        codeUrl: buildUrl + "/WebGlFallBack.wasm.unityweb",
        streamingAssetsUrl: "/resources/WebGlFallBack/StreamingAssets",
        companyName: "DefaultCompany",
        productName: "2dRun",
        productVersion: "4.0.1",
        showBanner: unityShowBanner,
      };

      // By default Unity keeps WebGL canvas render target size matched with
      // the DOM size of the canvas element (scaled by window.devicePixelRatio)
      // Set this to false if you want to decouple this synchronization from
      // happening inside the engine, and you would instead like to size up
      // the canvas DOM size and WebGL render target sizes yourself.
      // config.matchWebGLToCanvasSize = false;

//       if (/iPhone|iPad|iPod|Android/i.test(navigator.userAgent)) {
//         // Mobile device style: fill the whole browser client area with the game canvas:

//         var meta = document.createElement('meta');
//         meta.name = 'viewport';
//         meta.content = 'width=device-width, height=device-height, initial-scale=1.0, user-scalable=no, shrink-to-fit=yes';
//         document.getElementsByTagName('head')[0].appendChild(meta);
//         container.className = "unity-mobile";
//         canvas.className = "unity-mobile";

//         // To lower canvas resolution on mobile devices to gain some
//         // performance, uncomment the following line:
//         // config.devicePixelRatio = 1;

//         unityShowBanner('WebGL builds are not supported on mobile devices.');
//       } else {
//         // Desktop style: Render the game canvas in a window that can be maximized to fullscreen:

//         canvas.style.width = "960px";
//         canvas.style.height = "600px";
//       }

      loadingBar.style.display = "block";

      var script = document.createElement("script");
      script.src = loaderUrl;
      script.onload = () => {
        createUnityInstance(canvas, config, (progress) => {
          progressBarFull.style.width = 100 * progress + "%";
        }).then((unityInstance) => {
          loadingBar.style.display = "none";
          fullscreenButton.onclick = () => {
            unityInstance.SetFullscreen(1);
          };
        }).catch((message) => {
          alert(message);
        });
      };
      document.body.appendChild(script);
    </script>
    
	<!--=======게임 키보드 제어 관련=======-->
	<script type="text/javascript">
		var keyLock = 0;
		jQuery(document).click(function(l){
			if(l.target.nodeName != "CANVAS" || l.target.nodeName != "CANVAS"){
				keyLock = 0;
			}else{
				keyLock = 1;
			}
		});
		jQuery(document).keydown(function(e){
			if(keyLock == 1){
				if(e.keyCode === 37 || e.keyCode === 38 || e.keyCode === 39 || e.keyCode === 40 || e.keyCode === 32){
						event.preventDefault();
					}
				} 
		});
	</script>
	
	<!--=======모델적용=======-->
	<script src="https://r105.threejsfundamentals.org/threejs/resources/threejs/r105/three.min.js"></script>
	<script type="text/javascript">
	  'use strict';

	  /* global THREE */

	  function main() {
	    const canvas = document.querySelector('#c');
	    const renderer = new THREE.WebGLRenderer({canvas});

	    const fov = 75;
	    const aspect = 2;  // the canvas default
	    const near = 0.1;
	    const far = 5;
	    const camera = new THREE.PerspectiveCamera(fov, aspect, near, far);
	    camera.position.z = 2;

	    const scene = new THREE.Scene();

	    const boxWidth = 1;
	    const boxHeight = 1;
	    const boxDepth = 1;
	    const geometry = new THREE.BoxGeometry(boxWidth, boxHeight, boxDepth);

	    const cubes = [];  // just an array we can use to rotate the cubes
	    const loader = new THREE.TextureLoader();

	    const material = new THREE.MeshBasicMaterial({
	      map: loader.load('/resources/3D/gltfTest/source/face.gltf'),
// 	      map: loader.load('https://r105.threejsfundamentals.org/threejs/resources/images/wall.jpg'),
	    });
	    const cube = new THREE.Mesh(geometry, material);
	    scene.add(cube);
	    cubes.push(cube);  // add to our list of cubes to rotate

	    function resizeRendererToDisplaySize(renderer) {
	      const canvas = renderer.domElement;
	      const width = canvas.clientWidth;
	      const height = canvas.clientHeight;
	      const needResize = canvas.width !== width || canvas.height !== height;
	      if (needResize) {
	        renderer.setSize(width, height, false);
	      }
	      return needResize;
	    }

	    function render(time) {
	      time *= 0.001;

	      if (resizeRendererToDisplaySize(renderer)) {
	        const canvas = renderer.domElement;
	        camera.aspect = canvas.clientWidth / canvas.clientHeight;
	        camera.updateProjectionMatrix();
	      }

	      cubes.forEach((cube, ndx) => {
	        const speed = .2 + ndx * .1;
	        const rot = time * speed;
	        cube.rotation.x = rot;
	        cube.rotation.y = rot;
	      });

	      renderer.render(scene, camera);

	      requestAnimationFrame(render);
	    }

	    requestAnimationFrame(render);
	  }

	  main();
	
	
	</script>
	<!-- 
	<script type="importmap">
		{
			"imports":{
				"three":"https://unpkg.com/three@0.141.0/build/three.module.js",
				"GLTFLoader" : "https://unpkg.com/three@0.141.0/examples/jsm/loaders/GLTFLoader.js"
			}
		}
	</script>
	<script type="module">
		import {GLTFLoader} from 'GLTFLoader';
		import * as THREE from 'three';

		let scene = new THREE.Scene();
		let renderer = new THREE.WebGLRenderer({
			canvas : document.querySelector('#modelA')
		});

		let camera = new THREE.PerspectiveCamera(30,1);
		camera.posirion.set(0,0,5);

		scene.background = new THREE.Color('white');
		let light = new THREE.DirectionalLight(0xffff00, 10);
		scene.add(light);

		let load = new GLTFLoader();
		loader.load('resources/3D/gltfTest/source/face.gltf', function(gltf){
			scene.add(gltf.scene);
			renderer.render(scene);
		});
		
		renderer.render(scene, camera);
	</script>	
	 -->
	
	
	
</body>
</html>