package com.sulake.habbo.ui.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetFurniInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_372:String = "RWFIUE_FURNI";
       
      
      private var _id:int = 0;
      
      private var _category:int = 0;
      
      private var _name:String = "";
      
      private var var_1904:String = "";
      
      private var var_49:BitmapData = null;
      
      private var var_2372:Boolean = false;
      
      private var var_2369:Boolean = false;
      
      private var var_2090:Boolean = false;
      
      private var var_2088:Boolean = false;
      
      private var var_2370:Boolean = false;
      
      private var var_2067:int = -1;
      
      private var var_2371:int = -1;
      
      private var var_1329:int = -1;
      
      private var var_1077:String = "";
      
      public function RoomWidgetFurniInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function set id(param1:int) : void
      {
         this._id = param1;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function set category(param1:int) : void
      {
         this._category = param1;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1904 = param1;
      }
      
      public function get description() : String
      {
         return this.var_1904;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_49 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_49;
      }
      
      public function set isWallItem(param1:Boolean) : void
      {
         this.var_2372 = param1;
      }
      
      public function get isWallItem() : Boolean
      {
         return this.var_2372;
      }
      
      public function set isStickie(param1:Boolean) : void
      {
         this.var_2369 = param1;
      }
      
      public function get isStickie() : Boolean
      {
         return this.var_2369;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_2090 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_2090;
      }
      
      public function set isRoomController(param1:Boolean) : void
      {
         this.var_2088 = param1;
      }
      
      public function get isRoomController() : Boolean
      {
         return this.var_2088;
      }
      
      public function set isAnyRoomController(param1:Boolean) : void
      {
         this.var_2370 = param1;
      }
      
      public function get isAnyRoomController() : Boolean
      {
         return this.var_2370;
      }
      
      public function set expiration(param1:int) : void
      {
         this.var_2067 = param1;
      }
      
      public function get expiration() : int
      {
         return this.var_2067;
      }
      
      public function set catalogPageId(param1:int) : void
      {
         this.var_2371 = param1;
      }
      
      public function get catalogPageId() : int
      {
         return this.var_2371;
      }
      
      public function set offerId(param1:int) : void
      {
         this.var_1329 = param1;
      }
      
      public function get offerId() : int
      {
         return this.var_1329;
      }
      
      public function set extraParam(param1:String) : void
      {
         this.var_1077 = param1;
      }
      
      public function get extraParam() : String
      {
         return this.var_1077;
      }
   }
}
