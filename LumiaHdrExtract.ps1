$sourceDir = dir d:\a | ?{$_.PSISContainer}
$outputDir = "d:\output\"
$sourceFileName = "\NaturalHDR.jpg"

foreach ($nestedDir in $dir)
{
    $sourceFilePath = $nestedDir.FullName + $sourceFileName
    $targetFileName = Split-Path -Leaf $nestedDir.FullName
    $targetFilePath = $outputDir + $targetFileName +".jpg"
    Copy-Item $sourceFilePath -Destination $targetFilePath 
}
