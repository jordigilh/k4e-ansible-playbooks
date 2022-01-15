# k4e-ansible-playbooks

# How to run
Install the dependencies:
```bash
$> ansible-galaxy collections install -r ansible/collections/requirements.yaml
```
Run the ansible playbook:
```bash
$> ansible-playbook ansible/playbooks/build-rpm.yaml
```

# Running as a pipeline
Install the chart using this command:
```bash
$> helm upgrade k4e-ansible helm/k4e-pipelines/ -n rfe
```
Run the pipeline with the following command:
```bash
$> tkn pipeline start k4e-rpm-build-pipeline --workspace name=shared-workspace,volumeClaimTemplateFile=resources/volumeclaimtemplate.yaml  --use-param-defaults
```