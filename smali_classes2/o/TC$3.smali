.class Lo/TC$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/IPlayer$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/TC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/TC;


# direct methods
.method constructor <init>(Lo/TC;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lo/TC$3;->b:Lo/TC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;)V
    .locals 3

    .line 445
    sget-object v0, Lo/TC$19;->a:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 456
    :cond_0
    iget-object v0, p0, Lo/TC$3;->b:Lo/TC;

    invoke-virtual {v0}, Lo/TC;->I()V

    .line 458
    :cond_1
    iget-object v0, p0, Lo/TC$3;->b:Lo/TC;

    iget-object v0, v0, Lo/TC;->o:Lo/UpdateEngine;

    const-class v1, Lo/UP;

    sget-object v2, Lo/UP$Bitmap;->a:Lo/UP$Bitmap;

    invoke-virtual {v0, v1, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 460
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "player status changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", no action"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PlayerFragment"

    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 453
    :cond_2
    iget-object p1, p0, Lo/TC$3;->b:Lo/TC;

    iget-object p1, p1, Lo/TC;->o:Lo/UpdateEngine;

    const-class v0, Lo/UP;

    sget-object v1, Lo/UP$ComponentName;->d:Lo/UP$ComponentName;

    invoke-virtual {p1, v0, v1}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    goto :goto_1

    .line 450
    :cond_3
    iget-object p1, p0, Lo/TC$3;->b:Lo/TC;

    invoke-virtual {p1}, Lo/TC;->H()V

    goto :goto_1

    .line 447
    :cond_4
    iget-object p1, p0, Lo/TC$3;->b:Lo/TC;

    invoke-virtual {p1}, Lo/TC;->E()V

    :goto_1
    return-void
.end method
