.class Lcom/netflix/mediaclient/ui/common/LanguageSelectorTablet;
.super Lcom/netflix/mediaclient/ui/common/LanguageSelector;
.source "LanguageSelectorTablet.java"


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageSelectorCallback;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/common/LanguageSelector;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageSelectorCallback;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected calculateListViewHeight()I
    .locals 7

    .prologue
    .line 35
    const-string/jumbo v0, "nf_language_selector"

    const-string/jumbo v1, "Tablet calculate height"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorTablet;->mController:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0097

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v2, v0

    .line 38
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorTablet;->mController:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v1, v0

    .line 39
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorTablet;->mController:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a01c3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v3, v0

    .line 41
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/LanguageSelectorTablet;->getLanguage()Lcom/netflix/mediaclient/media/Language;

    move-result-object v0

    .line 42
    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 44
    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 45
    const-string/jumbo v4, "nf_language_selector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Max height "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " px, item height "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " px, proposed list height "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " px, item divider height px"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_0
    if-gt v0, v2, :cond_3

    move v0, v2

    .line 51
    :cond_1
    :goto_1
    return v0

    .line 43
    :cond_2
    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/Language;->getAltAudios()[Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/Language;->getSubtitles()[Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/2addr v0, v3

    goto :goto_0

    .line 51
    :cond_3
    if-lt v0, v1, :cond_1

    move v0, v1

    goto :goto_1
.end method

.method protected getDialogLayoutId()I
    .locals 2

    .prologue
    .line 56
    const-string/jumbo v0, "nf_language_selector"

    const-string/jumbo v1, "R.layout.language_selector_tablet_dialog"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const v0, 0x7f030088

    return v0
.end method
