# Pipelines Demos

Demos and samples to showcase OpenShift Pipelines, see more at
https://www.openshift.com/learn/topics/ci-cd

## Pipelines as Code

https://github.com/openshift-pipelines/pipelines-as-code

### Permissions

To allow non-admin users, add access to `pipelinesascode` CRDs.

```bash
oc adm policy add-role-to-user \
  openshift-pipeline-as-code-clusterrole kskels
```
