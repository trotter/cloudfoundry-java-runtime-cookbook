template File.join(node.cloudfoundry_common.staging_manifests_dir, "spring.yml") do
  source "spring.yml.erb"
  owner  node.cloudfoundry_common.user
  mode   "0644"
  variables(
    :java_runtime       => node.cloudfoundry_dea.runtimes.java
  )
end
