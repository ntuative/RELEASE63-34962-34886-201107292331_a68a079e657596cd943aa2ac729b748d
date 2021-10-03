package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2645:int;
      
      private var var_1653:String;
      
      private var var_2883:int;
      
      private var var_2882:int;
      
      private var _category:int;
      
      private var var_2264:String;
      
      private var var_2109:int;
      
      private var var_2879:int;
      
      private var var_2881:int;
      
      private var var_2885:int;
      
      private var var_2880:int;
      
      private var var_2884:Boolean;
      
      private var var_3134:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2645 = param1;
         this.var_1653 = param2;
         this.var_2883 = param3;
         this.var_2882 = param4;
         this._category = param5;
         this.var_2264 = param6;
         this.var_2109 = param7;
         this.var_2879 = param8;
         this.var_2881 = param9;
         this.var_2885 = param10;
         this.var_2880 = param11;
         this.var_2884 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2645;
      }
      
      public function get itemType() : String
      {
         return this.var_1653;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2883;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2882;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2264;
      }
      
      public function get extra() : int
      {
         return this.var_2109;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2879;
      }
      
      public function get creationDay() : int
      {
         return this.var_2881;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2885;
      }
      
      public function get creationYear() : int
      {
         return this.var_2880;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2884;
      }
      
      public function get songID() : int
      {
         return this.var_2109;
      }
   }
}
