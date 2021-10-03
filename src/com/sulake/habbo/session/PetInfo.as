package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1865:int;
      
      private var var_1355:int;
      
      private var var_2511:int;
      
      private var var_2507:int;
      
      private var var_2503:int;
      
      private var _energy:int;
      
      private var var_2506:int;
      
      private var _nutrition:int;
      
      private var var_2504:int;
      
      private var var_2505:int;
      
      private var _ownerName:String;
      
      private var var_2752:int;
      
      private var var_524:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1865;
      }
      
      public function get level() : int
      {
         return this.var_1355;
      }
      
      public function get levelMax() : int
      {
         return this.var_2511;
      }
      
      public function get experience() : int
      {
         return this.var_2507;
      }
      
      public function get experienceMax() : int
      {
         return this.var_2503;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_2506;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_2504;
      }
      
      public function get ownerId() : int
      {
         return this.var_2505;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get respect() : int
      {
         return this.var_2752;
      }
      
      public function get age() : int
      {
         return this.var_524;
      }
      
      public function set petId(param1:int) : void
      {
         this.var_1865 = param1;
      }
      
      public function set level(param1:int) : void
      {
         this.var_1355 = param1;
      }
      
      public function set levelMax(param1:int) : void
      {
         this.var_2511 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         this.var_2507 = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         this.var_2503 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         this._energy = param1;
      }
      
      public function set energyMax(param1:int) : void
      {
         this.var_2506 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         this._nutrition = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         this.var_2504 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         this.var_2505 = param1;
      }
      
      public function set ownerName(param1:String) : void
      {
         this._ownerName = param1;
      }
      
      public function set respect(param1:int) : void
      {
         this.var_2752 = param1;
      }
      
      public function set age(param1:int) : void
      {
         this.var_524 = param1;
      }
   }
}
