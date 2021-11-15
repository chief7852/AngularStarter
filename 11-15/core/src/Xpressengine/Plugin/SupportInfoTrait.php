<?php
/**
 * SupportInfoTrait.php
 *
 * PHP version 7
 *
 * @category    Plugin
 * @package     Xpressengine\Plugin
 * @author      XE Developers <developers@xpressengine.com>
 * @copyright   2020 Copyright XEHub Corp. <https://www.xehub.io>
 * @license     http://www.gnu.org/licenses/lgpl-3.0-standalone.html LGPL
 * @link        https://xpressengine.io
 */

namespace Xpressengine\Plugin;

use Illuminate\Support;
use Illuminate\Support\Arr;

/**
 * Trait SupportInfoTrait
 *
 * @category    Plugin
 * @package     Xpressengine\Plugin
 * @author      XE Developers <developers@xpressengine.com>
 * @copyright   2020 Copyright XEHub Corp. <https://www.xehub.io>
 * @license     http://www.gnu.org/licenses/lgpl-3.0-standalone.html LGPL
 * @link        https://xpressengine.io
 */
trait SupportInfoTrait
{
    /**
     * @var array
     */
    protected static $info = null;

    /**
     * desktop 버전 지원 여부를 조사한다.
     *
     * @return bool
     */
    public static function supportDesktop()
    {
        return static::info('support.desktop');
    }

    /**
     * mobile 버전 지원 여부를 조사한다.
     *
     * @return bool
     */
    public static function supportMobile()
    {
        return static::info('support.mobile');
    }

    /**
     * get path, example: 'plugins/myplugin/skin'
     *
     * @return mixed
     */
    public static function getPath()
    {
        $path = property_exists(static::class, 'path') ? static::$path : '';

        return trim(str_replace(base_path(), '', plugins_path($path)), DIRECTORY_SEPARATOR);
    }

    /**
     * retrieve information from info.php file
     *
     * @param string $key     info field
     * @param mixed  $default default value
     *
     * @return array
     */
    public static function info($key = null, $default = null)
    {
        if (static::$info === null) {
            try {
                static::$info = include(base_path(static::getPath().'/'.'info.php'));
            } catch (\ErrorException $exception) {
                return $default;
            }
        }

        if ($key !== null) {
            return array_get(static::$info, $key, $default);
        }

        return static::$info;
    }

    /**
     * `medialibraryImage` Input 값이 화면에 출력될 수 있도록 값을 변경합니다.
     *
     * @param array $info
     * @param array $data
     */
    public static function convertInfoMediaLibraryImage(array &$info, array $data)
    {
        foreach ($info as $name => &$field) {
            $type = Support\Arr::get($field, '_type');
            $fileIds = Support\Arr::get($data, $name);

            if (Support\Str::camel($type) !== 'medialibraryImage' || empty($fileIds)) {
                continue;
            }

            $fileIds = is_array($fileIds) ? $fileIds : array($fileIds);
            $fileIds = Arr::has($fileIds, 'item') ? $fileIds['item'] : $fileIds;

            $files = \Xpressengine\Storage\File::whereIn('id', $fileIds)->get();

            if ($files->count() == 0) {
                continue;
            }

            $field['files'] = [];

            foreach ($fileIds as $fileId) {
                $file = $files->find($fileId);

                if (is_null($file)) {
                    continue;
                }

                $field['files'][] = [
                    'file_id' => $file->getAttribute("id"),
                    'mime' => $file->getAttribute("mime"),
                    'preview' => $file->url(),
                ];
            }
        }
    }

    public static function convertDataMediaLibraryImage($key, &$data)
    {
        $info = static::info($key);

        if (! is_array($info) || !is_array($data)) {
            return null;
        }

        static::convertInfoMediaLibraryImage($info, $data);

        foreach ($info as $name => $field) {
            if (array_has($data, $name) && array_key_exists('files', $field) && count($field['files']) > 0) {
                $files = $field['files'];

                $data[$name] = count($files) == 1
                    ? $files[0]['preview']
                    : array_map(function($file) { return $file['preview']; }, $files);
            }
        }

    }
}
