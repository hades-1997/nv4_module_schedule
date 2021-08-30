<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC (contact@vinades.vn)
 * @Copyright (C) 2014 VINADES.,JSC. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate 3/25/2010 18:6
 */

if (! defined('NV_MAINFILE')) {
    die('Stop!!!');
}

global $module_name, $site_mods, $global_config, $lang_global;

$content = '';
if ($module_name != $block_config['module'] && defined('NV_SYSTEM')) {
    if (file_exists(NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/modules/schedule/block.schedule_form.tpl')) {
        $block_theme = $global_config['module_theme'];
    } elseif (file_exists(NV_ROOTDIR . '/themes/' . $global_config['site_theme'] . '/modules/schedule/block.schedule_form.tpl')) {
        $block_theme = $global_config['site_theme'];
    } else {
        $block_theme = 'default';
    }

    $blockJs = file_exists(NV_ROOTDIR . '/themes/' . $block_theme . '/js/scheduleno.js') ? $block_theme : 'default';
    $blockCss = file_exists(NV_ROOTDIR . '/themes/' . $block_theme . '/css/scheduleno.css') ? $block_theme : 'default';

    $xtpl = new XTemplate('block.schedule_form.tpl', NV_ROOTDIR . '/themes/' . $block_theme . '/modules/schedule');
    $xtpl->assign('GLANG', $lang_global);
    $xtpl->assign('JS', NV_BASE_SITEURL . 'themes/' . $blockJs . '/js/scheduleno.js');
    $xtpl->assign('CSS', NV_BASE_SITEURL . 'themes/' . $blockJs . '/css/scheduleno.css');
    $xtpl->assign('NV_BASE_SITEURL', NV_BASE_SITEURL);
    $xtpl->assign('TEMPLATE', $block_theme);
    $xtpl->assign('MODULE', $block_config['module']);
	$xtpl->assign('BLOCK_TITLE', $block_config['title']);

    $xtpl->parse('main');
    $content = $xtpl->text('main');
}