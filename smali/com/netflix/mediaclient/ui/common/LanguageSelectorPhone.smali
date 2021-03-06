.class public final Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;
.super Lcom/netflix/mediaclient/ui/common/LanguageSelector;
.source "LanguageSelectorPhone.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# static fields
.field private static final LIST_AUDIOS_TAB_TAG:Ljava/lang/String; = "ListAudios"

.field private static final LIST_SUBTITLES_TAB_TAG:Ljava/lang/String; = "ListSubtitles"


# instance fields
.field protected mAudioTabLabel:Landroid/widget/TextView;

.field protected mSubtitleTabLabel:Landroid/widget/TextView;

.field protected mTabHost:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageSelectorCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/common/LanguageSelector;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageSelectorCallback;)V

    return-void
.end method

.method private calculateMaxNumberOfItems()I
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->getLanguage()Lcom/netflix/mediaclient/media/Language;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/Language;->getSubtitles()[Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/Language;->getAltAudios()[Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/Language;->getSubtitles()[Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    if-eqz v0, :cond_0

    move v1, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/Language;->getSubtitles()[Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    array-length v0, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/Language;->getSubtitles()[Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/Language;->getAltAudios()[Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    array-length v1, v0

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "nf_language_selector"

    const-string/jumbo v2, "Calculate maximal item number"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/Language;->getAltAudios()[Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    array-length v0, v0

    if-lt v0, v3, :cond_6

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "nf_language_selector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "More audios, max number of items: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/Language;->getAltAudios()[Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/Language;->getAltAudios()[Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    array-length v1, v0

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "nf_language_selector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "More subtitles, audios: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/Language;->getAltAudios()[Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " < subtitles "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/Language;->getAltAudios()[Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    array-length v0, v0

    :goto_2
    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/Language;->getAltAudios()[Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_9

    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/Language;->getAltAudios()[Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/AudioSource;->getDisallowedSubtitles()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    sub-int v2, v3, v2

    if-le v2, v0, :cond_8

    move v0, v2

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string/jumbo v1, "nf_language_selector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Max number of items: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move v1, v0

    goto/16 :goto_0
.end method

.method private getTabIndicator(Landroid/content/Context;Landroid/widget/TabHost;IZ)Landroid/view/View;
    .locals 4

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030087

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0f01d3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(I)V

    if-eqz p4, :cond_0

    const-string/jumbo v2, "nf_language_selector"

    const-string/jumbo v3, "Set audio tab label"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->mAudioTabLabel:Landroid/widget/TextView;

    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v2, "nf_language_selector"

    const-string/jumbo v3, "Set subtitle tab label"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->mSubtitleTabLabel:Landroid/widget/TextView;

    goto :goto_0
.end method

.method private setNewTab(Landroid/content/Context;Landroid/widget/TabHost;Ljava/lang/String;IIZ)V
    .locals 2

    invoke-virtual {p2, p3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p2}, Landroid/widget/TabHost;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, p2, p4, p6}, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->getTabIndicator(Landroid/content/Context;Landroid/widget/TabHost;IZ)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v0, p5}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    invoke-virtual {p2, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    return-void
.end method


# virtual methods
.method protected calculateListViewHeight()I
    .locals 7

    const-string/jumbo v0, "nf_language_selector"

    const-string/jumbo v1, "Phone calculate height"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->mController:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v0, 0x7f0a0097

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    const v1, 0x7f0a003a

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    const v3, 0x7f0a01c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v3, v2

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->calculateMaxNumberOfItems()I

    move-result v2

    mul-int/2addr v2, v3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_0

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

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " px"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-gt v2, v0, :cond_2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "nf_language_selector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "listViewHeight less than min height - setting to min height "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-le v2, v1, :cond_4

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "nf_language_selector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "listViewHeight greater than max height - limiting to max height "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method protected getDialogLayoutId()I
    .locals 2

    const-string/jumbo v0, "nf_language_selector"

    const-string/jumbo v1, "Phone R.layout.language_selector_dialog"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f030085

    return v0
.end method

.method protected init(Landroid/view/View;Lcom/netflix/mediaclient/media/Language;)V
    .locals 7

    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/ui/common/LanguageSelector;->init(Landroid/view/View;Lcom/netflix/mediaclient/media/Language;)V

    const-string/jumbo v0, "nf_language_selector"

    const-string/jumbo v1, "Add tabhost"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0f01d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->mTabHost:Landroid/widget/TabHost;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->mController:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->mTabHost:Landroid/widget/TabHost;

    const-string/jumbo v3, "ListAudios"

    const v4, 0x7f080107

    const v5, 0x7f0f01b9

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->setNewTab(Landroid/content/Context;Landroid/widget/TabHost;Ljava/lang/String;IIZ)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->mController:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->mTabHost:Landroid/widget/TabHost;

    const-string/jumbo v3, "ListSubtitles"

    const v4, 0x7f08021f

    const v5, 0x7f0f01bb

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->setNewTab(Landroid/content/Context;Landroid/widget/TabHost;Ljava/lang/String;IIZ)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->mTabHost:Landroid/widget/TabHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->mAudioTabLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->mAudioTabLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->mSubtitleTabLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->mSubtitleTabLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const-string/jumbo v0, "nf_language_selector"

    const-string/jumbo v1, "Done with tabhost"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_language_selector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Switched to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v0, "ListAudios"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->mAudioTabLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->mAudioTabLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->mAudioTabLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->mSubtitleTabLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->mSubtitleTabLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->mSubtitleTabLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :goto_1
    return-void

    :cond_1
    const-string/jumbo v0, "nf_language_selector"

    const-string/jumbo v1, "audio label is NULL!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "nf_language_selector"

    const-string/jumbo v1, "subtitle label is NULL!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->mAudioTabLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->mAudioTabLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->mAudioTabLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :goto_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->mSubtitleTabLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->mSubtitleTabLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->mSubtitleTabLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "nf_language_selector"

    const-string/jumbo v1, "audio label is NULL!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    const-string/jumbo v0, "nf_language_selector"

    const-string/jumbo v1, "subtitle label is NULL!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
