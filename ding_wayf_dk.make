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
projects[wayf_dk_login][download][revision] = "baddb9b"
# Patch to work without eduPersonPrincipalName. See https://www.drupal.org/node/2373919
projects[wayf_dk_login][patch][] = "https://www.drupal.org/files/issues/wayf_dk_login-edu_person_targeted_id_as_username-2373919-7.patch"
# Add debug option to the module. See https://www.drupal.org/node/2377329
projects[wayf_dk_login][patch][] = "https://www.drupal.org/files/issues/wayf_dk_login-log_auth_info-2377329-1.patch"

