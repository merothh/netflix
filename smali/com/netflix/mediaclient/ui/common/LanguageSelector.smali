.class public abstract Lcom/netflix/mediaclient/ui/common/LanguageSelector;
.super Ljava/lang/Object;
.source "LanguageSelector.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "nf_language_selector"


# instance fields
.field protected language:Lcom/netflix/mediaclient/media/Language;

.field protected mAudiosListView:Landroid/widget/ListView;

.field protected final mCallback:Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageSelectorCallback;

.field protected final mController:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field protected mSubtitlesListView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageSelectorCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector;->mController:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector;->mCallback:Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageSelectorCallback;

    return-void
.end method

.method public static createInstance(Lcom/netflix/mediaclient/android/activity/NetflixActivity;ZLcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageSelectorCallback;)Lcom/netflix/mediaclient/ui/common/LanguageSelector;
    .locals 1

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->isKubrick()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorKubrick;

    invoke-direct {v0, p0, p2}, Lcom/netflix/mediaclient/ui/common/LanguageSelectorKubrick;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageSelectorCallback;)V

    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorTablet;

    invoke-direct {v0, p0, p2}, Lcom/netflix/mediaclient/ui/common/LanguageSelectorTablet;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageSelectorCallback;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;

    invoke-direct {v0, p0, p2}, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageSelectorCallback;)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract calculateListViewHeight()I
.end method

.method protected createAndShowDialog(Landroid/view/View;)V
    .locals 6

    const/4 v5, -0x2

    new-instance v0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageAlertDialog;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector;->mController:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageAlertDialog;-><init>(Lcom/netflix/mediaclient/ui/common/LanguageSelector;Landroid/content/Context;Lcom/netflix/mediaclient/ui/common/LanguageSelector$1;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector;->mCallback:Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageSelectorCallback;

    invoke-interface {v1}, Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageSelectorCallback;->wasPlaying()Z

    move-result v1

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector;->mController:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v4, 0x7f0801c0

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/netflix/mediaclient/ui/common/LanguageSelector$3;

    invoke-direct {v4, p0, v1, v0}, Lcom/netflix/mediaclient/ui/common/LanguageSelector$3;-><init>(Lcom/netflix/mediaclient/ui/common/LanguageSelector;ZLcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageAlertDialog;)V

    invoke-virtual {v0, v2, v3, v4}, Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageAlertDialog;->setView(Landroid/view/View;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageAlertDialog;->setCancelable(Z)V

    new-instance v1, Lcom/netflix/mediaclient/ui/common/LanguageSelector$4;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/common/LanguageSelector$4;-><init>(Lcom/netflix/mediaclient/ui/common/LanguageSelector;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/LanguageSelector;->calculateListViewHeight()I

    move-result v1

    if-ltz v1, :cond_1

    const-string/jumbo v2, "nf_language_selector"

    const-string/jumbo v3, "Sets view height."

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector;->mAudiosListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector;->mAudiosListView:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector;->mSubtitlesListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector;->mSubtitlesListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    const-string/jumbo v1, "nf_language_selector"

    const-string/jumbo v2, "Languages::open dialog"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector;->mCallback:Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageSelectorCallback;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageSelectorCallback;->updateDialog(Landroid/app/Dialog;)V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector;->mController:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Landroid/app/Dialog;)V

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v1, "nf_language_selector"

    const-string/jumbo v2, "Do NOT set view height."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized display(Lcom/netflix/mediaclient/media/Language;)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string/jumbo v0, "nf_language_selector"

    const-string/jumbo v1, "Language data is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->toJsonString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/media/Language;->restoreLanguage(Ljava/lang/String;)Lcom/netflix/mediaclient/media/Language;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector;->language:Lcom/netflix/mediaclient/media/Language;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector;->mController:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/LanguageSelector;->getDialogLayoutId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector;->language:Lcom/netflix/mediaclient/media/Language;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector;->language:Lcom/netflix/mediaclient/media/Language;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/Language;->getCurrentAudioSource()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/media/Language;->setSelectedAudio(Lcom/netflix/mediaclient/media/AudioSource;)Lcom/netflix/mediaclient/media/AudioSource;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector;->language:Lcom/netflix/mediaclient/media/Language;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector;->language:Lcom/netflix/mediaclient/media/Language;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/Language;->getCurrentSubtitle()Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/media/Language;->setSelectedSubtitle(Lcom/netflix/mediaclient/media/Subtitle;)Lcom/netflix/mediaclient/media/Subtitle;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector;->language:Lcom/netflix/mediaclient/media/Language;

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/common/LanguageSelector;->init(Landroid/view/View;Lcom/netflix/mediaclient/media/Language;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/common/LanguageSelector;->createAndShowDialog(Landroid/view/View;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v1, "nf_language_selector"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method protected abstract getDialogLayoutId()I
.end method

.method protected getLanguage()Lcom/netflix/mediaclient/media/Language;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector;->language:Lcom/netflix/mediaclient/media/Language;

    return-object v0
.end method

.method protected init(Landroid/view/View;Lcom/netflix/mediaclient/media/Language;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/common/LanguageSelector;->initLists(Landroid/view/View;Lcom/netflix/mediaclient/media/Language;)V

    return-void
.end method

.method protected initLists(Landroid/view/View;Lcom/netflix/mediaclient/media/Language;)V
    .locals 4

    const/4 v2, 0x1

    const v0, 0x7f0f01b9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector;->mAudiosListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector;->mAudiosListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    new-instance v1, Lcom/netflix/mediaclient/ui/common/LanguageSelector$AudioAdapter;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector;->mController:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {v1, p2, v0}, Lcom/netflix/mediaclient/ui/common/LanguageSelector$AudioAdapter;-><init>(Lcom/netflix/mediaclient/media/Language;Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector;->mAudiosListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f0f01bb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector;->mSubtitlesListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector;->mSubtitlesListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    new-instance v0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$SubtitleAdapter;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector;->mController:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {v0, p2, v2}, Lcom/netflix/mediaclient/ui/common/LanguageSelector$SubtitleAdapter;-><init>(Lcom/netflix/mediaclient/media/Language;Landroid/app/Activity;)V

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector;->mSubtitlesListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector;->mAudiosListView:Landroid/widget/ListView;

    new-instance v3, Lcom/netflix/mediaclient/ui/common/LanguageSelector$1;

    invoke-direct {v3, p0, v1, p2, v0}, Lcom/netflix/mediaclient/ui/common/LanguageSelector$1;-><init>(Lcom/netflix/mediaclient/ui/common/LanguageSelector;Lcom/netflix/mediaclient/ui/common/LanguageSelector$AudioAdapter;Lcom/netflix/mediaclient/media/Language;Lcom/netflix/mediaclient/ui/common/LanguageSelector$SubtitleAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector;->mSubtitlesListView:Landroid/widget/ListView;

    new-instance v2, Lcom/netflix/mediaclient/ui/common/LanguageSelector$2;

    invoke-direct {v2, p0, v0, p2}, Lcom/netflix/mediaclient/ui/common/LanguageSelector$2;-><init>(Lcom/netflix/mediaclient/ui/common/LanguageSelector;Lcom/netflix/mediaclient/ui/common/LanguageSelector$SubtitleAdapter;Lcom/netflix/mediaclient/media/Language;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method
