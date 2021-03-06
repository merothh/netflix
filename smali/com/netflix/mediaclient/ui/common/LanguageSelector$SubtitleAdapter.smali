.class public Lcom/netflix/mediaclient/ui/common/LanguageSelector$SubtitleAdapter;
.super Landroid/widget/BaseAdapter;
.source "LanguageSelector.java"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final language:Lcom/netflix/mediaclient/media/Language;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/media/Language;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$SubtitleAdapter;->language:Lcom/netflix/mediaclient/media/Language;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$SubtitleAdapter;->activity:Landroid/app/Activity;

    return-void
.end method

.method private shouldForceFirst(Lcom/netflix/mediaclient/media/Language;ILcom/netflix/mediaclient/media/Subtitle;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->getSelectedSubtitle()Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->getSelectedAudio()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Lcom/netflix/mediaclient/media/AudioSource;->isAllowedSubtitle(Lcom/netflix/mediaclient/media/Subtitle;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "nf_language_selector"

    const-string/jumbo v2, "Selected subtitle is allowed"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "nf_language_selector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Selected subtitle is not allowed, set to firsyt subtitle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p1, p3}, Lcom/netflix/mediaclient/media/Language;->setSelectedSubtitle(Lcom/netflix/mediaclient/media/Subtitle;)Lcom/netflix/mediaclient/media/Subtitle;

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$SubtitleAdapter;->language:Lcom/netflix/mediaclient/media/Language;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/Language;->getUsedSubtitles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/netflix/mediaclient/media/Subtitle;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$SubtitleAdapter;->language:Lcom/netflix/mediaclient/media/Language;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/Language;->getUsedSubtitles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/media/Subtitle;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/common/LanguageSelector$SubtitleAdapter;->getItem(I)Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const-string/jumbo v0, "nf_language_selector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Subtitle create row "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->isKubrick()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f03007e

    :goto_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$SubtitleAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$RowHolder;

    invoke-direct {v0, p2}, Lcom/netflix/mediaclient/ui/common/LanguageSelector$RowHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$RowHolder;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/common/LanguageSelector$SubtitleAdapter;->getItem(I)Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v4

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$SubtitleAdapter;->language:Lcom/netflix/mediaclient/media/Language;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/Language;->getSelectedSubtitle()Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$SubtitleAdapter;->language:Lcom/netflix/mediaclient/media/Language;

    invoke-direct {p0, v3, p1, v4}, Lcom/netflix/mediaclient/ui/common/LanguageSelector$SubtitleAdapter;->shouldForceFirst(Lcom/netflix/mediaclient/media/Language;ILcom/netflix/mediaclient/media/Subtitle;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string/jumbo v2, "nf_language_selector"

    const-string/jumbo v3, "Previously selected subtitle is not allowed anymore, reset to first on list, reload seleted subtitle"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$SubtitleAdapter;->language:Lcom/netflix/mediaclient/media/Language;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/Language;->getSelectedSubtitle()Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v2

    move-object v3, v2

    :goto_1
    if-eqz v4, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/netflix/mediaclient/media/Subtitle;->getLanguageDescription()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/netflix/mediaclient/media/Subtitle;->isCC()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "nf_language_selector"

    const-string/jumbo v5, "Add CC"

    invoke-static {v2, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$SubtitleAdapter;->activity:Landroid/app/Activity;

    const v5, 0x7f080123

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_2
    :goto_2
    iget-object v3, v0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$RowHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$RowHolder;->choice:Landroid/widget/RadioButton;

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "nf_language_selector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Subtitle is selected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, v0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$RowHolder;->name:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setTextOpacityToSelected(Landroid/widget/TextView;)V

    :goto_3
    return-object p2

    :cond_4
    const v0, 0x7f030086

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$SubtitleAdapter;->activity:Landroid/app/Activity;

    const v5, 0x7f0801ac

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    iget-object v0, v0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$RowHolder;->name:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setTextOpacityToUnselected(Landroid/widget/TextView;)V

    goto :goto_3

    :cond_7
    move-object v3, v2

    goto :goto_1
.end method
