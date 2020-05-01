.class Lo/acW;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private A:I

.field private B:I

.field private C:Lio/reactivex/disposables/CompositeDisposable;

.field private D:I

.field private final G:Landroid/view/View$OnTouchListener;

.field private final H:Ljava/lang/Runnable;

.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/widget/ImageView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:Lo/acV;

.field private f:[Landroid/view/View;

.field private final g:Landroid/widget/ImageView;

.field private final h:Landroid/widget/TextView;

.field private i:Z

.field private final j:Landroid/widget/ImageView;

.field private k:Z

.field private final l:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field private m:Z

.field private n:Lo/aeA;

.field private o:Landroid/media/ToneGenerator;

.field private final p:Landroid/view/View;

.field private final q:Landroid/view/View;

.field private final r:Landroid/widget/TableLayout;

.field private final s:Landroid/view/View;

.field private final t:Landroid/widget/TextView;

.field private u:I

.field private final v:Landroid/view/View;

.field private final w:Landroid/view/View;

.field private final x:Landroid/view/View;

.field private final y:Landroid/media/AudioManager;

.field private final z:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lo/acV;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lo/acW;->C:Lio/reactivex/disposables/CompositeDisposable;

    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lo/acW;->z:Landroid/os/Handler;

    .line 271
    new-instance v0, Lo/acW$5;

    invoke-direct {v0, p0}, Lo/acW$5;-><init>(Lo/acW;)V

    iput-object v0, p0, Lo/acW;->G:Landroid/view/View$OnTouchListener;

    .line 692
    new-instance v0, Lo/acW$8;

    invoke-direct {v0, p0}, Lo/acW$8;-><init>(Lo/acW;)V

    iput-object v0, p0, Lo/acW;->H:Ljava/lang/Runnable;

    .line 131
    iput-object p1, p0, Lo/acW;->e:Lo/acV;

    .line 133
    iget-object v0, p0, Lo/acW;->e:Lo/acV;

    invoke-virtual {v0}, Lo/acV;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$LoaderManager;->e:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lo/acW;->u:I

    .line 134
    iget-object v0, p0, Lo/acW;->e:Lo/acV;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->dj:I

    invoke-virtual {v0, v1}, Lo/acV;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/acW;->a:Landroid/widget/TextView;

    .line 135
    iget-object v0, p0, Lo/acW;->e:Lo/acV;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->dl:I

    invoke-virtual {v0, v1}, Lo/acV;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/acW;->d:Landroid/widget/TextView;

    .line 138
    iget-object v0, p0, Lo/acW;->e:Lo/acV;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->dv:I

    invoke-virtual {v0, v1}, Lo/acV;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lo/acW;->b:Landroid/widget/ImageView;

    .line 139
    iget-object v0, p0, Lo/acW;->C:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lo/acW;->b:Landroid/widget/ImageView;

    invoke-static {v1}, Lo/SSLCertificateSocketFactory;->b(Landroid/view/View;)Lio/reactivex/Observable;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x12c

    .line 140
    invoke-virtual {v1, v3, v4, v2}, Lio/reactivex/Observable;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v1

    .line 141
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lo/acW$1;

    invoke-direct {v2, p0}, Lo/acW$1;-><init>(Lo/acW;)V

    .line 142
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 139
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 149
    iget-object v0, p0, Lo/acW;->e:Lo/acV;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->dr:I

    invoke-virtual {v0, v1}, Lo/acV;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/acW;->c:Landroid/widget/TextView;

    .line 150
    iget-object v0, p0, Lo/acW;->C:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lo/acW;->c:Landroid/widget/TextView;

    invoke-static {v1}, Lo/SSLCertificateSocketFactory;->b(Landroid/view/View;)Lio/reactivex/Observable;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 151
    invoke-virtual {v1, v3, v4, v2}, Lio/reactivex/Observable;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v1

    .line 152
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lo/acW$2;

    invoke-direct {v2, p0}, Lo/acW$2;-><init>(Lo/acW;)V

    .line 153
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 150
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 161
    iget-object v0, p0, Lo/acW;->e:Lo/acV;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->dm:I

    invoke-virtual {v0, v1}, Lo/acV;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/acW;->h:Landroid/widget/TextView;

    .line 162
    iget-object v0, p0, Lo/acW;->e:Lo/acV;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->dp:I

    invoke-virtual {v0, v1}, Lo/acV;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lo/acW;->g:Landroid/widget/ImageView;

    .line 163
    iget-object v0, p0, Lo/acW;->e:Lo/acV;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->dk:I

    invoke-virtual {v0, v1}, Lo/acV;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lo/acW;->j:Landroid/widget/ImageView;

    .line 164
    iget-object v0, p0, Lo/acW;->e:Lo/acV;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->do:I

    invoke-virtual {v0, v1}, Lo/acV;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/acW;->w:Landroid/view/View;

    const/4 v0, 0x0

    .line 166
    invoke-direct {p0, v0}, Lo/acW;->e(Z)V

    .line 168
    iget-object v1, p0, Lo/acW;->e:Lo/acV;

    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->eE:I

    invoke-virtual {v1, v2}, Lo/acV;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lo/acW;->s:Landroid/view/View;

    .line 169
    iget-object v1, p0, Lo/acW;->e:Lo/acV;

    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->eI:I

    invoke-virtual {v1, v2}, Lo/acV;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lo/acW;->q:Landroid/view/View;

    .line 170
    iget-object v1, p0, Lo/acW;->e:Lo/acV;

    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->eH:I

    invoke-virtual {v1, v2}, Lo/acV;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lo/acW;->p:Landroid/view/View;

    .line 171
    iget-object v1, p0, Lo/acW;->e:Lo/acV;

    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->jI:I

    invoke-virtual {v1, v2}, Lo/acV;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lo/acW;->x:Landroid/view/View;

    .line 173
    iget-object v1, p0, Lo/acW;->e:Lo/acV;

    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->dn:I

    invoke-virtual {v1, v2}, Lo/acV;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lo/acW;->v:Landroid/view/View;

    .line 174
    iget-object v1, p0, Lo/acW;->e:Lo/acV;

    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->dg:I

    invoke-virtual {v1, v2}, Lo/acV;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object v1, p0, Lo/acW;->l:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 175
    iget-object v1, p0, Lo/acW;->e:Lo/acV;

    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->eX:I

    invoke-virtual {v1, v2}, Lo/acV;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableLayout;

    iput-object v1, p0, Lo/acW;->r:Landroid/widget/TableLayout;

    .line 176
    iget-object v1, p0, Lo/acW;->e:Lo/acV;

    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->ds:I

    invoke-virtual {v1, v2}, Lo/acV;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lo/acW;->t:Landroid/widget/TextView;

    .line 177
    invoke-direct {p0}, Lo/acW;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Lo/acW;->t:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    :cond_0
    :try_start_0
    new-instance v1, Landroid/media/ToneGenerator;

    const/16 v2, 0x64

    invoke-direct {v1, v0, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v1, p0, Lo/acW;->o:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "VoipActivity"

    const-string v3, "Failed to initiate tone generator"

    .line 184
    invoke-static {v2, v3, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    :goto_0
    invoke-direct {p0}, Lo/acW;->i()V

    .line 189
    invoke-direct {p0}, Lo/acW;->v()Lo/acV;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Lo/acV;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lo/acW;->y:Landroid/media/AudioManager;

    .line 190
    iget-object v1, p0, Lo/acW;->e:Lo/acV;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lo/acV;->c()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/acW;->e:Lo/acV;

    invoke-virtual {v1}, Lo/acV;->c()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IVoip;->B()Z

    move-result v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lo/acW;->y:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    :goto_1
    iput-boolean v1, p0, Lo/acW;->i:Z

    .line 191
    iget-object v1, p0, Lo/acW;->e:Lo/acV;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lo/acV;->c()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo/acW;->e:Lo/acV;

    invoke-virtual {v1}, Lo/acV;->c()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IVoip;->D()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lo/acW;->m:Z

    .line 192
    new-instance v0, Lo/aeA;

    invoke-direct {v0}, Lo/aeA;-><init>()V

    iput-object v0, p0, Lo/acW;->n:Lo/aeA;

    .line 194
    invoke-static {}, Lo/adk;->c()I

    move-result v0

    const/16 v1, 0x16

    if-le v0, v1, :cond_3

    .line 195
    sget v0, Lcom/netflix/mediaclient/ui/R$Application;->m:I

    invoke-virtual {p1, v0}, Lo/acV;->getColor(I)I

    move-result v0

    iput v0, p0, Lo/acW;->B:I

    .line 196
    sget v0, Lcom/netflix/mediaclient/ui/R$Application;->o:I

    invoke-virtual {p1, v0}, Lo/acV;->getColor(I)I

    move-result v0

    iput v0, p0, Lo/acW;->D:I

    .line 197
    sget v0, Lcom/netflix/mediaclient/ui/R$Application;->n:I

    invoke-virtual {p1, v0}, Lo/acV;->getColor(I)I

    move-result p1

    iput p1, p0, Lo/acW;->A:I

    goto :goto_2

    .line 199
    :cond_3
    invoke-virtual {p1}, Lo/acV;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Application;->m:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lo/acW;->B:I

    .line 200
    invoke-virtual {p1}, Lo/acV;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Application;->o:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lo/acW;->D:I

    .line 201
    invoke-virtual {p1}, Lo/acV;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$Application;->n:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lo/acW;->A:I

    .line 204
    :goto_2
    invoke-direct {p0}, Lo/acW;->h()V

    return-void
.end method

.method static synthetic a(Lo/acW;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lo/acW;->p()V

    return-void
.end method

.method static synthetic a(Lo/acW;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lo/acW;->d(I)V

    return-void
.end method

.method static synthetic b(Lo/acW;)Landroid/view/View;
    .locals 0

    .line 50
    iget-object p0, p0, Lo/acW;->q:Landroid/view/View;

    return-object p0
.end method

.method private b(ICZ)V
    .locals 2

    .line 361
    invoke-static {}, Lo/adk;->c()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "VoipActivity"

    const-string v1, "Sets color to label for pre L devices..."

    .line 364
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_1

    .line 368
    iget p2, p0, Lo/acW;->A:I

    invoke-direct {p0, p1, p2}, Lo/acW;->d(II)V

    goto :goto_1

    .line 370
    :cond_1
    invoke-static {p2}, Ljava/lang/Character;->isDigit(C)Z

    move-result p2

    if-eqz p2, :cond_2

    iget p2, p0, Lo/acW;->B:I

    goto :goto_0

    :cond_2
    iget p2, p0, Lo/acW;->D:I

    :goto_0
    invoke-direct {p0, p1, p2}, Lo/acW;->d(II)V

    :goto_1
    return-void
.end method

.method private b(ICZI)V
    .locals 2

    .line 324
    iget-object v0, p0, Lo/acW;->e:Lo/acV;

    invoke-virtual {v0, p1}, Lo/acV;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p3, :cond_0

    .line 330
    iget-object v1, p0, Lo/acW;->e:Lo/acV;

    invoke-virtual {v1}, Lo/acV;->c()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/netflix/mediaclient/servicemgr/IVoip;->d(C)V

    .line 331
    iget-object v1, p0, Lo/acW;->o:Landroid/media/ToneGenerator;

    if-eqz v1, :cond_1

    .line 332
    invoke-virtual {v1, p4}, Landroid/media/ToneGenerator;->startTone(I)Z

    goto :goto_0

    .line 339
    :cond_0
    iget-object p4, p0, Lo/acW;->e:Lo/acV;

    invoke-virtual {p4}, Lo/acV;->c()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object p4

    invoke-interface {p4}, Lcom/netflix/mediaclient/servicemgr/IVoip;->A()V

    .line 340
    iget-object p4, p0, Lo/acW;->o:Landroid/media/ToneGenerator;

    if-eqz p4, :cond_1

    .line 341
    invoke-virtual {p4}, Landroid/media/ToneGenerator;->stopTone()V

    .line 346
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lo/acW;->b(ICZ)V

    if-nez v0, :cond_2

    const-string p1, "VoipActivity"

    const-string p2, "Button label not found!"

    .line 349
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private static b(Landroid/content/Context;ZLandroid/widget/ImageView;I)V
    .locals 0

    .line 753
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 754
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 755
    :cond_0
    invoke-static {p0}, Lo/acW;->e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 756
    :goto_0
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic c(Lo/acW;)Landroid/view/View;
    .locals 0

    .line 50
    iget-object p0, p0, Lo/acW;->s:Landroid/view/View;

    return-object p0
.end method

.method private c(Landroid/view/View;Z)V
    .locals 2

    .line 290
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 291
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->aY:I

    if-ne p1, v0, :cond_0

    .line 292
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->aY:I

    const/16 v0, 0x31

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p2, v1}, Lo/acW;->b(ICZI)V

    goto/16 :goto_0

    .line 293
    :cond_0
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->aX:I

    if-ne p1, v0, :cond_1

    .line 294
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->aX:I

    const/16 v0, 0x32

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, p2, v1}, Lo/acW;->b(ICZI)V

    goto/16 :goto_0

    .line 295
    :cond_1
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->aZ:I

    if-ne p1, v0, :cond_2

    .line 296
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->aZ:I

    const/16 v0, 0x33

    const/4 v1, 0x3

    invoke-direct {p0, p1, v0, p2, v1}, Lo/acW;->b(ICZI)V

    goto/16 :goto_0

    .line 297
    :cond_2
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ba:I

    if-ne p1, v0, :cond_3

    .line 298
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->ba:I

    const/16 v0, 0x34

    const/4 v1, 0x4

    invoke-direct {p0, p1, v0, p2, v1}, Lo/acW;->b(ICZI)V

    goto/16 :goto_0

    .line 299
    :cond_3
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->bc:I

    if-ne p1, v0, :cond_4

    .line 300
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->bc:I

    const/16 v0, 0x35

    const/4 v1, 0x5

    invoke-direct {p0, p1, v0, p2, v1}, Lo/acW;->b(ICZI)V

    goto :goto_0

    .line 301
    :cond_4
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->bb:I

    if-ne p1, v0, :cond_5

    .line 302
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->bb:I

    const/16 v0, 0x36

    const/4 v1, 0x6

    invoke-direct {p0, p1, v0, p2, v1}, Lo/acW;->b(ICZI)V

    goto :goto_0

    .line 303
    :cond_5
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->bf:I

    if-ne p1, v0, :cond_6

    .line 304
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->bf:I

    const/16 v0, 0x37

    const/4 v1, 0x7

    invoke-direct {p0, p1, v0, p2, v1}, Lo/acW;->b(ICZI)V

    goto :goto_0

    .line 305
    :cond_6
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->bd:I

    if-ne p1, v0, :cond_7

    .line 306
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->bd:I

    const/16 v0, 0x38

    const/16 v1, 0x8

    invoke-direct {p0, p1, v0, p2, v1}, Lo/acW;->b(ICZI)V

    goto :goto_0

    .line 307
    :cond_7
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->be:I

    if-ne p1, v0, :cond_8

    .line 308
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->be:I

    const/16 v0, 0x39

    const/16 v1, 0x9

    invoke-direct {p0, p1, v0, p2, v1}, Lo/acW;->b(ICZI)V

    goto :goto_0

    .line 309
    :cond_8
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->aW:I

    if-ne p1, v0, :cond_9

    .line 310
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->aW:I

    const/16 v0, 0x30

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lo/acW;->b(ICZI)V

    goto :goto_0

    .line 311
    :cond_9
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->bk:I

    if-ne p1, v0, :cond_a

    .line 312
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->bk:I

    const/16 v0, 0x2a

    const/16 v1, 0xa

    invoke-direct {p0, p1, v0, p2, v1}, Lo/acW;->b(ICZI)V

    goto :goto_0

    .line 313
    :cond_a
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->bg:I

    if-ne p1, v0, :cond_b

    .line 314
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->bg:I

    const/16 v0, 0x23

    const/16 v1, 0xb

    invoke-direct {p0, p1, v0, p2, v1}, Lo/acW;->b(ICZI)V

    :cond_b
    :goto_0
    return-void
.end method

.method private c(Ljava/lang/Runnable;I)V
    .locals 3

    .line 522
    invoke-static {}, Lo/adk;->c()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 523
    iget-object v0, p0, Lo/acW;->z:Landroid/os/Handler;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 525
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method static synthetic d(Lo/acW;)Lo/acV;
    .locals 0

    .line 50
    iget-object p0, p0, Lo/acW;->e:Lo/acV;

    return-object p0
.end method

.method private d(I)V
    .locals 4

    .line 723
    iget-object v0, p0, Lo/acW;->z:Landroid/os/Handler;

    iget-object v1, p0, Lo/acW;->H:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 724
    iget-object v0, p0, Lo/acW;->z:Landroid/os/Handler;

    iget-object v1, p0, Lo/acW;->H:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private d(II)V
    .locals 1

    .line 382
    iget-object v0, p0, Lo/acW;->e:Lo/acV;

    invoke-virtual {v0, p1}, Lo/acV;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 384
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lo/acW;Landroid/view/View;Z)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lo/acW;->c(Landroid/view/View;Z)V

    return-void
.end method

.method private d(Z)V
    .locals 5

    .line 236
    iget-object v0, p0, Lo/acW;->f:[Landroid/view/View;

    if-eqz v0, :cond_2

    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_2

    .line 239
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 240
    invoke-virtual {v3, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_1

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/high16 v4, 0x3e800000    # 0.25f

    .line 241
    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method private static e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 771
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 v0, -0x1

    .line 772
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p0
.end method

.method static synthetic e(Lo/acW;)Landroid/view/View;
    .locals 0

    .line 50
    iget-object p0, p0, Lo/acW;->p:Landroid/view/View;

    return-object p0
.end method

.method private e(Z)V
    .locals 3

    .line 213
    iget-object v0, p0, Lo/acW;->e:Lo/acV;

    iget-object v1, p0, Lo/acW;->j:Landroid/widget/ImageView;

    sget v2, Lcom/netflix/mediaclient/ui/R$Activity;->aw:I

    invoke-static {v0, p1, v1, v2}, Lo/acW;->b(Landroid/content/Context;ZLandroid/widget/ImageView;I)V

    .line 214
    iget-object v0, p0, Lo/acW;->w:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method static synthetic f(Lo/acW;)Landroid/widget/ImageView;
    .locals 0

    .line 50
    iget-object p0, p0, Lo/acW;->g:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic g(Lo/acW;)Landroid/widget/ImageView;
    .locals 0

    .line 50
    iget-object p0, p0, Lo/acW;->b:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic h(Lo/acW;)Landroid/widget/ImageView;
    .locals 0

    .line 50
    iget-object p0, p0, Lo/acW;->j:Landroid/widget/ImageView;

    return-object p0
.end method

.method private h()V
    .locals 2

    .line 226
    iget-object v0, p0, Lo/acW;->e:Lo/acV;

    invoke-virtual {v0}, Lo/acV;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VoipActivity"

    const-string v1, "Tablet: hide speaker option"

    .line 227
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lo/acW;->v:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 229
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private i()V
    .locals 7

    const/16 v0, 0xc

    new-array v0, v0, [Landroid/view/View;

    .line 248
    iput-object v0, p0, Lo/acW;->f:[Landroid/view/View;

    .line 249
    iget-object v0, p0, Lo/acW;->f:[Landroid/view/View;

    iget-object v1, p0, Lo/acW;->e:Lo/acV;

    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->aW:I

    invoke-virtual {v1, v2}, Lo/acV;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 250
    iget-object v0, p0, Lo/acW;->f:[Landroid/view/View;

    iget-object v1, p0, Lo/acW;->e:Lo/acV;

    sget v3, Lcom/netflix/mediaclient/ui/R$Fragment;->aY:I

    invoke-virtual {v1, v3}, Lo/acV;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 251
    iget-object v0, p0, Lo/acW;->f:[Landroid/view/View;

    iget-object v1, p0, Lo/acW;->e:Lo/acV;

    sget v4, Lcom/netflix/mediaclient/ui/R$Fragment;->aX:I

    invoke-virtual {v1, v4}, Lo/acV;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 252
    iget-object v0, p0, Lo/acW;->f:[Landroid/view/View;

    iget-object v1, p0, Lo/acW;->e:Lo/acV;

    sget v4, Lcom/netflix/mediaclient/ui/R$Fragment;->aZ:I

    invoke-virtual {v1, v4}, Lo/acV;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v0, v4

    .line 253
    iget-object v0, p0, Lo/acW;->f:[Landroid/view/View;

    iget-object v1, p0, Lo/acW;->e:Lo/acV;

    sget v4, Lcom/netflix/mediaclient/ui/R$Fragment;->ba:I

    invoke-virtual {v1, v4}, Lo/acV;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v4, 0x4

    aput-object v1, v0, v4

    .line 254
    iget-object v0, p0, Lo/acW;->f:[Landroid/view/View;

    iget-object v1, p0, Lo/acW;->e:Lo/acV;

    sget v4, Lcom/netflix/mediaclient/ui/R$Fragment;->bc:I

    invoke-virtual {v1, v4}, Lo/acV;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v4, 0x5

    aput-object v1, v0, v4

    .line 255
    iget-object v0, p0, Lo/acW;->f:[Landroid/view/View;

    iget-object v1, p0, Lo/acW;->e:Lo/acV;

    sget v4, Lcom/netflix/mediaclient/ui/R$Fragment;->bb:I

    invoke-virtual {v1, v4}, Lo/acV;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v4, 0x6

    aput-object v1, v0, v4

    .line 256
    iget-object v0, p0, Lo/acW;->f:[Landroid/view/View;

    iget-object v1, p0, Lo/acW;->e:Lo/acV;

    sget v4, Lcom/netflix/mediaclient/ui/R$Fragment;->bf:I

    invoke-virtual {v1, v4}, Lo/acV;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v4, 0x7

    aput-object v1, v0, v4

    .line 257
    iget-object v0, p0, Lo/acW;->f:[Landroid/view/View;

    iget-object v1, p0, Lo/acW;->e:Lo/acV;

    sget v4, Lcom/netflix/mediaclient/ui/R$Fragment;->bd:I

    invoke-virtual {v1, v4}, Lo/acV;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v4, 0x8

    aput-object v1, v0, v4

    .line 258
    iget-object v0, p0, Lo/acW;->f:[Landroid/view/View;

    iget-object v1, p0, Lo/acW;->e:Lo/acV;

    sget v4, Lcom/netflix/mediaclient/ui/R$Fragment;->be:I

    invoke-virtual {v1, v4}, Lo/acV;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v4, 0x9

    aput-object v1, v0, v4

    .line 259
    iget-object v0, p0, Lo/acW;->f:[Landroid/view/View;

    iget-object v1, p0, Lo/acW;->e:Lo/acV;

    sget v4, Lcom/netflix/mediaclient/ui/R$Fragment;->bk:I

    invoke-virtual {v1, v4}, Lo/acV;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v4, 0xa

    aput-object v1, v0, v4

    .line 260
    iget-object v0, p0, Lo/acW;->f:[Landroid/view/View;

    iget-object v1, p0, Lo/acW;->e:Lo/acV;

    sget v4, Lcom/netflix/mediaclient/ui/R$Fragment;->bg:I

    invoke-virtual {v1, v4}, Lo/acV;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v4, 0xb

    aput-object v1, v0, v4

    .line 262
    iget-object v0, p0, Lo/acW;->f:[Landroid/view/View;

    array-length v1, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v5, v0, v4

    .line 263
    iget-object v6, p0, Lo/acW;->G:Landroid/view/View$OnTouchListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 266
    :cond_0
    iget-object v0, p0, Lo/acW;->e:Lo/acV;

    invoke-virtual {v0}, Lo/acV;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->o()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/acW;->e:Lo/acV;

    invoke-virtual {v0}, Lo/acV;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->o()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 267
    :cond_1
    invoke-direct {p0, v2}, Lo/acW;->d(Z)V

    return-void
.end method

.method static synthetic i(Lo/acW;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lo/acW;->m:Z

    return p0
.end method

.method private j()V
    .locals 5

    const-string v0, "VoipActivity"

    const-string v1, "Update call status..."

    .line 452
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-boolean v0, p0, Lo/acW;->k:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 456
    invoke-direct {p0, v0}, Lo/acW;->e(Z)V

    .line 458
    iget-object v0, p0, Lo/acW;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lo/acW;->e:Lo/acV;

    sget v4, Lcom/netflix/mediaclient/ui/R$AssistContent;->fi:I

    invoke-virtual {v3, v4}, Lo/acV;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    iget-object v0, p0, Lo/acW;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lo/acW;->e:Lo/acV;

    sget v4, Lcom/netflix/mediaclient/ui/R$AssistContent;->fm:I

    invoke-virtual {v3, v4}, Lo/acV;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    iget-object v0, p0, Lo/acW;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 461
    iget-object v0, p0, Lo/acW;->x:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 463
    invoke-direct {p0}, Lo/acW;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 464
    invoke-direct {p0}, Lo/acW;->m()V

    goto :goto_0

    .line 467
    :cond_0
    invoke-direct {p0, v2}, Lo/acW;->e(Z)V

    .line 469
    iget-object v0, p0, Lo/acW;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lo/acW;->e:Lo/acV;

    sget v4, Lcom/netflix/mediaclient/ui/R$AssistContent;->fr:I

    invoke-virtual {v3, v4}, Lo/acV;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    iget-object v0, p0, Lo/acW;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lo/acW;->e:Lo/acV;

    sget v4, Lcom/netflix/mediaclient/ui/R$AssistContent;->fo:I

    invoke-virtual {v3, v4}, Lo/acV;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    iget-object v0, p0, Lo/acW;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 472
    iget-object v0, p0, Lo/acW;->x:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic j(Lo/acW;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lo/acW;->i:Z

    return p0
.end method

.method private k()V
    .locals 2

    .line 532
    iget-object v0, p0, Lo/acW;->e:Lo/acV;

    invoke-virtual {v0}, Lo/acV;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 536
    :cond_0
    iget-object v0, p0, Lo/acW;->b:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    return-void

    .line 540
    :cond_1
    iget-object v0, p0, Lo/acW;->e:Lo/acV;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lo/acV;->c()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/acW;->e:Lo/acV;

    invoke-virtual {v0}, Lo/acV;->c()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip;->B()Z

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lo/acW;->y:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lo/acW;->i:Z

    .line 542
    new-instance v0, Lo/acW$6;

    invoke-direct {v0, p0}, Lo/acW$6;-><init>(Lo/acW;)V

    iget v1, p0, Lo/acW;->u:I

    invoke-direct {p0, v0, v1}, Lo/acW;->c(Ljava/lang/Runnable;I)V

    return-void
.end method

.method private l()V
    .locals 2

    .line 490
    iget-object v0, p0, Lo/acW;->g:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 494
    :cond_0
    iget-object v0, p0, Lo/acW;->e:Lo/acV;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/acV;->c()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/acW;->e:Lo/acV;

    invoke-virtual {v0}, Lo/acV;->c()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip;->D()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lo/acW;->m:Z

    .line 496
    new-instance v0, Lo/acW$4;

    invoke-direct {v0, p0}, Lo/acW$4;-><init>(Lo/acW;)V

    iget v1, p0, Lo/acW;->u:I

    invoke-direct {p0, v0, v1}, Lo/acW;->c(Ljava/lang/Runnable;I)V

    return-void
.end method

.method static synthetic l(Lo/acW;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lo/acW;->u()V

    return-void
.end method

.method private m()V
    .locals 5

    .line 633
    iget-object v0, p0, Lo/acW;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x8

    const-string v3, "VoipActivity"

    if-eqz v0, :cond_1

    const-string v4, "Dialpad was visible, remove it!"

    .line 635
    invoke-static {v3, v4}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v3, p0, Lo/acW;->q:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 638
    iget-object v1, p0, Lo/acW;->s:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const-string v4, "Dialpad was NOT visible, show it!"

    .line 641
    invoke-static {v3, v4}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget-object v3, p0, Lo/acW;->q:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 643
    iget-object v2, p0, Lo/acW;->s:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 646
    :goto_1
    new-instance v1, Lo/acW$9;

    invoke-direct {v1, p0, v0}, Lo/acW$9;-><init>(Lo/acW;Z)V

    iget v0, p0, Lo/acW;->u:I

    invoke-direct {p0, v1, v0}, Lo/acW;->c(Ljava/lang/Runnable;I)V

    return-void
.end method

.method private n()V
    .locals 2

    const-string v0, "VoipActivity"

    const-string v1, "Cancel call by user"

    .line 621
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    iget-object v0, p0, Lo/acW;->e:Lo/acV;

    if-eqz v0, :cond_1

    .line 623
    invoke-virtual {v0}, Lo/acV;->e()V

    .line 624
    iget-object v0, p0, Lo/acW;->e:Lo/acV;

    invoke-virtual {v0}, Lo/acV;->c()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lo/acW;->e:Lo/acV;

    invoke-virtual {v0}, Lo/acV;->c()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip;->y()Z

    .line 627
    :cond_0
    iget-object v0, p0, Lo/acW;->e:Lo/acV;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/acV;->c(Lcom/netflix/mediaclient/servicemgr/IVoip$ActionBar;)V

    :cond_1
    return-void
.end method

.method private o()Z
    .locals 1

    .line 481
    invoke-direct {p0}, Lo/acW;->v()Lo/acV;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 482
    invoke-direct {p0}, Lo/acW;->v()Lo/acV;

    move-result-object v0

    invoke-virtual {v0}, Lo/acV;->getServiceManager()Lo/Am;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 483
    invoke-direct {p0}, Lo/acW;->v()Lo/acV;

    move-result-object v0

    invoke-virtual {v0}, Lo/acV;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->i()Lo/cz;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 484
    invoke-direct {p0}, Lo/acW;->v()Lo/acV;

    move-result-object v0

    invoke-virtual {v0}, Lo/acV;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->i()Lo/cz;

    move-result-object v0

    invoke-interface {v0}, Lo/cz;->z()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 485
    invoke-direct {p0}, Lo/acW;->v()Lo/acV;

    move-result-object v0

    invoke-virtual {v0}, Lo/acV;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->i()Lo/cz;

    move-result-object v0

    invoke-interface {v0}, Lo/cz;->z()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->isOpenDialpadByDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private p()V
    .locals 2

    .line 675
    iget-boolean v0, p0, Lo/acW;->i:Z

    const-string v1, "VoipActivity"

    if-eqz v0, :cond_0

    const-string v0, "Set speaker from on to off"

    .line 676
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "Set speaker from off to on"

    .line 678
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :goto_0
    iget-boolean v0, p0, Lo/acW;->i:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lo/acW;->i:Z

    .line 682
    iget-object v0, p0, Lo/acW;->e:Lo/acV;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/acV;->c()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 683
    iget-object v0, p0, Lo/acW;->e:Lo/acV;

    invoke-virtual {v0}, Lo/acV;->c()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    iget-boolean v1, p0, Lo/acW;->i:Z

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IVoip;->e(Z)V

    .line 685
    :cond_1
    invoke-direct {p0}, Lo/acW;->k()V

    return-void
.end method

.method private q()V
    .locals 2

    const-string v0, "VoipActivity"

    const-string v1, "Start timer..."

    .line 713
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget-object v0, p0, Lo/acW;->z:Landroid/os/Handler;

    iget-object v1, p0, Lo/acW;->H:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private r()V
    .locals 2

    .line 661
    iget-boolean v0, p0, Lo/acW;->m:Z

    const-string v1, "VoipActivity"

    if-eqz v0, :cond_0

    const-string v0, "Unmute"

    .line 662
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "Mute"

    .line 664
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :goto_0
    iget-boolean v0, p0, Lo/acW;->m:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lo/acW;->m:Z

    .line 667
    iget-object v0, p0, Lo/acW;->e:Lo/acV;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/acV;->c()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 668
    iget-object v0, p0, Lo/acW;->e:Lo/acV;

    invoke-virtual {v0}, Lo/acV;->c()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    iget-boolean v1, p0, Lo/acW;->m:Z

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IVoip;->b(Z)V

    .line 671
    :cond_1
    invoke-direct {p0}, Lo/acW;->l()V

    return-void
.end method

.method private s()V
    .locals 2

    const-string v0, "VoipActivity"

    const-string v1, "Stop timer..."

    .line 708
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget-object v0, p0, Lo/acW;->z:Landroid/os/Handler;

    iget-object v1, p0, Lo/acW;->H:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private t()V
    .locals 0

    .line 718
    invoke-direct {p0}, Lo/acW;->s()V

    .line 719
    invoke-direct {p0}, Lo/acW;->q()V

    return-void
.end method

.method private declared-synchronized u()V
    .locals 6

    monitor-enter p0

    .line 729
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lo/acW;->e:Lo/acV;

    invoke-virtual {v2}, Lo/acV;->c()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IVoip;->b()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v1, v0

    .line 734
    iget-object v0, p0, Lo/acW;->h:Landroid/widget/TextView;

    iget-object v2, p0, Lo/acW;->n:Lo/aeA;

    invoke-virtual {v2, v1}, Lo/aeA;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 736
    invoke-direct {p0}, Lo/acW;->v()Lo/acV;

    move-result-object v0

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->fq:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lo/acW;->n:Lo/aeA;

    invoke-virtual {v5, v1}, Lo/aeA;->e(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Lo/acV;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 737
    iget-object v1, p0, Lo/acW;->t:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 738
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private v()Lo/acV;
    .locals 1

    .line 741
    iget-object v0, p0, Lo/acW;->e:Lo/acV;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    const-string v0, "VoipActivity"

    const-string v1, "Call started!"

    .line 557
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 558
    invoke-virtual {p0, v1}, Lo/acW;->a(Z)V

    .line 559
    iput-boolean v1, p0, Lo/acW;->k:Z

    .line 560
    iget-object v2, p0, Lo/acW;->e:Lo/acV;

    invoke-virtual {v2}, Lo/acV;->c()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IVoip;->u()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Success on starting call"

    .line 561
    invoke-static {v0, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v2, "Failed to start call"

    .line 563
    invoke-static {v0, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v0, p0, Lo/acW;->e:Lo/acV;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v2}, Lo/acV;->b(Lcom/netflix/mediaclient/servicemgr/IVoip$ActionBar;Ljava/lang/String;I)V

    .line 567
    :goto_0
    iget-object v0, p0, Lo/acW;->s:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 568
    iget-object v0, p0, Lo/acW;->q:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 569
    invoke-direct {p0, v1}, Lo/acW;->e(Z)V

    return-void
.end method

.method a(Z)V
    .locals 1

    .line 440
    invoke-direct {p0}, Lo/acW;->l()V

    .line 441
    invoke-direct {p0}, Lo/acW;->k()V

    .line 442
    iput-boolean p1, p0, Lo/acW;->k:Z

    .line 443
    invoke-direct {p0}, Lo/acW;->j()V

    .line 444
    iget-boolean v0, p0, Lo/acW;->k:Z

    if-eqz v0, :cond_0

    .line 445
    invoke-direct {p0}, Lo/acW;->t()V

    .line 447
    :cond_0
    invoke-direct {p0, p1}, Lo/acW;->d(Z)V

    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "VoipActivity"

    const-string v1, "Call is connected"

    .line 573
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 574
    iput-boolean v0, p0, Lo/acW;->k:Z

    .line 575
    invoke-direct {p0}, Lo/acW;->j()V

    .line 576
    invoke-direct {p0, v0}, Lo/acW;->d(Z)V

    .line 577
    invoke-direct {p0}, Lo/acW;->q()V

    return-void
.end method

.method public b(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const-string p1, "VoipActivity"

    const-string v1, "DialScreen:: null view? This should never happen!"

    .line 599
    invoke-static {p1, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 603
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 604
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->dp:I

    if-eq p1, v1, :cond_5

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->dq:I

    if-ne p1, v1, :cond_1

    goto :goto_1

    .line 606
    :cond_1
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->dg:I

    if-ne p1, v1, :cond_2

    .line 607
    invoke-direct {p0}, Lo/acW;->n()V

    goto :goto_2

    .line 608
    :cond_2
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->dk:I

    if-eq p1, v1, :cond_4

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->do:I

    if-ne p1, v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return p1

    .line 609
    :cond_4
    :goto_0
    invoke-direct {p0}, Lo/acW;->m()V

    goto :goto_2

    .line 605
    :cond_5
    :goto_1
    invoke-direct {p0}, Lo/acW;->r()V

    :goto_2
    return v0
.end method

.method public c()V
    .locals 1

    .line 208
    iget-object v0, p0, Lo/acW;->C:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    return-void
.end method

.method d()V
    .locals 2

    .line 390
    iget-object v0, p0, Lo/acW;->q:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lo/acW$3;

    invoke-direct {v1, p0}, Lo/acW$3;-><init>(Lo/acW;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public e()Z
    .locals 1

    .line 511
    iget-boolean v0, p0, Lo/acW;->m:Z

    return v0
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    .line 585
    iput-boolean v0, p0, Lo/acW;->k:Z

    .line 586
    invoke-direct {p0}, Lo/acW;->j()V

    .line 587
    invoke-direct {p0}, Lo/acW;->s()V

    return-void
.end method

.method public g()V
    .locals 2

    const-string v0, "VoipActivity"

    const-string v1, "Call is ringing"

    .line 581
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
