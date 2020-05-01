.class public final Lo/SimpleMonthView;
.super Landroid/app/Dialog;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/SimpleMonthView$ActionBar;
    }
.end annotation


# instance fields
.field private a:Lo/SpellChecker;

.field private b:Z

.field private c:Lcom/netflix/mediaclient/media/Language;

.field private final d:Lio/reactivex/disposables/CompositeDisposable;

.field private final e:Lo/SimpleCursorTreeAdapter;

.field private final f:Lo/SimpleMonthView$ActionBar;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/media/Language;Lo/SimpleMonthView$ActionBar;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "originalLanguage"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget v0, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->c:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lo/SimpleMonthView;->f:Lo/SimpleMonthView$ActionBar;

    .line 26
    iput-object p2, p0, Lo/SimpleMonthView;->c:Lcom/netflix/mediaclient/media/Language;

    .line 29
    new-instance p1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lo/SimpleMonthView;->d:Lio/reactivex/disposables/CompositeDisposable;

    .line 35
    :try_start_0
    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/Language;->toJsonString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netflix/mediaclient/media/Language;->restoreLanguage(Ljava/lang/String;)Lcom/netflix/mediaclient/media/Language;

    move-result-object p1

    const-string p2, "Language.restoreLanguage\u2026lLanguage.toJsonString())"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/SimpleMonthView;->c:Lcom/netflix/mediaclient/media/Language;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    :catch_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "LanguageSelectionsDialog: Error restoring language."

    .line 38
    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 41
    :goto_0
    iget-object p1, p0, Lo/SimpleMonthView;->c:Lcom/netflix/mediaclient/media/Language;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->getCurrentAudioSource()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object p1

    .line 42
    iget-object p2, p0, Lo/SimpleMonthView;->c:Lcom/netflix/mediaclient/media/Language;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/Language;->getCurrentSubtitle()Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object p2

    if-nez p1, :cond_0

    .line 45
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p3

    const-string v0, "LanguageSelector: Restored audio is null."

    .line 46
    invoke-interface {p3, v0}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    :cond_0
    if-nez p2, :cond_1

    .line 49
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p3

    const-string v0, "LanguageSelector: Restored subtitle is null."

    .line 50
    invoke-interface {p3, v0}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    .line 53
    :cond_1
    iget-object p3, p0, Lo/SimpleMonthView;->c:Lcom/netflix/mediaclient/media/Language;

    invoke-virtual {p3, p1}, Lcom/netflix/mediaclient/media/Language;->setSelectedAudio(Lcom/netflix/mediaclient/media/AudioSource;)Lcom/netflix/mediaclient/media/AudioSource;

    .line 54
    iget-object p1, p0, Lo/SimpleMonthView;->c:Lcom/netflix/mediaclient/media/Language;

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/media/Language;->setSelectedSubtitle(Lcom/netflix/mediaclient/media/subtitles/Subtitle;)Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    .line 56
    new-instance p1, Lo/SimpleCursorTreeAdapter;

    iget-object p2, p0, Lo/SimpleMonthView;->c:Lcom/netflix/mediaclient/media/Language;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/Language;->getAltAudios()[Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object p2

    const-string p3, "language.altAudios"

    invoke-static {p2, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lo/ako;->c([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Lo/SimpleCursorTreeAdapter;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lo/SimpleMonthView;->e:Lo/SimpleCursorTreeAdapter;

    .line 57
    new-instance p1, Lo/SpellChecker;

    iget-object p2, p0, Lo/SimpleMonthView;->c:Lcom/netflix/mediaclient/media/Language;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/Language;->getUsedSubtitles()Ljava/util/List;

    move-result-object p2

    const-string p3, "language.usedSubtitles"

    invoke-static {p2, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2}, Lo/akz;->j(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Lo/SpellChecker;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lo/SimpleMonthView;->a:Lo/SpellChecker;

    .line 60
    iget-object p1, p0, Lo/SimpleMonthView;->c:Lcom/netflix/mediaclient/media/Language;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->getSelectedAudio()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 59
    iget-object p1, p0, Lo/SimpleMonthView;->c:Lcom/netflix/mediaclient/media/Language;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->getSelectedAudio()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object p1

    iget-object p2, p0, Lo/SimpleMonthView;->c:Lcom/netflix/mediaclient/media/Language;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/Language;->getSelectedSubtitle()Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/media/AudioSource;->isAllowedSubtitle(Lcom/netflix/mediaclient/media/subtitles/Subtitle;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 60
    :cond_2
    iget-object p1, p0, Lo/SimpleMonthView;->a:Lo/SpellChecker;

    invoke-virtual {p1}, Lo/SpellChecker;->j()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_3

    .line 61
    iget-object p1, p0, Lo/SimpleMonthView;->c:Lcom/netflix/mediaclient/media/Language;

    iget-object p2, p0, Lo/SimpleMonthView;->a:Lo/SpellChecker;

    invoke-virtual {p2}, Lo/SpellChecker;->j()Ljava/util/List;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/media/Language;->setSelectedSubtitle(Lcom/netflix/mediaclient/media/subtitles/Subtitle;)Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    :cond_3
    return-void
.end method

.method public static final synthetic a(Lo/SimpleMonthView;)Lcom/netflix/mediaclient/media/Language;
    .locals 0

    .line 21
    iget-object p0, p0, Lo/SimpleMonthView;->c:Lcom/netflix/mediaclient/media/Language;

    return-object p0
.end method

.method private final b()V
    .locals 2

    .line 121
    iget-boolean v0, p0, Lo/SimpleMonthView;->b:Z

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lo/SimpleMonthView;->c:Lcom/netflix/mediaclient/media/Language;

    iget-object v1, p0, Lo/SimpleMonthView;->e:Lo/SimpleCursorTreeAdapter;

    invoke-virtual {v1}, Lo/SimpleCursorTreeAdapter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/media/AudioSource;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/media/Language;->setSelectedAudio(Lcom/netflix/mediaclient/media/AudioSource;)Lcom/netflix/mediaclient/media/AudioSource;

    .line 124
    :cond_0
    iget-boolean v0, p0, Lo/SimpleMonthView;->i:Z

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lo/SimpleMonthView;->a:Lo/SpellChecker;

    invoke-virtual {v0}, Lo/SpellChecker;->f()Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 126
    iget-object v1, p0, Lo/SimpleMonthView;->c:Lcom/netflix/mediaclient/media/Language;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/media/Language;->setSelectedSubtitle(Lcom/netflix/mediaclient/media/subtitles/Subtitle;)Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    .line 129
    :cond_1
    iget-boolean v0, p0, Lo/SimpleMonthView;->b:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lo/SimpleMonthView;->i:Z

    if-eqz v0, :cond_3

    .line 130
    :cond_2
    iget-object v0, p0, Lo/SimpleMonthView;->f:Lo/SimpleMonthView$ActionBar;

    iget-object v1, p0, Lo/SimpleMonthView;->c:Lcom/netflix/mediaclient/media/Language;

    invoke-interface {v0, v1}, Lo/SimpleMonthView$ActionBar;->e(Lcom/netflix/mediaclient/media/Language;)V

    .line 132
    :cond_3
    invoke-virtual {p0}, Lo/SimpleMonthView;->dismiss()V

    return-void
.end method

.method public static final synthetic c(Lo/SimpleMonthView;)Lo/SimpleCursorTreeAdapter;
    .locals 0

    .line 21
    iget-object p0, p0, Lo/SimpleMonthView;->e:Lo/SimpleCursorTreeAdapter;

    return-object p0
.end method

.method public static final synthetic c(Lo/SimpleMonthView;Z)V
    .locals 0

    .line 21
    iput-boolean p1, p0, Lo/SimpleMonthView;->b:Z

    return-void
.end method

.method public static final synthetic d(Lo/SimpleMonthView;)Lo/SpellChecker;
    .locals 0

    .line 21
    iget-object p0, p0, Lo/SimpleMonthView;->a:Lo/SpellChecker;

    return-object p0
.end method

.method public static final synthetic e(Lo/SimpleMonthView;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lo/SimpleMonthView;->b()V

    return-void
.end method

.method public static final synthetic e(Lo/SimpleMonthView;Z)V
    .locals 0

    .line 21
    iput-boolean p1, p0, Lo/SimpleMonthView;->i:Z

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 136
    iget-object v0, p0, Lo/SimpleMonthView;->d:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 137
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 66
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 67
    sget p1, Lcom/netflix/mediaclient/ui/R$Dialog;->cl:I

    invoke-virtual {p0, p1}, Lo/SimpleMonthView;->setContentView(I)V

    .line 68
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->cB:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/HorizontalScrollView;

    new-instance v0, Lo/SimpleMonthView$StateListAnimator;

    invoke-direct {v0, p0}, Lo/SimpleMonthView$StateListAnimator;-><init>(Lo/SimpleMonthView;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lo/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->u:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/HorizontalScrollView;

    new-instance v0, Lo/SimpleMonthView$TaskDescription;

    invoke-direct {v0, p0}, Lo/SimpleMonthView$TaskDescription;-><init>(Lo/SimpleMonthView;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lo/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object p1, p0, Lo/SimpleMonthView;->c:Lcom/netflix/mediaclient/media/Language;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->getCurrentAudioSource()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lo/SimpleMonthView;->e:Lo/SimpleCursorTreeAdapter;

    iget-object v0, p0, Lo/SimpleMonthView;->c:Lcom/netflix/mediaclient/media/Language;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/Language;->getCurrentAudioSource()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    const-string v1, "language.currentAudioSource"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lo/SimpleCursorTreeAdapter;->a(Lcom/netflix/mediaclient/media/AudioSource;)V

    .line 75
    :cond_0
    iget-object p1, p0, Lo/SimpleMonthView;->a:Lo/SpellChecker;

    iget-object v0, p0, Lo/SimpleMonthView;->c:Lcom/netflix/mediaclient/media/Language;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/Language;->getCurrentSubtitle()Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/SpellChecker;->b(Lcom/netflix/mediaclient/media/subtitles/Subtitle;)V

    .line 77
    new-instance p1, Lo/SimpleCursorAdapter;

    iget-object v0, p0, Lo/SimpleMonthView;->a:Lo/SpellChecker;

    check-cast v0, Lo/SimpleAdapter;

    invoke-direct {p1, v0}, Lo/SimpleCursorAdapter;-><init>(Lo/SimpleAdapter;)V

    .line 78
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->sH:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "subtitles"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p1

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Activity;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    .line 79
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->sH:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lo/SimpleMonthView;->a:Lo/SpellChecker;

    invoke-virtual {v1}, Lo/SpellChecker;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->scrollToPosition(I)V

    .line 80
    :cond_1
    iget-object v0, p0, Lo/SimpleMonthView;->d:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p1}, Lo/SimpleCursorAdapter;->d()Lio/reactivex/Observable;

    move-result-object v1

    .line 81
    new-instance v2, Lo/SimpleMonthView$Application;

    invoke-direct {v2, p0, p1}, Lo/SimpleMonthView$Application;-><init>(Lo/SimpleMonthView;Lo/SimpleCursorAdapter;)V

    check-cast v2, Lio/reactivex/functions/Consumer;

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 93
    new-instance v0, Lo/SimpleCursorAdapter;

    iget-object v1, p0, Lo/SimpleMonthView;->e:Lo/SimpleCursorTreeAdapter;

    check-cast v1, Lo/SimpleAdapter;

    invoke-direct {v0, v1}, Lo/SimpleCursorAdapter;-><init>(Lo/SimpleAdapter;)V

    .line 94
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->z:I

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "audios"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$Activity;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    .line 95
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->z:I

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lo/SimpleMonthView;->e:Lo/SimpleCursorTreeAdapter;

    invoke-virtual {v2}, Lo/SimpleCursorTreeAdapter;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->scrollToPosition(I)V

    .line 96
    :cond_2
    iget-object v1, p0, Lo/SimpleMonthView;->d:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lo/SimpleCursorAdapter;->d()Lio/reactivex/Observable;

    move-result-object v2

    .line 97
    new-instance v3, Lo/SimpleMonthView$Activity;

    invoke-direct {v3, p0, v0, p1}, Lo/SimpleMonthView$Activity;-><init>(Lo/SimpleMonthView;Lo/SimpleCursorAdapter;Lo/SimpleCursorAdapter;)V

    check-cast v3, Lio/reactivex/functions/Consumer;

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 96
    invoke-virtual {v1, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 146
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    .line 147
    invoke-virtual {p0}, Lo/SimpleMonthView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 148
    invoke-virtual {p0}, Lo/SimpleMonthView;->dismiss()V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .line 141
    new-instance v0, Lcom/netflix/cl/model/event/session/command/ViewAudioSubtitlesSelectorCommand;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/session/command/ViewAudioSubtitlesSelectorCommand;-><init>()V

    check-cast v0, Lcom/netflix/cl/model/event/session/command/Command;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(Lcom/netflix/cl/model/event/session/command/Command;)V

    .line 142
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
