if "%1"=="" goto err

call make_base_env_name.bat "%1_note"


pip install --upgrade pip
python -m pip install --upgrade pip

pip install notebook
python -m pip install notebook
python -m pip install --upgrade notebook

echo start jupyter notebook >"%1_note_execute.bat"

:���z���̃R�s�[
python -m pip freeze > %1_note_requirements.txt

goto end

:err
echo "���z�������w�肵��"

:end
