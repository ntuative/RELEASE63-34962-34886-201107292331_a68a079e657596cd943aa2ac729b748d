package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetEcotronBoxOpenedMessage extends RoomWidgetMessage
   {
      
      public static const const_1788:String = "RWEBOM_ECOTRONBOX_OPENED";
       
      
      private var var_1653:String;
      
      private var var_2218:int;
      
      public function RoomWidgetEcotronBoxOpenedMessage(param1:String, param2:String, param3:int)
      {
         super(param1);
         this.var_1653 = param2;
         this.var_2218 = param3;
      }
      
      public function get itemType() : String
      {
         return this.var_1653;
      }
      
      public function get classId() : int
      {
         return this.var_2218;
      }
   }
}
