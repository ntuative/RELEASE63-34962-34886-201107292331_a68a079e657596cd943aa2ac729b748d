package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1911:int = 0;
      
      private var var_1910:int = 0;
      
      private var var_2364:int = 0;
      
      private var var_2366:Boolean = false;
      
      private var var_2367:Boolean = false;
      
      private var var_2365:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1911 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1910 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2364 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2366 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2367 = param1;
      }
      
      public function set clubIsExpiring(param1:Boolean) : void
      {
         this.var_2365 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1911;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1910;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2364;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2366;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2367;
      }
      
      public function get clubIsExpiring() : Boolean
      {
         return this.var_2365;
      }
   }
}
