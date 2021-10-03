package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureBottleVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1170:int = 20;
      
      private static const const_731:int = 9;
      
      private static const const_1714:int = -1;
       
      
      private var var_357:Array;
      
      private var var_766:Boolean = false;
      
      public function FurnitureBottleVisualization()
      {
         this.var_357 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_766)
            {
               this.var_766 = true;
               this.var_357 = new Array();
               this.var_357.push(const_1714);
               return;
            }
         }
         if(param1 >= 0 && param1 <= 7)
         {
            if(this.var_766)
            {
               this.var_766 = false;
               this.var_357 = new Array();
               this.var_357.push(const_1170);
               this.var_357.push(const_731 + param1);
               this.var_357.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(0))
         {
            if(this.var_357.length > 0)
            {
               super.setAnimation(this.var_357.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
