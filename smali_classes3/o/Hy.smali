.class public abstract Lo/Hy;
.super Lo/GR;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Hy$Application;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/GR<",
        "Lo/Hy$Application;",
        ">;"
    }
.end annotation


# instance fields
.field private g:Z

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Lo/Pa;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lo/GR;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()I
    .locals 1

    .line 74
    sget v0, Lo/GS$FragmentManager;->D:I

    return v0
.end method

.method public bridge synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p2, Lo/Hy$Application;

    invoke-virtual {p0, p1, p2}, Lo/Hy;->b(ILo/Hy$Application;)V

    return-void
.end method

.method public b(ILo/Hy$Application;)V
    .locals 5

    const-string v0, "view"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    check-cast p2, Lo/TimeUnit;

    invoke-super {p0, p1, p2}, Lo/GR;->c(ILo/TimeUnit;)V

    const/4 p2, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    const/4 p1, 0x4

    new-array p1, p1, [Lkotlin/Pair;

    const/4 v2, 0x0

    .line 58
    iget v3, p0, Lo/Hy;->h:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "position"

    invoke-static {v4, v3}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, p1, v2

    const/4 v2, 0x1

    const-string v3, "notificationState"

    const-string v4, "unread"

    .line 59
    invoke-static {v3, v4}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, p1, v2

    .line 60
    iget-object v2, p0, Lo/Hy;->j:Lo/Pa;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lo/Pa;->messageGuid()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    const-string v3, "messageGuid"

    invoke-static {v3, v2}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, p1, v0

    .line 61
    iget-object v0, p0, Lo/Hy;->j:Lo/Pa;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/Pa;->videoId()Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string v0, "titleId"

    invoke-static {v0, v1}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, p1, p2

    .line 57
    invoke-static {p1}, Lo/akI;->c([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 56
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Ljava/util/Map;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p1

    const-string p2, "CLv2Utils.createTracking\u2026          )\n            )"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    sget-object p2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v0, Lcom/netflix/cl/model/event/session/Presentation;

    sget-object v1, Lcom/netflix/cl/model/AppView;->notificationItem:Lcom/netflix/cl/model/AppView;

    invoke-direct {v0, v1, p1}, Lcom/netflix/cl/model/event/session/Presentation;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    check-cast v0, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {p2, v0}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/Hy;->b(Ljava/lang/Long;)V

    goto :goto_1

    :cond_2
    if-ne p1, p2, :cond_3

    .line 67
    invoke-virtual {p0}, Lo/Hy;->s()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    .line 68
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 69
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {p0, v1}, Lo/Hy;->b(Ljava/lang/Long;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public b(Lo/Hy$Application;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lo/Hy;->j:Lo/Pa;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lo/Hy$Application;->a(Lo/Pa;)V

    :cond_0
    return-void
.end method

.method public final b(Lo/Pa;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lo/Hy;->j:Lo/Pa;

    return-void
.end method

.method public final c(I)V
    .locals 0

    .line 37
    iput p1, p0, Lo/Hy;->h:I

    return-void
.end method

.method public synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 34
    check-cast p2, Lo/Hy$Application;

    invoke-virtual {p0, p1, p2}, Lo/Hy;->b(ILo/Hy$Application;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lo/Hy;->i:Ljava/lang/String;

    return-void
.end method

.method public synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 34
    check-cast p1, Lo/Hy$Application;

    invoke-virtual {p0, p1}, Lo/Hy;->b(Lo/Hy$Application;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p1, Lo/Hy$Application;

    invoke-virtual {p0, p1}, Lo/Hy;->b(Lo/Hy$Application;)V

    return-void
.end method

.method public final e(Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Lo/Hy;->g:Z

    return-void
.end method

.method public synthetic n()Lo/TimeUnit;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lo/Hy;->x()Lo/Hy$Application;

    move-result-object v0

    check-cast v0, Lo/TimeUnit;

    return-object v0
.end method

.method public final p()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lo/Hy;->g:Z

    return v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lo/Hy;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final r()I
    .locals 1

    .line 37
    iget v0, p0, Lo/Hy;->h:I

    return v0
.end method

.method protected x()Lo/Hy$Application;
    .locals 2

    .line 76
    new-instance v0, Lo/Hy$Application;

    invoke-virtual {p0}, Lo/Hy;->h()Lo/UpdateEngine;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/Hy$Application;-><init>(Lo/UpdateEngine;)V

    return-object v0
.end method

.method public final y()Lo/Pa;
    .locals 1

    .line 46
    iget-object v0, p0, Lo/Hy;->j:Lo/Pa;

    return-object v0
.end method
