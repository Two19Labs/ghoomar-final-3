$targetDir = "C:\Ghoomar final 3\elements used in the website\assets\village\videos"
if (!(Test-Path $targetDir)) { New-Item -ItemType Directory -Path $targetDir -Force }

$downloads = @(
    @("food-1.mp4", "https://village.ghoomarthali.in/wp-content/uploads/2025/08/20-starters.-21-mains.-Zero-regrets-only-refills.-%F0%9F%8D%BDThe-best-partThe-menu-keeps-switching-so-4.mp4"),
    @("food-2.mp4", "https://village.ghoomarthali.in/wp-content/uploads/2025/08/20-starters.-21-mains.-Zero-regrets-only-refills.-%F0%9F%8D%BDThe-best-partThe-menu-keeps-switching-so-5.mp4"),
    @("food-3.mp4", "https://village.ghoomarthali.in/wp-content/uploads/2025/08/20-starters.-21-mains.-Zero-regrets-only-refills.-%F0%9F%8D%BDThe-best-partThe-menu-keeps-switching-so-6.mp4"),
    @("food-4.mp4", "https://village.ghoomarthali.in/wp-content/uploads/2025/08/20-starters.-21-mains.-Zero-regrets-only-refills.-%F0%9F%8D%BDThe-best-partThe-menu-keeps-switching-so-.mp4"),
    @("food-5.mp4", "https://village.ghoomarthali.in/wp-content/uploads/2025/08/20-starters.-21-mains.-Zero-regrets-only-refills.-%F0%9F%8D%BDThe-best-partThe-menu-keeps-switching-so-1.mp4"),
    @("food-6.mp4", "https://village.ghoomarthali.in/wp-content/uploads/2025/08/20-starters.-21-mains.-Zero-regrets-only-refills.-%F0%9F%8D%BDThe-best-partThe-menu-keeps-switching-so-2.mp4"),
    @("food-7.mp4", "https://village.ghoomarthali.in/wp-content/uploads/2025/08/20-starters.-21-mains.-Zero-regrets-only-refills.-%F0%9F%8D%BDThe-best-partThe-menu-keeps-switching-so-3.mp4"),

    @("ent-1.mp4", "https://village.ghoomarthali.in/wp-content/uploads/2025/08/At-Ghoomar-Village-boredom-is-officially-banned-%F0%9F%8E%AAFrom-desi-games-to-groovy-folk-beats-puppet-3.mp4"),
    @("ent-2.mp4", "https://village.ghoomarthali.in/wp-content/uploads/2025/08/At-Ghoomar-Village-boredom-is-officially-banned-%F0%9F%8E%AAFrom-desi-games-to-groovy-folk-beats-puppet-4.mp4"),
    @("ent-3.mp4", "https://village.ghoomarthali.in/wp-content/uploads/2025/08/At-Ghoomar-Village-boredom-is-officially-banned-%F0%9F%8E%AAFrom-desi-games-to-groovy-folk-beats-puppet-5.mp4"),
    @("ent-4.mp4", "https://village.ghoomarthali.in/wp-content/uploads/2025/08/At-Ghoomar-Village-boredom-is-officially-banned-%F0%9F%8E%AAFrom-desi-games-to-groovy-folk-beats-puppet-.mp4"),
    @("ent-5.mp4", "https://village.ghoomarthali.in/wp-content/uploads/2025/08/At-Ghoomar-Village-boredom-is-officially-banned-%F0%9F%8E%AAFrom-desi-games-to-groovy-folk-beats-puppet-2.mp4"),
    @("ent-6.mp4", "https://village.ghoomarthali.in/wp-content/uploads/2025/08/At-Ghoomar-Village-boredom-is-officially-banned-%F0%9F%8E%AAFrom-desi-games-to-groovy-folk-beats-puppet-1.mp4"),
    @("ent-7.mp4", "https://village.ghoomarthali.in/wp-content/uploads/2025/08/Where-every-corner-echoes-with-culture-and-every-smile-speaks-of-warmth.-Step-into-Riwaazon-Ka-R-1.mp4"),
    @("ent-8.mp4", "https://village.ghoomarthali.in/wp-content/uploads/2025/08/Where-every-corner-echoes-with-culture-and-every-smile-speaks-of-warmth.-Step-into-Riwaazon-Ka-R-2.mp4"),
    @("ent-9.mp4", "https://village.ghoomarthali.in/wp-content/uploads/2025/08/Where-every-corner-echoes-with-culture-and-every-smile-speaks-of-warmth.-Step-into-Riwaazon-Ka-R-3.mp4"),
    @("ent-10.mp4", "https://village.ghoomarthali.in/wp-content/uploads/2025/08/Where-every-corner-echoes-with-culture-and-every-smile-speaks-of-warmth.-Step-into-Riwaazon-Ka-R-.mp4"),

    @("community-1.mp4", "https://village.ghoomarthali.in/wp-content/uploads/2025/08/In-a-world-thats-always-rushing-time-slows-down-at-Ghoomar-Village.-Laughter-echoes-louder-hu-1.mp4"),
    @("community-2.mp4", "https://village.ghoomarthali.in/wp-content/uploads/2025/08/In-a-world-thats-always-rushing-time-slows-down-at-Ghoomar-Village.-Laughter-echoes-louder-hu-2.mp4"),
    @("community-3.mp4", "https://village.ghoomarthali.in/wp-content/uploads/2025/08/In-a-world-thats-always-rushing-time-slows-down-at-Ghoomar-Village.-Laughter-echoes-louder-hu-3.mp4"),
    @("community-4.mp4", "https://village.ghoomarthali.in/wp-content/uploads/2025/08/In-a-world-thats-always-rushing-time-slows-down-at-Ghoomar-Village.-Laughter-echoes-louder-hu-.mp4")
)

foreach ($item in $downloads) {
    $outPath = Join-Path $targetDir $item[0]
    if (!(Test-Path $outPath)) {
        Write-Host "Downloading $($item[0])..."
        Invoke-WebRequest -Uri $item[1] -OutFile $outPath
    } else {
        Write-Host "File $($item[0]) already exists, skipping."
    }
}
Write-Host "All 21 videos downloaded to $targetDir!"
