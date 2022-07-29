<?php

namespace App\Http\Controllers\Hafalan;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
class ListSurat extends Controller
{
    /**
     * Handle the incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function __invoke(Request $request)
    {
        //
    }
    public function Surat($id,$id_santri){
        $cek = DB::table("hafalan")
            ->select('ayat_ke')
            ->where('id_santri',$id_santri)
            ->where('id_surat',$id)->orderBy('tgl', 'desc')->first();
        
        $jmlayat = DB::table("surat")
            ->select('ayat')
            ->where("id",$id)
            ->first();
            //->pluck('nama','id');
            
            //sudah pernah hafalan
            if(empty($cek)){
                //echo 'kosong';
                for($x = 1; $x <= $jmlayat->ayat; $x++){
                    $y['data'][]=$x ;
                   // $y['surat'][]='surat';
                }
                //hafalan terakhir
                $q = 1;
                //dd($y);
            }
            else {
                //echo 'isi';
                for($x = $cek->ayat_ke; $x <= $jmlayat->ayat; $x++){
                    $y['data'][]=$x;
                    //$y['surat'][]='surat';
                }
                //hafalan terakhir
                $q = $cek->ayat_ke + 1;
                //dd($y);
            }
           //dd($ayat);  
           //dd($y);
           $ay = json_encode($y);
           $p[] = $jmlayat->ayat;
           $t[] = $q;
           $d = json_encode(array($p,$t,$ay));
           //echo $ay;
           //dd($d);

        //return json_encode($y);
        return($d);
    }
}
