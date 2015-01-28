core = 7.x
api = 2

; Projects
projects[ding_user][type] = "module"
projects[ding_user][download][type] = "git"
projects[ding_user][download][url] = "git@github.com:ding2/ding_user.git"
projects[ding_user][download][download][branch] = "master"

projects[ding_provider][type] = "module"
projects[ding_provider][download][type] = "git"
projects[ding_provider][download][url] = "git@github.com:ding2/ding_provider.git"
projects[ding_provider][download][download][branch] = "master"

projects[wayf_dk_login][type] = "module"
projects[wayf_dk_login][subdir] = "contrib"
projects[wayf_dk_login][download][type] = "git"
projects[wayf_dk_login][download][url] = "http://git.drupal.org/project/wayf_dk_login.git"
projects[wayf_dk_login][download][revision] = "5020f26"
; Fix index errors in php 5.4 (https://www.drupal.org/node/2414137).
projects[wayf_dk_login][patch][] = "https://www.drupal.org/files/issues/fix_index_errors-2414137-1.patch"
; Allow other modules to take over user creation process (https://www.drupal.org/node/2414173).
projects[wayf_dk_login][patch][] = "https://www.drupal.org/files/issues/allow_other_module_to_create_users-2414173-1.patch"
; Giver other modules change to alter login data (https://www.drupal.org/node/2414927).
projects[wayf_dk_login][patch][] = "https://www.drupal.org/files/issues/auth_alters-2414927-1.patch"
; Add support for metadata export (https://www.drupal.org/node/2415975).
projects[wayf_dk_login][patch][] = "https://www.drupal.org/files/issues/generate-sp-metadate-2415975-1.patch"
