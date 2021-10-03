package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_1039:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_1249:String = "RWOCM_CLUB_MAIN";
      
      public static const const_2210:String = "RWOCM_PIXELS";
      
      public static const const_2265:String = "RWOCM_CREDITS";
      
      public static const const_2339:String = "RWOCM_SHELLS";
       
      
      private var var_2600:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_1039);
         this.var_2600 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2600;
      }
   }
}
