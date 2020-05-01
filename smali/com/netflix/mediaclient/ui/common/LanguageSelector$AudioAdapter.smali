.class public Lcom/netflix/mediaclient/ui/common/LanguageSelector$AudioAdapter;
.super Landroid/widget/BaseAdapter;
.source "LanguageSelector.java"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final language:Lcom/netflix/mediaclient/media/Language;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/media/Language;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$AudioAdapter;->language:Lcom/netflix/mediaclient/media/Language;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$AudioAdapter;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$AudioAdapter;->language:Lcom/netflix/mediaclient/media/Language;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/Language;->getAltAudios()[Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Lcom/netflix/mediaclient/media/AudioSource;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$AudioAdapter;->language:Lcom/netflix/mediaclient/media/Language;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/Language;->getAltAudios()[Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/common/LanguageSelector$AudioAdapter;->getItem(I)Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_0

    const-string/jumbo v0, "nf_language_selector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Audio create row "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->isKubrick()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f03007e

    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$AudioAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$RowHolder;

    invoke-direct {v0, p2}, Lcom/netflix/mediaclient/ui/common/LanguageSelector$RowHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$RowHolder;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/common/LanguageSelector$AudioAdapter;->getItem(I)Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$AudioAdapter;->language:Lcom/netflix/mediaclient/media/Language;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/Language;->getSelectedAudio()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/media/AudioSource;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, v0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$RowHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/AudioSource;->getLanguageDescriptionDisplayLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$RowHolder;->choice:Landroid/widget/RadioButton;

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "nf_language_selector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Audio is selected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, v0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$RowHolder;->name:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setTextOpacityToSelected(Landroid/widget/TextView;)V

    :goto_1
    return-object p2

    :cond_2
    const v0, 0x7f030086

    goto :goto_0

    :cond_3
    iget-object v0, v0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$RowHolder;->name:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setTextOpacityToUnselected(Landroid/widget/TextView;)V

    goto :goto_1
.end method
