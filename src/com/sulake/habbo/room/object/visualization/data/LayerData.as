package com.sulake.habbo.room.object.visualization.data
{
   public class LayerData
   {
      
      public static const const_778:String = "";
      
      public static const const_434:int = 0;
      
      public static const const_565:int = 255;
      
      public static const const_952:Boolean = false;
      
      public static const const_530:int = 0;
      
      public static const const_577:int = 0;
      
      public static const const_424:int = 0;
      
      public static const const_1422:int = 1;
      
      public static const const_1373:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2330:String = "";
      
      private var var_2164:int = 0;
      
      private var var_2500:int = 255;
      
      private var var_3004:Boolean = false;
      
      private var var_3002:int = 0;
      
      private var var_3005:int = 0;
      
      private var var_3003:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2330 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2330;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_2164 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_2164;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2500 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2500;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_3004 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_3004;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_3002 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_3002;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_3005 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_3005;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_3003 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_3003;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
