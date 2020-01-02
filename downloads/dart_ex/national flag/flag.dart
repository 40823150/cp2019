import 'dart:html';
import 'dart:math' as Math;

CanvasElement canvas;
CanvasRenderingContext2D ctx;
int flag_w = 300;
int flag_h = 200;
num circle_x = flag_w / 2;
num circle_y = flag_h / 2;

void main() {
  canvas = querySelector('#canvas');
  ctx = canvas.getContext('2d');

  drawJP(ctx);
  querySelector("#JP").onClick.listen((e) => drawJP(ctx));
   querySelector("#ROC").onClick.listen((e) => drawROC(ctx));
  querySelector("#button").onClick.listen((e) => clearCanvas());
  querySelector("#FR").onClick.listen((e) => drawFR(ctx));
  querySelector("#TP").onClick.listen((e) => drawTP(ctx));
   querySelector("#PR").onClick.listen((e) => drawPR(ctx));
   querySelector("#GE").onClick.listen((e) => drawGE(ctx));
}


void drawJP(ctx){
  // 先畫滿地紅
  ctx.clearRect(15, 0, flag_w, flag_h);
  ctx.fillStyle = '#fff';
  ctx.clearRect(30, 0, flag_w, flag_h);
  ctx.fillStyle = '#fff';
  ctx.fillRect(0, 0, flag_w, flag_h);
  ctx.closePath();
  // 將填色設為白色
  ctx.fillStyle = '#fff';
  ctx.fill();
  // 白日:白心
  ctx.beginPath();
  ctx.arc(circle_x, circle_y, flag_w / 5, 0, Math.pi * 2, true);
  ctx.closePath();
  ctx.fillStyle = '#ff0000';
  ctx.fill();
}
void drawROC(ctx){
  // 先畫滿地紅
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = 'rgb(255, 0, 0)';
  ctx.fillRect(0, 0, flag_w, flag_h);
  // 再畫青天
  ctx.fillStyle = 'rgb(0, 0, 150)';
  ctx.fillRect(0, 0, flag_w / 2, flag_h / 2);
  // 畫十二道光芒白日
  ctx.beginPath();
  num star_radius = flag_w / 8;
  num angle = 0;
  for (int i = 0; i < 25; i++) {
    angle += 5 * Math.pi * 2 / 12;
    num toX = 75 + Math.cos(angle) * star_radius;
    num toY = 50 + Math.sin(angle) * star_radius;
    // 只有 i 為 0 時移動到 toX, toY, 其餘都進行 lineTo
    if (i != 0)
      ctx.lineTo(toX, toY);
    else
      ctx.moveTo(toX, toY);
  }
  ctx.closePath();
  // 將填色設為白色
  ctx.fillStyle = '#fff';
  ctx.fill();
  // 白日:藍圈
  ctx.beginPath();
  ctx.arc(75, 50, flag_w * 17 / 240, 0, Math.pi * 2, true);
  ctx.closePath();
  // 填色設為藍色
  ctx.fillStyle = 'rgb(0, 0, 149)';
  ctx.fill();
  // 白日:白心
  ctx.beginPath();
  ctx.arc(75, 50, flag_w / 16, 0, Math.pi * 2, true);
  ctx.closePath();
  // 填色設為白色
  ctx.fillStyle = '#fff';
  ctx.fill();
}

void drawFR(ctx){
  // 先畫滿地紅
  ctx.clearRect(0, 0, flag_w, flag_h);
 ctx.fillStyle = '#3f48cc';
  ctx.fillRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = '#f1f2f8';
   ctx.fillRect(90,0, flag_w, flag_h);
  ctx.fillStyle = '#ec1c24';
  ctx.fillRect(189,0, flag_w, flag_h);
  ctx.closePath();
}

void drawTP(ctx){
  // 先畫滿地紅
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = '#f5f6f8';
  ctx.fillRect(0, 0, flag_w, flag_h);
   ctx.fillStyle = '#0036a8';
  ctx.fillRect(0, 66, flag_w, flag_h); 
  ctx.fillStyle = '#d62718';
  ctx.fillRect(0,132, flag_w, flag_h); 
 

  ctx.closePath();
 
}

void drawUSA(ctx){
  // 請畫出美國國旗
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.font = "30px Arial";
  ctx.strokeStyle = 'rgb(255, 0, 0)';
  ctx.strokeText("請畫出美國國旗", flag_w/6, flag_w/4);
}

void drawPR(ctx){
  // 先畫滿地紅
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = 'rgb(255, 0, 0)';
  ctx.fillRect(0, 0, flag_w, flag_h);
 ctx.fillStyle = '#f7f3f3';
    ctx.fillRect(0, 66, flag_w, flag_h);
  ctx.fillStyle = '#1b448c';
  ctx.fillRect(0, 132, flag_w, flag_h);
  

}


void drawGE(ctx){
  // 先畫滿地紅
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = '#000000';
  ctx.fillRect(0, 0, flag_w, flag_h);
 ctx.fillStyle = '#de0000';
    ctx.fillRect(0, 66, flag_w, flag_h);
  ctx.fillStyle = '#ffcf00';
  ctx.fillRect(0, 132, flag_w, flag_h);
  
}


void clearCanvas(){
  ctx.clearRect(0, 0, flag_w, flag_h);
}