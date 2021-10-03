package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetConversionPointMessage extends RoomWidgetMessage
   {
      
      public static const const_786:String = "RWCPM_CONVERSION_POINT";
       
      
      private var _category:String;
      
      private var var_2573:String;
      
      private var _action:String;
      
      private var var_2482:String;
      
      private var var_2483:int;
      
      public function RoomWidgetConversionPointMessage(param1:String, param2:String, param3:String, param4:String, param5:String = "", param6:int = 0)
      {
         super(param1);
         this._category = param2;
         this.var_2573 = param3;
         this._action = param4;
         this.var_2482 = !!param5 ? param5 : "";
         this.var_2483 = !!param6 ? int(param6) : 0;
      }
      
      public function get category() : String
      {
         return this._category;
      }
      
      public function get pointType() : String
      {
         return this.var_2573;
      }
      
      public function get action() : String
      {
         return this._action;
      }
      
      public function get extraString() : String
      {
         return this.var_2482;
      }
      
      public function get extraInt() : int
      {
         return this.var_2483;
      }
   }
}
