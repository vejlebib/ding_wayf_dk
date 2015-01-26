<?php
/**
 * @file
 * Handle installation processes.
 */

/**
 * Implements hook_requirements().
 */
function ding_wayf_dk_login_requirements($phase) {
  $requirements = array();

  // Ensure translations don't break at install time.
  $t = get_t();

  if ($phase == 'runtime') {
    if (!variable_get('wayf_hash', FALSE)) {
      $requirements['wayf_hash'] = array(
        'value' => $t('WAYF not configured correctly'),
        'description' => $t('WAYF is not properly configured, you need to set $conf[\'wayf_hash\'] in setttings.php.'),
        'severity' => REQUIREMENT_ERROR,
      );
    }
  }

  return $requirements;
}

/**
 * Implements hook_uninstall().
 */
function ding_wayf_dk_login_uninstall() {
  variable_del('ding_wayf_dk_login_debug');
  variable_del('ding_wayf_dk_login_debug_cpr');
}
