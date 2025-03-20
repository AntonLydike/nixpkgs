{
  lib,
  buildPythonPackage,
  fetchFromGitHub,
  poetry-core,
  pytestCheckHook,
}:

buildPythonPackage rec {
  pname = "filecheck";
  version = "1.0.1";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "AntonLydike";
    repo = "filecheck";
    tag = "v${version}";
    hash = "sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=";
  };

  nativeBuildInputs = [ poetry-core ];

  nativeCheckInputs = [ pytestCheckHook ];

  pythonImportsCheck = [ "filecheck" ];

  meta = with lib; {
    changelog = "https://github.com/antonlydike/filecheck/releases/tag/v${version}";
    homepage = "https://github.com/antonlydike/filecheck";
    license = licenses.asl20;
    description = "A Python-native clone of LLVMs FileCheck tool";
    mainProgram = "filecheck";
    maintainers = with maintainers; [ yorickvp ];
  };
}
