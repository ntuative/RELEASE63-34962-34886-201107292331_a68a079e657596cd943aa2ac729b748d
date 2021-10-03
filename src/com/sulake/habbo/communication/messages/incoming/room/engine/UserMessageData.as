package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1342:String = "M";
      
      public static const const_1909:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_187:Number = 0;
      
      private var var_188:Number = 0;
      
      private var var_457:int = 0;
      
      private var _name:String = "";
      
      private var var_1718:int = 0;
      
      private var var_1140:String = "";
      
      private var var_666:String = "";
      
      private var var_2632:String = "";
      
      private var var_2323:int;
      
      private var var_2634:int = 0;
      
      private var var_2635:String = "";
      
      private var var_2633:int = 0;
      
      private var var_2630:int = 0;
      
      private var var_2631:String = "";
      
      private var var_197:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_197 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_197)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_187;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_197)
         {
            this.var_187 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_188;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_197)
         {
            this.var_188 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_457;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_197)
         {
            this.var_457 = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_197)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this.var_1718;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_197)
         {
            this.var_1718 = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_1140;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_197)
         {
            this.var_1140 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_666;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_197)
         {
            this.var_666 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2632;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_197)
         {
            this.var_2632 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2323;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_197)
         {
            this.var_2323 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2634;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_197)
         {
            this.var_2634 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2635;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_197)
         {
            this.var_2635 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2633;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_197)
         {
            this.var_2633 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2630;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_197)
         {
            this.var_2630 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2631;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_197)
         {
            this.var_2631 = param1;
         }
      }
   }
}
