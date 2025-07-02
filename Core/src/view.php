<?php
namespace Core\src;
class View extends ResponseApi
{
    public function __construct(protected array $params=[])
    {
    }

    public function render($file, $data = [])
    {
        extract($this->params);
        if (!($_auth??true)){
            $this->redirect("?p=home/login");
        }
        ob_start();
        extract($data);
        $path = "../App/Views/$file.php";
        if (!file_exists($path)) {
            echo '<p> Cette vue est introuvable! veuillez verifier le chemin du fichier dans les vues!</p>';
            return $this;
        } else
            require $path;

        $content = ob_get_clean();
        require_once 'layouts/layout.php';
        return $this;
    }
    public function renderError($message){
        $this->render('app/error', compact('message'));
        exit();
    }

    public function raw($view, $data = [])
    {
        extract($this->params);
        extract($data);
        $path = "../App/views/$view.php";
        if (!file_exists($path)) {
            echo '<p> Cette vue est introuvable! veuillez verifier le chemin du fichier dans les vues!</p>';
            return $this;
        } else
            require $path;
        return $this;
    }

    public function renderPDF($view, $data = [], $options = [])
    {
        extract($this->params);
        if (!($_auth??true)){
            $this->redirect("?p=home/login");
        }
        extract($data);
        ob_start();
        require "../App/pdfViews/$view.php";
        $content = ob_get_clean();
        $mpdf = new \Mpdf\Mpdf([
            'mode' => 'utf-8',
            'format' => 'A4',
            'default_font' => 'xbriyaz',
            'useOTL' => 0xFF,
            'useKashida' => 75,
            ...$options,
        ]);
        ob_start();
        echo $content;
        require_once './layouts/pdflayout.php';
        $content = ob_get_clean();

        $mpdf->WriteHTML($content);
        $mpdf->Output($options['name'] ?? 'document.pdf', $options['dest'] ?? \Mpdf\Output\Destination::INLINE);
        return $this;
    }

    public function rawPDF($view, $data = [], $options = [])
    {
        extract($this->params);
        extract($data);
        ob_start();
        require "../App/pdfViews/$view.php";
        $content = ob_get_clean();
        $mpdf = new \Mpdf\Mpdf([
            'mode' => 'utf-8',
            'format' => 'A4',
            'default_font' => 'xbriyaz',
            'useOTL' => 0xFF,
            'useKashida' => 75,
            ...$options,
        ]);

        $mpdf->WriteHTML($content);
        $mpdf->Output($options['name'] ?? 'document.pdf', $options['dest'] ?? \Mpdf\Output\Destination::INLINE);
   
        return $this;
    }
    public function redirect($url)
    {
        header('location:' . $url);
        exit();
    }
}


?>