#
# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

FROM gcr.io/deeplearning-platform-release/base-cpu
COPY provision.sh /tmp/provision.sh
COPY provision/ /tmp/provision/
RUN bash -x /tmp/provision.sh
RUN sed -i -e 's/conda activate base/conda activate base\nconda activate silicon/' /entrypoint.sh
RUN sed -i -e 's@/opt/conda@/opt/conda/envs/silicon@' /run_jupyter.sh
ENV OPENLANE_ROOT=/OpenLane
ENV PATH=$OPENLANE_ROOT:$OPENLANE_ROOT/scripts:$PATH
