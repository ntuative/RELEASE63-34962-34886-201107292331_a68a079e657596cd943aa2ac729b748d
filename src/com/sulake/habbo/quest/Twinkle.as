package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public class Twinkle implements AnimationObject, IDisposable
   {
      
      private static const const_1655:int = 100;
      
      private static const const_1147:Array = [1,2,3,4,5,6,5,4,3,2,1];
      
      private static const const_1656:int = -1;
      
      private static const const_1146:int = -2;
      
      private static const APPEAR_AREA:Point = new Point(44,44);
       
      
      private var _twinkleImages:TwinkleImages;
      
      private var var_2918:int;
      
      private var var_1249:Point;
      
      public function Twinkle(param1:TwinkleImages, param2:int)
      {
         super();
         this._twinkleImages = param1;
         this.var_2918 = param2;
      }
      
      public function dispose() : void
      {
         this._twinkleImages = null;
         this.var_1249 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._twinkleImages == null;
      }
      
      public function onAnimationStart() : void
      {
         this.var_1249 = new Point(Math.round(Math.random() * 0),Math.round(Math.random() * 0));
      }
      
      public function getPosition(param1:int) : Point
      {
         return this.var_1249;
      }
      
      public function isFinished(param1:int) : Boolean
      {
         return this.getFrame(param1) == const_1146;
      }
      
      public function getBitmap(param1:int) : BitmapData
      {
         var _loc2_:int = this.getFrame(param1);
         return this._twinkleImages.getImage(const_1147[_loc2_]);
      }
      
      private function getFrame(param1:int) : int
      {
         var _loc2_:int = param1 - this.var_2918;
         if(_loc2_ < 0)
         {
            return const_1656;
         }
         var _loc3_:int = Math.floor(_loc2_ / const_1655);
         if(_loc3_ >= const_1147.length)
         {
            return const_1146;
         }
         return _loc3_;
      }
   }
}
