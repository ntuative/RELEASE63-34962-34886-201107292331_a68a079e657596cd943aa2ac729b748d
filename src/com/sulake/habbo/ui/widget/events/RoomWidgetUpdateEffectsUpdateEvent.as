package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetUpdateEffectsUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_838:String = "RWUEUE_UPDATE_EFFECTS";
       
      
      private var var_277:Array;
      
      public function RoomWidgetUpdateEffectsUpdateEvent(param1:Array = null, param2:Boolean = false, param3:Boolean = false)
      {
         super(const_838,param2,param3);
         this.var_277 = param1;
      }
      
      public function get effects() : Array
      {
         return this.var_277;
      }
   }
}
