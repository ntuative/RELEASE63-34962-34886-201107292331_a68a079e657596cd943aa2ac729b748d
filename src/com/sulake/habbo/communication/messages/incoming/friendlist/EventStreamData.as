package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class EventStreamData
   {
      
      public static const const_596:uint = 0;
      
      public static const const_993:uint = 1;
      
      public static const const_875:uint = 2;
      
      public static const const_1379:uint = 3;
      
      public static const const_2063:uint = 3;
      
      public static const const_1892:int = 0;
      
      public static const const_1344:int = 1;
      
      public static const const_1760:int = 2;
      
      public static const const_1907:int = 3;
      
      public static const LINK_TARGET_OPEN_MOTTO_CHANGER:int = 4;
      
      public static const const_1865:int = 5;
       
      
      private var _id:int;
      
      private var var_2419:int;
      
      private var var_2413:String;
      
      private var var_2417:String;
      
      private var var_2415:String;
      
      private var var_1773:String;
      
      private var var_2414:int;
      
      private var var_2416:int;
      
      private var var_2418:Object;
      
      public function EventStreamData(param1:int, param2:int, param3:String, param4:String, param5:String, param6:String, param7:int, param8:int, param9:IMessageDataWrapper)
      {
         super();
         this._id = param1;
         this.var_2419 = param2;
         this.var_2413 = param3;
         this.var_2417 = param4;
         this.var_2415 = param5;
         this.var_1773 = param6;
         this.var_2414 = param7;
         this.var_2416 = param8;
         this.var_2418 = parse(param2,param9);
      }
      
      protected static function parse(param1:int, param2:IMessageDataWrapper) : Object
      {
         var _loc3_:Object = new Object();
         switch(param1)
         {
            case const_596:
               _loc3_.friendId = param2.readString();
               _loc3_.friendName = param2.readString();
               break;
            case const_993:
               _loc3_.roomId = param2.readString();
               _loc3_.roomName = param2.readString();
               break;
            case const_875:
               _loc3_.achievementCode = param2.readString();
               break;
            case const_1379:
               _loc3_.motto = param2.readString();
         }
         return _loc3_;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get actionId() : int
      {
         return this.var_2419;
      }
      
      public function get accountId() : String
      {
         return this.var_2413;
      }
      
      public function get accountName() : String
      {
         return this.var_2417;
      }
      
      public function get imageFilePath() : String
      {
         return this.var_1773;
      }
      
      public function get minutesSinceEvent() : int
      {
         return this.var_2414;
      }
      
      public function get linkTargetType() : int
      {
         return this.var_2416;
      }
      
      public function get extraDataStruct() : Object
      {
         return this.var_2418;
      }
      
      public function get accountGender() : String
      {
         return this.var_2415;
      }
   }
}

class Struct
{
    
   
   function Struct()
   {
      super();
   }
}

class FriendMadeStruct extends Struct
{
    
   
   public var friendId:String;
   
   public var friendName:String;
   
   function FriendMadeStruct(param1:String, param2:String)
   {
      super();
      this.friendId = param1;
      this.friendName = param2;
   }
}

class RoomLikedStruct extends Struct
{
    
   
   public var roomId:String;
   
   public var roomName:String;
   
   function RoomLikedStruct(param1:String, param2:String)
   {
      super();
      this.roomId = param1;
      this.roomName = param2;
   }
}

class AchievementEarnedStruct extends Struct
{
    
   
   public var achievementCode:String;
   
   function AchievementEarnedStruct(param1:String)
   {
      super();
      this.achievementCode = param1;
   }
}
