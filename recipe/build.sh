$PYTHON -m pip install . -vv

for CHANGE in "activate" "deactivate"
do
    mkdir -p "$PREFIX/etc/conda/$CHANGE.d"
    cp "$RECIPE_DIR/$CHANGE.sh" "$PREFIX/etc/conda/$CHANGE.d/genv_$CHANGE.sh"
done
