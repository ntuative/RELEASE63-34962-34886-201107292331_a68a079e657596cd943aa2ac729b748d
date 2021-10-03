package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_63:String = "i";
      
      public static const const_73:String = "s";
      
      public static const const_193:String = "e";
       
      
      private var var_1608:String;
      
      private var var_2821:int;
      
      private var var_1077:String;
      
      private var var_1607:int;
      
      private var var_2067:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1608 = param1.readString();
         this.var_2821 = param1.readInteger();
         this.var_1077 = param1.readString();
         this.var_1607 = param1.readInteger();
         this.var_2067 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1608;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2821;
      }
      
      public function get extraParam() : String
      {
         return this.var_1077;
      }
      
      public function get productCount() : int
      {
         return this.var_1607;
      }
      
      public function get expiration() : int
      {
         return this.var_2067;
      }
   }
}
