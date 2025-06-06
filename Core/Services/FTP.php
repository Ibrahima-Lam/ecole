<?php
namespace App\Core\Services;

class FTP
{

    private $ftp;


    public function __construct()
    {
      $config= require_once "../Configs/ftp.php";
      $ftp_server = $config["ftp_server"];
      $ftp_user = $config["ftp_user"];
      $ftp_pass = $config["ftp_pass"];
       
        $ftp = ftp_connect($ftp_server);
        ftp_login($ftp, $ftp_user, $ftp_pass);
        $this->ftp = $ftp;
    }

    public function listFiles()
    {
        $files = ftp_nlist($this->ftp, ".");
        return $files;
    }
    public function uploadFile($localFile, $remoteFile)
    {
        return ftp_put($this->ftp, $remoteFile, $localFile, FTP_BINARY);
    }

    public function downloadFile($remoteFile, $localFile)
    {
        return ftp_get($this->ftp, $localFile, $remoteFile, FTP_BINARY);
    }

    public function deleteFile($remoteFile)
    {
        return ftp_delete($this->ftp, $remoteFile);
    }

    public function renameFile($oldName, $newName)
    {
        return ftp_rename($this->ftp, $oldName, $newName);
    }

    public function createFolder($folderName)
    {
        return ftp_mkdir($this->ftp, $folderName);
    }

    public function deleteFolder($folderName)
    {
        return ftp_rmdir($this->ftp, $folderName);
    }

    public function renameFolder($oldName, $newName)
    {
        return ftp_rename($this->ftp, $oldName, $newName);
    }

    public function __destruct()
    {
        ftp_close($this->ftp);
    }
}
