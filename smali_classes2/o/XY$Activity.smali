.class final Lo/XY$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/XY;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Activity"
.end annotation


# instance fields
.field final synthetic e:Lo/XY;


# direct methods
.method public constructor <init>(Lo/XY;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lo/XY$Activity;->e:Lo/XY;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 98
    iget-object v0, p0, Lo/XY$Activity;->e:Lo/XY;

    invoke-static {v0}, Lo/XY;->b(Lo/XY;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TimeoutableVideoView"

    const-string v1, "response timeout"

    .line 99
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lo/XY$Activity;->e:Lo/XY;

    invoke-static {v0}, Lo/XY;->e(Lo/XY;)Lcom/netflix/mediaclient/servicemgr/IPlayer$StateListAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lo/XY$StateListAnimator;

    invoke-direct {v1}, Lo/XY$StateListAnimator;-><init>()V

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IPlayer$StateListAnimator;->e(Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)V

    :cond_0
    return-void
.end method
