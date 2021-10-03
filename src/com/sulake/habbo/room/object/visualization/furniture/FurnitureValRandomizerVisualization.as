package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1170:int = 20;
      
      private static const const_731:int = 10;
      
      private static const const_1715:int = 31;
      
      private static const const_1714:int = 32;
      
      private static const const_732:int = 30;
       
      
      private var var_357:Array;
      
      private var var_766:Boolean = false;
      
      public function FurnitureValRandomizerVisualization()
      {
         this.var_357 = new Array();
         super();
         super.setAnimation(const_732);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            if(!this.var_766)
            {
               this.var_766 = true;
               this.var_357 = new Array();
               this.var_357.push(const_1715);
               this.var_357.push(const_1714);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_731)
         {
            if(this.var_766)
            {
               this.var_766 = false;
               this.var_357 = new Array();
               if(direction == 2)
               {
                  this.var_357.push(const_1170 + 5 - param1);
                  this.var_357.push(const_731 + 5 - param1);
               }
               else
               {
                  this.var_357.push(const_1170 + param1);
                  this.var_357.push(const_731 + param1);
               }
               this.var_357.push(const_732);
               return;
            }
            super.setAnimation(const_732);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(11))
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
