# rfe-automation-rpm-support

# How to run
Install the dependencies:
```bash
ansible-galaxy collections install -r ansible/collections/requirements.yaml
```
Run the ansible playbook:
```bash
ansible-playbook ansible/playbooks/build-rpm.yaml
```

# Running as a pipeline
Install the chart using this command:
```bash
helm upgrade -i flotta-rpm helm/rpm-builder/ -n rfe
```
Run the pipeline with the following command:
```bash
tkn pipeline start flotta-rpm-build-pipeline --workspace name=shared-workspace,volumeClaimTemplateFile=resources/volumeclaimtemplate.yaml  --use-param-defaults
```