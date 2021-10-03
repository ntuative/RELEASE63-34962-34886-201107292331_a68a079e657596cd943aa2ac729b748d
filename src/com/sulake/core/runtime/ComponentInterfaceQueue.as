package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1980:IID;
      
      private var var_1157:Boolean;
      
      private var var_1286:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1980 = param1;
         this.var_1286 = new Array();
         this.var_1157 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1980;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_1157;
      }
      
      public function get receivers() : Array
      {
         return this.var_1286;
      }
      
      public function dispose() : void
      {
         if(!this.var_1157)
         {
            this.var_1157 = true;
            this.var_1980 = null;
            while(this.var_1286.length > 0)
            {
               this.var_1286.pop();
            }
            this.var_1286 = null;
         }
      }
   }
}
