package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_1601:IID;
      
      private var var_2053:String;
      
      private var var_123:IUnknown;
      
      private var var_853:uint;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         this.var_1601 = param1;
         this.var_2053 = getQualifiedClassName(this.var_1601);
         this.var_123 = param2;
         this.var_853 = 0;
      }
      
      public function get iid() : IID
      {
         return this.var_1601;
      }
      
      public function get iis() : String
      {
         return this.var_2053;
      }
      
      public function get unknown() : IUnknown
      {
         return this.var_123;
      }
      
      public function get references() : uint
      {
         return this.var_853;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_123 == null;
      }
      
      public function dispose() : void
      {
         this.var_1601 = null;
         this.var_2053 = null;
         this.var_123 = null;
         this.var_853 = 0;
      }
      
      public function reserve() : uint
      {
         return ++this.var_853;
      }
      
      public function release() : uint
      {
         return this.references > 0 ? uint(--this.var_853) : uint(0);
      }
   }
}
