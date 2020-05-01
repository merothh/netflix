.class public abstract Lo/HD;
.super Lo/GR;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/GR<",
        "Lo/HC;",
        ">;"
    }
.end annotation


# instance fields
.field private f:Z

.field private final g:Landroid/view/View$OnClickListener;

.field private h:Ljava/lang/String;

.field private final i:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private j:Z

.field private k:Ljava/lang/Integer;

.field private n:Z

.field private o:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lo/GR;-><init>()V

    .line 23
    new-instance v0, Lo/HD$StateListAnimator;

    invoke-direct {v0, p0}, Lo/HD$StateListAnimator;-><init>(Lo/HD;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lo/HD;->g:Landroid/view/View$OnClickListener;

    .line 31
    new-instance v0, Lo/HD$ActionBar;

    invoke-direct {v0, p0}, Lo/HD$ActionBar;-><init>(Lo/HD;)V

    check-cast v0, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iput-object v0, p0, Lo/HD;->i:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lo/HD;->j:Z

    return-void
.end method

.method public static final synthetic b(Lo/HD;Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lo/HD;->d(Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;)V

    return-void
.end method

.method private final d(Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;)V
    .locals 3

    .line 85
    iget-object v0, p0, Lo/HD;->h:Ljava/lang/String;

    invoke-virtual {p0}, Lo/HD;->m()Lo/GW;

    move-result-object v1

    invoke-virtual {v1}, Lo/GW;->d()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/ui/extras/models/RemindMeButtonModel$sendToggleEvent$1;

    invoke-direct {v2, p0, p1}, Lcom/netflix/mediaclient/ui/extras/models/RemindMeButtonModel$sendToggleEvent$1;-><init>(Lo/HD;Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;)V

    check-cast v2, Lo/alN;

    invoke-static {v0, v1, v2}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Integer;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lo/HD;->k:Ljava/lang/Integer;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lo/HD;->h:Ljava/lang/String;

    return-void
.end method

.method protected b()I
    .locals 1

    .line 58
    sget v0, Lo/GS$FragmentManager;->s:I

    return v0
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p2, Lo/HC;

    invoke-virtual {p0, p1, p2}, Lo/HD;->c(ILo/HC;)V

    return-void
.end method

.method public final b(Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lo/HD;->n:Z

    return-void
.end method

.method public c(ILo/HC;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-boolean p2, p0, Lo/HD;->n:Z

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lo/HD;->f:Z

    if-nez p2, :cond_0

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 71
    sget-object p1, Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;->d:Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;

    invoke-direct {p0, p1}, Lo/HD;->d(Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 21
    check-cast p2, Lo/HC;

    invoke-virtual {p0, p1, p2}, Lo/HD;->c(ILo/HC;)V

    return-void
.end method

.method public synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 21
    check-cast p1, Lo/HC;

    invoke-virtual {p0, p1}, Lo/HD;->e(Lo/HC;)V

    return-void
.end method

.method public final c(Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Lo/HD;->f:Z

    return-void
.end method

.method public final d(Ljava/lang/Integer;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lo/HD;->o:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p1, Lo/HC;

    invoke-virtual {p0, p1}, Lo/HD;->e(Lo/HC;)V

    return-void
.end method

.method public e(Lo/HC;)V
    .locals 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Lo/HC;->b()Lo/ListView;

    move-result-object v0

    iget-boolean v1, p0, Lo/HD;->f:Z

    invoke-virtual {v0, v1}, Lo/ListView;->setChecked(Z)V

    .line 77
    sget-object v0, Lo/GR;->b:Lo/GR$ActionBar;

    invoke-virtual {p1}, Lo/HC;->b()Lo/ListView;

    move-result-object v1

    invoke-virtual {p1}, Lo/HC;->b()Lo/ListView;

    move-result-object v2

    invoke-virtual {v2}, Lo/ListView;->isChecked()Z

    move-result v2

    iget-object v3, p0, Lo/HD;->o:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2, v3}, Lo/GR$ActionBar;->b(Lo/ListView;ZLjava/lang/Integer;)V

    .line 78
    invoke-virtual {p1}, Lo/HC;->b()Lo/ListView;

    move-result-object v0

    iget-object v1, p0, Lo/HD;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/ListView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    invoke-virtual {p1}, Lo/HC;->b()Lo/ListView;

    move-result-object v0

    iget-object v1, p0, Lo/HD;->i:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lo/ListView;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 80
    iget-boolean v0, p0, Lo/HD;->j:Z

    sget v1, Lo/GS$Fragment;->b:I

    invoke-virtual {p1, v0, v1}, Lo/HC;->b(ZI)V

    .line 81
    check-cast p1, Lo/TimeUnit;

    invoke-super {p0, p1}, Lo/GR;->c(Lo/TimeUnit;)V

    return-void
.end method

.method public final e(Z)V
    .locals 0

    .line 46
    iput-boolean p1, p0, Lo/HD;->j:Z

    return-void
.end method

.method public synthetic n()Lo/TimeUnit;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lo/HD;->x()Lo/HC;

    move-result-object v0

    check-cast v0, Lo/TimeUnit;

    return-object v0
.end method

.method public final p()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lo/HD;->f:Z

    return v0
.end method

.method public final q()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lo/HD;->j:Z

    return v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lo/HD;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final u()Ljava/lang/Integer;
    .locals 1

    .line 50
    iget-object v0, p0, Lo/HD;->o:Ljava/lang/Integer;

    return-object v0
.end method

.method public final v()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lo/HD;->n:Z

    return v0
.end method

.method protected x()Lo/HC;
    .locals 9

    .line 60
    new-instance v0, Lo/HC;

    invoke-direct {v0}, Lo/HC;-><init>()V

    .line 61
    invoke-virtual {p0}, Lo/HD;->h()Lo/UpdateEngine;

    move-result-object v1

    .line 98
    const-class v2, Lo/GY;

    invoke-virtual {v1, v2}, Lo/UpdateEngine;->a(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v1

    .line 62
    new-instance v2, Lo/HD$Activity;

    invoke-direct {v2, p0}, Lo/HD$Activity;-><init>(Lo/HD;)V

    check-cast v2, Lio/reactivex/functions/Predicate;

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v3

    const-string v1, "eventBusFactory.getSafeM\u2026& it.videoId == videoId }"

    invoke-static {v3, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    new-instance v1, Lcom/netflix/mediaclient/ui/extras/models/RemindMeButtonModel$createNewHolder$1$2;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/ui/extras/models/RemindMeButtonModel$createNewHolder$1$2;-><init>(Lo/HC;)V

    move-object v6, v1

    check-cast v6, Lo/alA;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-object v0
.end method

.method public final y()Ljava/lang/Integer;
    .locals 1

    .line 56
    iget-object v0, p0, Lo/HD;->k:Ljava/lang/Integer;

    return-object v0
.end method
