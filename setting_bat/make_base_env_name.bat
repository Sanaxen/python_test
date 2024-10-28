
if "%1"=="" goto err

python -m venv "%1"
python -m pip install -r base_requirements.txt

echo start %1\Scripts\activate.bat >"%1_execute.bat"


goto end

:err
echo "‰¼‘zŠÂ‹«–¼‚ğw’è‚µ‚Ä"

:end
