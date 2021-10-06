import 'package:supabase/supabase.dart';

class SupabaseCredentials{
  static const String APIKEY=
  "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoiYW5vbiIsImlhdCI6MTYzMjU3NDM5OSwiZXhwIjoxOTQ4MTUwMzk5fQ.h7WN0hD3Uaxhw_kRCMdayzWtg3j2Pyo1Vbb_T-GN4Zg";
  static const String APIURL=
  "https://jshalhjkpecvgsvnjeao.supabase.co";

  static SupabaseClient supabaseClient =SupabaseClient(APIURL,APIKEY);
  
}