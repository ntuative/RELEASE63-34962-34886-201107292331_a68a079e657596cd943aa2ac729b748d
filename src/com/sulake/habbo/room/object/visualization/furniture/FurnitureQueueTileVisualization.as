package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1714:int = 3;
      
      private static const const_1491:int = 2;
      
      private static const const_1490:int = 1;
      
      private static const const_1489:int = 15;
       
      
      private var var_357:Array;
      
      private var var_1207:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_357 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1491)
         {
            this.var_357 = new Array();
            this.var_357.push(const_1490);
            this.var_1207 = const_1489;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(this.var_1207 > 0)
         {
            --this.var_1207;
         }
         if(this.var_1207 == 0)
         {
            if(this.var_357.length > 0)
            {
               super.setAnimation(this.var_357.shift());
            }
         }
         return super.updateAnimation(param1);
      }
      
      override protected function usesAnimationResetting() : Boolean
      {
         return true;
      }
   }
}
