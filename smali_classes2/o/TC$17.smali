.class Lo/TC$17;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Du$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/TC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/TC;


# direct methods
.method constructor <init>(Lo/TC;)V
    .locals 0

    .line 3435
    iput-object p1, p0, Lo/TC$17;->e:Lo/TC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lo/AS;)V
    .locals 4

    .line 3439
    iget-object v0, p0, Lo/TC$17;->e:Lo/TC;

    invoke-virtual {v0}, Lo/TC;->l()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3448
    :cond_0
    iget-object v0, p0, Lo/TC$17;->e:Lo/TC;

    iget-object v0, v0, Lo/TC;->i:Lo/Tv;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/TC$17;->e:Lo/TC;

    iget-object v0, v0, Lo/TC;->i:Lo/Tv;

    invoke-virtual {v0}, Lo/Tv;->i()Lo/AK;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/TC$17;->e:Lo/TC;

    iget-object v0, v0, Lo/TC;->i:Lo/Tv;

    invoke-virtual {v0}, Lo/Tv;->i()Lo/AK;

    move-result-object v0

    invoke-interface {v0}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lo/AS;->bb()Lo/AK;

    move-result-object v1

    invoke-interface {v1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "PlayerFragment"

    const-string v0, "Request to play same episode, do nothing"

    .line 3449
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3450
    iget-object p1, p0, Lo/TC$17;->e:Lo/TC;

    invoke-virtual {p1}, Lo/TC;->R()V

    .line 3451
    iget-object p1, p0, Lo/TC$17;->e:Lo/TC;

    invoke-virtual {p1}, Lo/TC;->j()V

    goto :goto_0

    .line 3453
    :cond_1
    iget-object v0, p0, Lo/TC$17;->e:Lo/TC;

    invoke-interface {p1}, Lo/AS;->bb()Lo/AK;

    move-result-object v1

    invoke-interface {v1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->i:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-virtual {v0, v1, v2}, Lo/TC;->d(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3455
    new-instance v0, Lo/Tv;

    sget-object v1, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->i:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-interface {p1}, Lo/AS;->bb()Lo/AK;

    move-result-object v2

    invoke-interface {v2}, Lo/AK;->P()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lo/Tv;-><init>(Lo/Bc;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/model/leafs/originals/interactive/InteractiveMoments;)V

    .line 3457
    iget-object p1, p0, Lo/TC$17;->e:Lo/TC;

    invoke-virtual {p1, v0}, Lo/TC;->b(Lo/Tv;)V

    .line 3460
    :cond_2
    :goto_0
    iget-object p1, p0, Lo/TC$17;->e:Lo/TC;

    invoke-static {p1}, Lo/TC;->m(Lo/TC;)V

    return-void
.end method
