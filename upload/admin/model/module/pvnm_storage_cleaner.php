<?php 
class ModelModulePvnmStorageCleaner extends Model {
	public function getSize() {
		$size = 0;

		$dirs = array();

		$dirs[] = DIR_CACHE;
		$dirs[] = DIR_MODIFICATION;
		$dirs[] = DIR_IMAGE . 'cache/';
		$dirs[] = DIR_LOGS . 'error.log';
		$dirs[] = DIR_LOGS . 'ocmod.log';

		foreach ($dirs as $dir) {
			$files = array();

			$path = array($dir . '*');

			while (count($path) != 0) {
				$next = array_shift($path);

				if (is_array(glob($next))) {
					foreach (glob($next) as $file) {
						if (is_dir($file)) {
							$path[] = $file . '/*';
						}

						$files[] = $file;
					}
				}
			}

			if (!empty($files)) {
				rsort($files);

				foreach ($files as $file) {
					if ($file != $dir . 'index.html' && $file != $dir . '.htaccess') {
						if (is_file($file)) {
							$size += filesize($file);
						}
					}
				}
			}
		}

		return $this->formatSize($size);
	}

	protected function formatSize($size) {
		$sizenames = array(' B', ' KB', ' MB', ' GB', ' TB', ' PB', ' EB', ' ZB', 'YB');

		$item = 0;

		while ($size >= 1024) {
			$size /= 1024;

			$item++;
		}

		return round($size, 0) . $sizenames[$item];
	}
}