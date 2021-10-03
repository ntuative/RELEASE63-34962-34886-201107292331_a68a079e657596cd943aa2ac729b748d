package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
       
      
      private var var_1960:int = 0;
      
      private var var_1535:Dictionary;
      
      private var var_1911:int = 0;
      
      private var var_1910:int = 0;
      
      private var var_2367:Boolean = false;
      
      private var var_2591:int = 0;
      
      private var var_2592:int = 0;
      
      private var var_2365:Boolean = false;
      
      public function Purse()
      {
         this.var_1535 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_1960;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_1960 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1911;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1911 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1910;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1910 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1911 > 0 || this.var_1910 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2367;
      }
      
      public function get isExpiring() : Boolean
      {
         return this.var_2365;
      }
      
      public function set isExpiring(param1:Boolean) : void
      {
         this.var_2365 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2367 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2591;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2591 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2592;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2592 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1535;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1535 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1535[param1];
      }
   }
}
