package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2790:String;
      
      private var var_2789:Class;
      
      private var var_2791:Class;
      
      private var var_2051:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2790 = param1;
         this.var_2789 = param2;
         this.var_2791 = param3;
         if(rest == null)
         {
            this.var_2051 = new Array();
         }
         else
         {
            this.var_2051 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2790;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2789;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2791;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_2051;
      }
   }
}
