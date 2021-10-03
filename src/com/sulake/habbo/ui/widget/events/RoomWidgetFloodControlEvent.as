package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetFloodControlEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_971:String = "RWFCE_FLOOD_CONTROL";
       
      
      private var var_1918:int = 0;
      
      public function RoomWidgetFloodControlEvent(param1:int)
      {
         super(const_971,false,false);
         this.var_1918 = param1;
      }
      
      public function get seconds() : int
      {
         return this.var_1918;
      }
   }
}
