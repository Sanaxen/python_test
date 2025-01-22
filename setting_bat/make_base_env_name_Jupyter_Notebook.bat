if "%1"=="" goto err

call make_base_env_name.bat "%1_note"

call "%1_note"\Scripts\activate.bat

pip install --upgrade pip
python -m pip install --upgrade pip

pip install notebook
python -m pip install notebook
python -m pip install --upgrade notebook

python3 -m ipykernel install --user --name myenv --display-name "%1_note"

echo call "%1_note"\Scripts\activate.bat >"%1_note_execute.bat"
echo start jupyter notebook >>"%1_note_execute.bat"

:仮想環境のコピー
python -m pip freeze > %1_note_requirements.txt

goto end

:err
echo "仮想環境名を指定して"

:end
