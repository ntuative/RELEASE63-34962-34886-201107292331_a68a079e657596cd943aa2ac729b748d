package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_1372:String = "select_outfit";
       
      
      private var var_3001:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_1372);
         this.var_3001 = param1;
      }
      
      public function get outfitId() : int
      {
         return this.var_3001;
      }
   }
}
