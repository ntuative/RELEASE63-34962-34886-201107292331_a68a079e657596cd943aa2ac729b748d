package com.sulake.habbo.room.object
{
   public class RoomPlaneMaskData
   {
       
      
      private var var_2298:Number = 0.0;
      
      private var var_2299:Number = 0.0;
      
      private var var_2497:Number = 0.0;
      
      private var var_2498:Number = 0.0;
      
      public function RoomPlaneMaskData(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2298 = param1;
         this.var_2299 = param2;
         this.var_2497 = param3;
         this.var_2498 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2298;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2299;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2497;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2498;
      }
   }
}
