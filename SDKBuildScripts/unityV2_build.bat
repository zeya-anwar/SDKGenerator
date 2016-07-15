pushd ..
if [%1] == [] (
rem === BUILDING UnitySDK ===
node generate.js ..\API_Specs csharp-unityv2=..\sdks\UnitySDK -buildIdentifier test_manual_build
) else (
rem === BUILDING UnitySDK with params %* ===
node generate.js ..\API_Specs csharp-unityv2=..\sdks\UnitySDK %*
)
popd