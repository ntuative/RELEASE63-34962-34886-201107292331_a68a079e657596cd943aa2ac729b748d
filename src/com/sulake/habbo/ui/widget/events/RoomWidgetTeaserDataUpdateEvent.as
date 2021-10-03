package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetTeaserDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_574:String = "RWTDUE_TEASER_DATA";
      
      public static const const_916:String = "RWTDUE_GIFT_DATA";
      
      public static const const_819:String = "RWTDUE_GIFT_RECEIVED";
       
      
      private var var_238:int;
      
      private var _data:String;
      
      private var var_439:int;
      
      private var var_210:String;
      
      private var var_2432:String;
      
      private var var_2433:Boolean;
      
      private var var_1684:int = 0;
      
      private var var_2443:String;
      
      public function RoomWidgetTeaserDataUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function get objectId() : int
      {
         return this.var_238;
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function get status() : int
      {
         return this.var_439;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2432;
      }
      
      public function get giftWasReceived() : Boolean
      {
         return this.var_2433;
      }
      
      public function get ownRealName() : String
      {
         return this.var_2443;
      }
      
      public function get itemCategory() : int
      {
         return this.var_1684;
      }
      
      public function set status(param1:int) : void
      {
         this.var_439 = param1;
      }
      
      public function set data(param1:String) : void
      {
         this._data = param1;
      }
      
      public function set firstClickUserName(param1:String) : void
      {
         this.var_2432 = param1;
      }
      
      public function set giftWasReceived(param1:Boolean) : void
      {
         this.var_2433 = param1;
      }
      
      public function set ownRealName(param1:String) : void
      {
         this.var_2443 = param1;
      }
      
      public function set objectId(param1:int) : void
      {
         this.var_238 = param1;
      }
      
      public function get campaignID() : String
      {
         return this.var_210;
      }
      
      public function set campaignID(param1:String) : void
      {
         this.var_210 = param1;
      }
      
      public function set itemCategory(param1:int) : void
      {
         this.var_1684 = param1;
      }
   }
}
