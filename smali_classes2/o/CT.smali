.class public abstract Lo/CT;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CT$TaskDescription;,
        Lo/CT$Activity;,
        Lo/CT$Application;,
        Lo/CT$ActionBar;,
        Lo/CT$StateListAnimator;
    }
.end annotation


# instance fields
.field protected a:Landroid/widget/ListView;

.field protected b:Landroid/widget/ListView;

.field protected final c:Lo/CT$TaskDescription;

.field protected final d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field protected e:Lcom/netflix/mediaclient/media/Language;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/CT$TaskDescription;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lo/CT;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 72
    iput-object p2, p0, Lo/CT;->c:Lo/CT$TaskDescription;

    return-void
.end method

.method public static e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;ZLo/CT$TaskDescription;)Lo/CT;
    .locals 0

    if-eqz p1, :cond_0

    .line 263
    new-instance p1, Lo/CW;

    invoke-direct {p1, p0, p2}, Lo/CW;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/CT$TaskDescription;)V

    return-object p1

    .line 265
    :cond_0
    new-instance p1, Lo/CU;

    invoke-direct {p1, p0, p2}, Lo/CU;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/CT$TaskDescription;)V

    return-object p1
.end method


# virtual methods
.method protected abstract a()I
.end method

.method protected b()Lcom/netflix/mediaclient/media/Language;
    .locals 1

    .line 245
    iget-object v0, p0, Lo/CT;->e:Lcom/netflix/mediaclient/media/Language;

    return-object v0
.end method

.method public declared-synchronized b(Lcom/netflix/mediaclient/media/Language;)V
    .locals 4

    monitor-enter p0

    .line 79
    :try_start_0
    new-instance v0, Lcom/netflix/cl/model/event/session/command/ViewAudioSubtitlesSelectorCommand;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/session/command/ViewAudioSubtitlesSelectorCommand;-><init>()V

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(Lcom/netflix/cl/model/event/session/command/Command;)V

    if-nez p1, :cond_0

    const-string p1, "nf_language_selector"

    const-string v0, "Language data is null!"

    .line 81
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit p0

    return-void

    .line 87
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->toJsonString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netflix/mediaclient/media/Language;->restoreLanguage(Ljava/lang/String;)Lcom/netflix/mediaclient/media/Language;

    move-result-object p1

    iput-object p1, p0, Lo/CT;->e:Lcom/netflix/mediaclient/media/Language;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    :try_start_2
    iget-object p1, p0, Lo/CT;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 95
    invoke-virtual {p0}, Lo/CT;->e()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 97
    iget-object v0, p0, Lo/CT;->e:Lcom/netflix/mediaclient/media/Language;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/Language;->getCurrentAudioSource()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lo/CT;->e:Lcom/netflix/mediaclient/media/Language;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/Language;->getCurrentSubtitle()Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object v1

    if-nez v0, :cond_1

    .line 101
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v2

    const-string v3, "LanguageSelector: Restored audio is null."

    invoke-interface {v2, v3}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    :cond_1
    if-nez v1, :cond_2

    .line 104
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v2

    const-string v3, "LanguageSelector: Restored subtitle is null."

    invoke-interface {v2, v3}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    .line 107
    :cond_2
    iget-object v2, p0, Lo/CT;->e:Lcom/netflix/mediaclient/media/Language;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/media/Language;->setSelectedAudio(Lcom/netflix/mediaclient/media/AudioSource;)Lcom/netflix/mediaclient/media/AudioSource;

    .line 108
    iget-object v0, p0, Lo/CT;->e:Lcom/netflix/mediaclient/media/Language;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/media/Language;->setSelectedSubtitle(Lcom/netflix/mediaclient/media/subtitles/Subtitle;)Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    .line 110
    iget-object v0, p0, Lo/CT;->e:Lcom/netflix/mediaclient/media/Language;

    invoke-virtual {p0, p1, v0}, Lo/CT;->c(Landroid/view/View;Lcom/netflix/mediaclient/media/Language;)V

    .line 111
    invoke-virtual {p0, p1}, Lo/CT;->c(Landroid/view/View;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    :try_start_3
    const-string v0, "nf_language_selector"

    .line 90
    invoke-static {v0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected c(Landroid/view/View;)V
    .locals 5

    .line 190
    new-instance v0, Lo/CT$Application;

    iget-object v1, p0, Lo/CT;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lo/CT$Application;-><init>(Lo/CT;Landroid/content/Context;Lo/CT$4;)V

    .line 192
    iget-object v1, p0, Lo/CT;->c:Lo/CT$TaskDescription;

    invoke-interface {v1}, Lo/CT$TaskDescription;->e()Z

    move-result v1

    .line 193
    iget-object v2, p0, Lo/CT;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lo/CT$3;

    invoke-direct {v3, p0, v1, v0}, Lo/CT$3;-><init>(Lo/CT;ZLo/CT$Application;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lo/CT$Application;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 202
    invoke-virtual {v0, p1}, Lo/CT$Application;->e(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 203
    invoke-virtual {v0, p1}, Lo/CT$Application;->setCancelable(Z)V

    .line 205
    new-instance p1, Lo/CT$5;

    invoke-direct {p1, p0}, Lo/CT$5;-><init>(Lo/CT;)V

    invoke-virtual {v0, p1}, Lo/CT$Application;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 214
    invoke-virtual {p0}, Lo/CT;->a()I

    move-result p1

    const-string v1, "nf_language_selector"

    if-ltz p1, :cond_0

    const-string v2, "Sets view height."

    .line 217
    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v2, p0, Lo/CT;->b:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 219
    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x2

    .line 220
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 221
    iget-object v4, p0, Lo/CT;->b:Landroid/widget/ListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    iget-object v2, p0, Lo/CT;->a:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 224
    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 225
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 226
    iget-object p1, p0, Lo/CT;->a:Landroid/widget/ListView;

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    const-string p1, "Do NOT set view height."

    .line 228
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string p1, "Languages::open dialog"

    .line 231
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object p1, p0, Lo/CT;->c:Lo/CT$TaskDescription;

    invoke-interface {p1, v0}, Lo/CT$TaskDescription;->a(Landroid/app/Dialog;)V

    .line 234
    iget-object p1, p0, Lo/CT;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Landroid/app/Dialog;)V

    return-void
.end method

.method protected c(Landroid/view/View;Lcom/netflix/mediaclient/media/Language;)V
    .locals 0

    .line 179
    invoke-virtual {p0, p1, p2}, Lo/CT;->e(Landroid/view/View;Lcom/netflix/mediaclient/media/Language;)V

    return-void
.end method

.method protected abstract e()I
.end method

.method protected e(Landroid/view/View;Lcom/netflix/mediaclient/media/Language;)V
    .locals 3

    .line 119
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->z:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lo/CT;->b:Landroid/widget/ListView;

    .line 120
    iget-object v0, p0, Lo/CT;->b:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 121
    new-instance v0, Lo/CT$StateListAnimator;

    iget-object v2, p0, Lo/CT;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {v0, p2, v2}, Lo/CT$StateListAnimator;-><init>(Lcom/netflix/mediaclient/media/Language;Landroid/app/Activity;)V

    .line 122
    iget-object v2, p0, Lo/CT;->b:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 124
    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->sH:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lo/CT;->a:Landroid/widget/ListView;

    .line 125
    iget-object p1, p0, Lo/CT;->a:Landroid/widget/ListView;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 126
    new-instance p1, Lo/CT$ActionBar;

    iget-object v1, p0, Lo/CT;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p1, p2, v1}, Lo/CT$ActionBar;-><init>(Lcom/netflix/mediaclient/media/Language;Landroid/app/Activity;)V

    .line 127
    iget-object v1, p0, Lo/CT;->a:Landroid/widget/ListView;

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 129
    iget-object v1, p0, Lo/CT;->b:Landroid/widget/ListView;

    new-instance v2, Lo/CT$4;

    invoke-direct {v2, p0, v0, p2, p1}, Lo/CT$4;-><init>(Lo/CT;Lo/CT$StateListAnimator;Lcom/netflix/mediaclient/media/Language;Lo/CT$ActionBar;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 151
    iget-object v0, p0, Lo/CT;->a:Landroid/widget/ListView;

    new-instance v1, Lo/CT$1;

    invoke-direct {v1, p0, p1, p2}, Lo/CT$1;-><init>(Lo/CT;Lo/CT$ActionBar;Lcom/netflix/mediaclient/media/Language;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method
