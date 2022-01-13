FROM registry.access.redhat.com/ubi8/python-38:latest
USER 0
RUN dnf install skopeo systemd-devel golang rpm-build -y && \
	pip install --upgrade pip && \
          pip install openshift && \
          pip install jmespath && \
          pip install netaddr && \
          pip install ansible==2.9.* && \
          curl -L https://mirror.openshift.com/pub/openshift-v4/clients/ocp/latest/openshift-client-linux.tar.gz | \
            tar -xvzf - -C /usr/local/bin/ oc && chmod 755 /usr/local/bin/oc && ln -s /usr/local/bin/oc /usr/local/bin/kubectl

