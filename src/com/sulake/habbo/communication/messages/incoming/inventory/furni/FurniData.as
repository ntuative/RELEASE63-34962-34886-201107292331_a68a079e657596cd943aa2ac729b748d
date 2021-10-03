package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2317:int;
      
      private var var_1653:String;
      
      private var _objId:int;
      
      private var var_2218:int;
      
      private var _category:int;
      
      private var var_2264:String;
      
      private var var_2397:Boolean;
      
      private var var_2398:Boolean;
      
      private var var_2401:Boolean;
      
      private var var_2400:Boolean;
      
      private var var_2399:int;
      
      private var var_2109:int;
      
      private var var_1921:String = "";
      
      private var var_1445:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2317 = param1;
         this.var_1653 = param2;
         this._objId = param3;
         this.var_2218 = param4;
         this._category = param5;
         this.var_2264 = param6;
         this.var_2397 = param7;
         this.var_2398 = param8;
         this.var_2401 = param9;
         this.var_2400 = param10;
         this.var_2399 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1921 = param1;
         this.var_2109 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2317;
      }
      
      public function get itemType() : String
      {
         return this.var_1653;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_2218;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2264;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2397;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2398;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2401;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2400;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2399;
      }
      
      public function get slotId() : String
      {
         return this.var_1921;
      }
      
      public function get songId() : int
      {
         return this.var_1445;
      }
      
      public function get extra() : int
      {
         return this.var_2109;
      }
   }
}
