notice('MODULAR: fuel-plugin-etckeeper/etckeeper_commit.pp')

$etckeeper_hash = hiera_hash('fuel-plugin-etckeeper', {})
$etckeeper_scm = pick($etckeeper_hash['vcs'], 'git')

$no_changes_condition = $etckeeper_scm ? {
  /git/    => 'etckeeper vcs status | grep -q "nothing to commit"',
  /hg|bzr/ => 'test -z "$(etckeeper vcs status)"'
}

exec { 'etckeeper-commit':
  path    => '/bin:/usr/bin:/usr/local/bin',
  command => 'etckeeper commit "Deployment End"',
  unless  => $no_changes_condition,
}
