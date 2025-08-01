migration_file="task/clamav-scan/0.2/migrations/0.2.sh"
has_migration=false
if [ -f "$migration_file" ] && git show 14950f9ac60d478c6ce6d32db0b9439666357fd5 --oneline --name-only | grep -q "$migration_file"; then
  # There is a migration file matching the task concrete version and
  # is included in the same commit with the task.
  echo "there is an migration file ${migration_file} in revision ${REVISION}"
  has_migration=true
fi
echo $has_migration