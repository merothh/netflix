.class Lo/KX$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/KX;->c(Lcom/netflix/model/leafs/originals/BigRowSummary;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/model/leafs/originals/BillboardPhase;

.field final synthetic e:Lo/KX;


# direct methods
.method constructor <init>(Lo/KX;Lcom/netflix/model/leafs/originals/BillboardPhase;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lo/KX$3;->e:Lo/KX;

    iput-object p2, p0, Lo/KX$3;->c:Lcom/netflix/model/leafs/originals/BillboardPhase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 411
    iget-object v0, p0, Lo/KX$3;->e:Lo/KX;

    invoke-virtual {v0}, Lo/KX;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 412
    invoke-static {v0}, Lo/adu;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lo/KX$3;->e:Lo/KX;

    invoke-static {v1}, Lo/KX;->e(Lo/KX;)Lo/Aw;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 413
    iget-object v1, p0, Lo/KX$3;->e:Lo/KX;

    invoke-static {v1}, Lo/KX;->e(Lo/KX;)Lo/Aw;

    move-result-object v2

    iget-object v3, p0, Lo/KX$3;->c:Lcom/netflix/model/leafs/originals/BillboardPhase;

    invoke-virtual {v3}, Lcom/netflix/model/leafs/originals/BillboardPhase;->actions()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lo/KX;->b(Lo/KX;Lo/Aw;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/List;)V

    .line 414
    iget-object v0, p0, Lo/KX$3;->c:Lcom/netflix/model/leafs/originals/BillboardPhase;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/BillboardPhase;->supplementalMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/KX$3;->e:Lo/KX;

    invoke-static {v0}, Lo/KX;->e(Lo/KX;)Lo/Aw;

    move-result-object v0

    invoke-interface {v0}, Lo/Aw;->i()Lcom/netflix/model/leafs/originals/BigRowSummary;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/model/leafs/originals/BigRowSummary;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/KX$3;->c:Lcom/netflix/model/leafs/originals/BillboardPhase;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/BillboardPhase;->supplementalMessage()Ljava/lang/String;

    move-result-object v0

    .line 415
    :goto_0
    iget-object v1, p0, Lo/KX$3;->e:Lo/KX;

    invoke-static {v1}, Lo/KX;->c(Lo/KX;)Lo/ImageSwitcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
