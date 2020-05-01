.class Lo/CW;
.super Lo/CT;
.source ""


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/CT$TaskDescription;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lo/CT;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/CT$TaskDescription;)V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 5

    const-string v0, "nf_language_selector"

    const-string v1, "Tablet calculate height"

    .line 35
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v0, p0, Lo/CW;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$TaskDescription;->J:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 38
    iget-object v1, p0, Lo/CW;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$TaskDescription;->L:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 39
    iget-object v2, p0, Lo/CW;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/netflix/mediaclient/ui/R$TaskDescription;->O:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 41
    invoke-virtual {p0}, Lo/CW;->b()Lcom/netflix/mediaclient/media/Language;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {v3}, Lcom/netflix/mediaclient/media/Language;->getAltAudios()[Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3}, Lcom/netflix/mediaclient/media/Language;->getSubtitles()[Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    mul-int v3, v3, v2

    move v2, v3

    :goto_0
    if-gt v2, v0, :cond_1

    return v0

    :cond_1
    if-ge v2, v1, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method protected e()I
    .locals 2

    const-string v0, "nf_language_selector"

    const-string v1, "R.layout.language_selector_tablet_dialog"

    .line 56
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->cp:I

    return v0
.end method
