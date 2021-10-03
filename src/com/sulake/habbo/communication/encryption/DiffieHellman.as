package com.sulake.habbo.communication.encryption
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.communication.handshake.IKeyExchange;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1106:BigInteger;
      
      private var var_2485:BigInteger;
      
      private var var_1847:BigInteger;
      
      private var var_2486:BigInteger;
      
      private var var_1502:BigInteger;
      
      private var var_1848:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1502 = param1;
         this.var_1848 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1502.toString() + ",generator: " + this.var_1848.toString() + ",secret: " + param1);
         this.var_1106 = new BigInteger();
         this.var_1106.fromRadix(param1,param2);
         this.var_2485 = this.var_1848.modPow(this.var_1106,this.var_1502);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1847 = new BigInteger();
         this.var_1847.fromRadix(param1,param2);
         this.var_2486 = this.var_1847.modPow(this.var_1106,this.var_1502);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2485.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2486.toRadix(param1);
      }
   }
}
