FROM frappe/erpnext:v15.85.0

USER frappe

# Copy your custom app into the image
COPY --chown=frappe:frappe ./apps/attendance_app /home/frappe/frappe-bench/apps/attendance_app

# Install the app using pip (it will use pyproject.toml)
RUN cd /home/frappe/frappe-bench && \
    /home/frappe/frappe-bench/env/bin/pip install --no-cache-dir -e ./apps/attendance_app
