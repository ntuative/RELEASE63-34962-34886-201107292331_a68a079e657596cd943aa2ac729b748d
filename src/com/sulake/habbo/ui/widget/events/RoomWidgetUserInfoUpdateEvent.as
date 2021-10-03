package com.sulake.habbo.ui.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_115:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_163:String = "RWUIUE_PEER";
      
      public static const TRADE_REASON_OK:int = 0;
      
      public static const const_1027:int = 2;
      
      public static const const_1031:int = 3;
      
      public static const const_1890:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1858:String = "";
      
      private var var_2323:int;
      
      private var var_2634:int = 0;
      
      private var var_2630:int = 0;
      
      private var var_666:String = "";
      
      private var var_49:BitmapData = null;
      
      private var var_264:Array;
      
      private var var_1677:int = 0;
      
      private var var_2669:String = "";
      
      private var var_2677:int = 0;
      
      private var var_2671:int = 0;
      
      private var var_2087:Boolean = false;
      
      private var var_1859:String = "";
      
      private var var_2280:Boolean = false;
      
      private var var_2670:Boolean = false;
      
      private var var_2675:Boolean = true;
      
      private var var_1254:int = 0;
      
      private var var_2679:Boolean = false;
      
      private var var_2676:Boolean = false;
      
      private var var_2673:Boolean = false;
      
      private var var_2672:Boolean = false;
      
      private var var_2678:Boolean = false;
      
      private var var_2668:Boolean = false;
      
      private var var_2674:int = 0;
      
      private var var_2090:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_264 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1858 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1858;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2323 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2323;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2634 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2634;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2630 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2630;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_666 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_666;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_49 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_49;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_264 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_264;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1677 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1677;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2669 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2669;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2670 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2670;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this.var_1254 = param1;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1254;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2679 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2679;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2676 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2676;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2673 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2673;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2672 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2672;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2678 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2678;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2668 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2668;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2674 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2674;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2675 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2675;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_2090 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_2090;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2677 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2677;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2671 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2671;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_2087 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_2087;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1859 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1859;
      }
      
      public function set allowNameChange(param1:Boolean) : void
      {
         this.var_2280 = param1;
      }
      
      public function get allowNameChange() : Boolean
      {
         return this.var_2280;
      }
   }
}
