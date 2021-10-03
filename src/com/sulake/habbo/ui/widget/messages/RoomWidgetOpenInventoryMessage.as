package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_942:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1825:String = "inventory_effects";
      
      public static const const_1316:String = "inventory_badges";
      
      public static const const_2008:String = "inventory_clothes";
      
      public static const const_1795:String = "inventory_furniture";
       
      
      private var var_2807:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_942);
         this.var_2807 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2807;
      }
   }
}
