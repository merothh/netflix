.class Lo/nQ$16;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/nQ;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lo/nQ;


# direct methods
.method constructor <init>(Lo/nQ;Ljava/lang/String;)V
    .locals 0

    .line 1076
    iput-object p1, p0, Lo/nQ$16;->e:Lo/nQ;

    iput-object p2, p0, Lo/nQ$16;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1079
    iget-object v0, p0, Lo/nQ$16;->d:Ljava/lang/String;

    iget-object v1, p0, Lo/nQ$16;->e:Lo/nQ;

    invoke-static {v1}, Lo/nQ;->f(Lo/nQ;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lo/nT;->a(Ljava/lang/String;Ljava/util/List;)Lo/ov;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1081
    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;->c:Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;

    new-instance v2, Lo/nQ$16$3;

    invoke-direct {v2, p0, v0}, Lo/nQ$16$3;-><init>(Lo/nQ$16;Lo/ov;)V

    invoke-interface {v0, v1, v2}, Lo/ov;->e(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;Lo/nS$Application;)V

    :cond_0
    return-void
.end method
