.class public abstract Lo/Ht;
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
.field private f:Ljava/lang/String;

.field private final g:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private h:Z

.field private final i:Landroid/view/View$OnClickListener;

.field private j:Z

.field private m:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lo/GR;-><init>()V

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lo/Ht;->j:Z

    .line 24
    new-instance v0, Lo/Ht$Application;

    invoke-direct {v0, p0}, Lo/Ht$Application;-><init>(Lo/Ht;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lo/Ht;->i:Landroid/view/View$OnClickListener;

    .line 39
    new-instance v0, Lo/Ht$TaskDescription;

    invoke-direct {v0, p0}, Lo/Ht$TaskDescription;-><init>(Lo/Ht;)V

    check-cast v0, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iput-object v0, p0, Lo/Ht;->g:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method


# virtual methods
.method protected b()I
    .locals 1

    .line 57
    sget v0, Lo/GS$FragmentManager;->o:I

    return v0
.end method

.method public final b(Z)V
    .locals 0

    .line 51
    iput-boolean p1, p0, Lo/Ht;->h:Z

    return-void
.end method

.method public synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 19
    check-cast p1, Lo/HC;

    invoke-virtual {p0, p1}, Lo/Ht;->e(Lo/HC;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p1, Lo/HC;

    invoke-virtual {p0, p1}, Lo/Ht;->e(Lo/HC;)V

    return-void
.end method

.method public final e(Ljava/lang/Integer;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lo/Ht;->m:Ljava/lang/Integer;

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lo/Ht;->f:Ljava/lang/String;

    return-void
.end method

.method public e(Lo/HC;)V
    .locals 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Lo/HC;->b()Lo/ListView;

    move-result-object v0

    iget-boolean v1, p0, Lo/Ht;->h:Z

    invoke-virtual {v0, v1}, Lo/ListView;->setChecked(Z)V

    .line 71
    sget-object v0, Lo/GR;->b:Lo/GR$ActionBar;

    invoke-virtual {p1}, Lo/HC;->b()Lo/ListView;

    move-result-object v1

    invoke-virtual {p1}, Lo/HC;->b()Lo/ListView;

    move-result-object v2

    invoke-virtual {v2}, Lo/ListView;->isChecked()Z

    move-result v2

    iget-object v3, p0, Lo/Ht;->m:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2, v3}, Lo/GR$ActionBar;->b(Lo/ListView;ZLjava/lang/Integer;)V

    .line 72
    invoke-virtual {p1}, Lo/HC;->b()Lo/ListView;

    move-result-object v0

    iget-object v1, p0, Lo/Ht;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/ListView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-virtual {p1}, Lo/HC;->b()Lo/ListView;

    move-result-object v0

    iget-object v1, p0, Lo/Ht;->g:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lo/ListView;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 74
    iget-boolean v0, p0, Lo/Ht;->j:Z

    sget v1, Lo/GS$Fragment;->m:I

    invoke-virtual {p1, v0, v1}, Lo/HC;->b(ZI)V

    .line 75
    check-cast p1, Lo/TimeUnit;

    invoke-super {p0, p1}, Lo/GR;->c(Lo/TimeUnit;)V

    return-void
.end method

.method public final e(Z)V
    .locals 0

    .line 22
    iput-boolean p1, p0, Lo/Ht;->j:Z

    return-void
.end method

.method public synthetic n()Lo/TimeUnit;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lo/Ht;->u()Lo/HC;

    move-result-object v0

    check-cast v0, Lo/TimeUnit;

    return-object v0
.end method

.method public final p()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lo/Ht;->h:Z

    return v0
.end method

.method public final q()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lo/Ht;->j:Z

    return v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lo/Ht;->f:Ljava/lang/String;

    return-object v0
.end method

.method protected u()Lo/HC;
    .locals 9

    .line 59
    new-instance v0, Lo/HC;

    invoke-direct {v0}, Lo/HC;-><init>()V

    .line 60
    invoke-virtual {p0}, Lo/Ht;->h()Lo/UpdateEngine;

    move-result-object v1

    .line 79
    const-class v2, Lo/GY;

    invoke-virtual {v1, v2}, Lo/UpdateEngine;->a(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v1

    .line 61
    new-instance v2, Lo/Ht$StateListAnimator;

    invoke-direct {v2, p0}, Lo/Ht$StateListAnimator;-><init>(Lo/Ht;)V

    check-cast v2, Lio/reactivex/functions/Predicate;

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v3

    const-string v1, "eventBusFactory.getSafeM\u2026& it.videoId == videoId }"

    invoke-static {v3, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    new-instance v1, Lcom/netflix/mediaclient/ui/extras/models/MyListButtonModel$createNewHolder$1$2;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/ui/extras/models/MyListButtonModel$createNewHolder$1$2;-><init>(Lo/HC;)V

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

    .line 55
    iget-object v0, p0, Lo/Ht;->m:Ljava/lang/Integer;

    return-object v0
.end method
