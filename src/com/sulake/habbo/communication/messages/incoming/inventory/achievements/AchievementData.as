package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1355:int;
      
      private var var_1944:String;
      
      private var var_1798:int;
      
      private var var_2426:int;
      
      private var var_2425:int;
      
      private var var_1796:int;
      
      private var var_1797:Boolean;
      
      private var _category:String;
      
      private var var_2424:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1355 = param1.readInteger();
         this.var_1944 = param1.readString();
         this.var_1798 = Math.max(1,param1.readInteger());
         this.var_2426 = param1.readInteger();
         this.var_2425 = param1.readInteger();
         this.var_1796 = param1.readInteger();
         this.var_1797 = param1.readBoolean();
         this._category = param1.readString();
         this.var_2424 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_1944;
      }
      
      public function get level() : int
      {
         return this.var_1355;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_1798;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2426;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_2425;
      }
      
      public function get currentPoints() : int
      {
         return this.var_1796;
      }
      
      public function get finalLevel() : Boolean
      {
         return this.var_1797;
      }
      
      public function get category() : String
      {
         return this._category;
      }
      
      public function get levelCount() : int
      {
         return this.var_2424;
      }
      
      public function get firstLevelAchieved() : Boolean
      {
         return this.var_1355 > 1 || this.var_1797;
      }
      
      public function setMaxProgress() : void
      {
         this.var_1796 = this.var_1798;
      }
   }
}
