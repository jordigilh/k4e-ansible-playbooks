FROM quay.io/generic/centos8:latest
USER 0
RUN dnf install platform-python-pip dbus-devel skopeo systemd-devel golang rpm-build git make -y && \
	pip3 install --upgrade pip && \
          pip3 install openshift && \
          pip3 install jmespath && \
          pip3 install netaddr && \
          pip3 install ansible==2.9.* && \
          curl -L https://mirror.openshift.com/pub/openshift-v4/clients/ocp/latest/openshift-client-linux.tar.gz | \
            tar -xvzf - -C /usr/local/bin/ oc && chmod 755 /usr/local/bin/oc && ln -s /usr/local/bin/oc /usr/local/bin/kubectl