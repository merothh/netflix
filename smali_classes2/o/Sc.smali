.class public final Lo/Sc;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Sc$StateListAnimator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lo/ci;)V
    .locals 2

    const-string v0, "showId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    const-class v0, Lo/hW;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/hW;

    .line 19
    sget-object v1, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    .line 16
    invoke-interface {v0, p1, p2, v1, p3}, Lo/hW;->e(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V

    return-void
.end method

.method public final c(Ljava/lang/String;IILo/Sc$StateListAnimator;Lcom/netflix/mediaclient/browse/api/task/TaskMode;)V
    .locals 7

    const-string v0, "showId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "episodeListCallback"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskMode"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    const-class v0, Lo/hW;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lo/hW;

    .line 35
    new-instance v0, Lo/Sc$ActionBar;

    invoke-direct {v0, p4}, Lo/Sc$ActionBar;-><init>(Lo/Sc$StateListAnimator;)V

    move-object v6, v0

    check-cast v6, Lo/ci;

    move-object v2, p1

    move-object v3, p5

    move v4, p2

    move v5, p3

    .line 30
    invoke-interface/range {v1 .. v6}, Lo/hW;->e(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;IILo/ci;)V

    return-void
.end method
