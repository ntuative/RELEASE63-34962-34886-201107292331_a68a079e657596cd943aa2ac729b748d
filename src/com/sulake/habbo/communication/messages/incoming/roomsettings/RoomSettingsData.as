package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_619:int = 0;
      
      public static const const_234:int = 1;
      
      public static const const_135:int = 2;
      
      public static const const_777:Array = ["open","closed","password"];
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1904:String;
      
      private var var_2381:int;
      
      private var var_1470:int;
      
      private var var_2799:int;
      
      private var var_2798:int;
      
      private var var_939:Array;
      
      private var var_2797:Array;
      
      private var var_2802:int;
      
      private var var_2378:Boolean;
      
      private var var_2801:Boolean;
      
      private var var_2795:Boolean;
      
      private var var_2796:Boolean;
      
      private var var_2794:int;
      
      private var var_2800:int;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2378;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2378 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2801;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2801 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2795;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2795 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2796;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2796 = param1;
      }
      
      public function get wallThickness() : int
      {
         return this.var_2794;
      }
      
      public function set wallThickness(param1:int) : void
      {
         this.var_2794 = param1;
      }
      
      public function get floorThickness() : int
      {
         return this.var_2800;
      }
      
      public function set floorThickness(param1:int) : void
      {
         this.var_2800 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1904;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1904 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2381;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2381 = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1470;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1470 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2799;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2799 = param1;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return this.var_2798;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         this.var_2798 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_939;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_939 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2797;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2797 = param1;
      }
      
      public function get controllerCount() : int
      {
         return this.var_2802;
      }
      
      public function set controllerCount(param1:int) : void
      {
         this.var_2802 = param1;
      }
   }
}
