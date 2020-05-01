.class public final Lo/ZL$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/KN;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ZL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TaskDescription"
.end annotation


# instance fields
.field final synthetic b:Lo/ZL;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/ZL;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "query"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    iput-object p1, p0, Lo/ZL$TaskDescription;->b:Lo/ZL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lo/ZL$TaskDescription;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    iput-object p1, p0, Lo/ZL$TaskDescription;->c:Ljava/lang/String;

    return-void
.end method

.method public a(Lo/zG;Ljava/lang/String;IILo/zU;)Z
    .locals 1

    const-string v0, "browseManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cb"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 184
    invoke-static {}, Lo/amh;->c()V

    :cond_0
    invoke-interface {p1, p2, p3, p4, p5}, Lo/zG;->b(Ljava/lang/String;IILo/zU;)Z

    move-result p1

    return p1
.end method

.method public b(Lo/zG;Landroid/content/Context;IILjava/lang/String;Lo/zU;)V
    .locals 6

    const-string p3, "browseManager"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "context"

    invoke-static {p2, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "callback"

    invoke-static {p6, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    iget-object p3, p0, Lo/ZL$TaskDescription;->c:Ljava/lang/String;

    check-cast p3, Ljava/lang/CharSequence;

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-nez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_1

    .line 169
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "prefetchLolomo with empty query"

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 171
    :cond_1
    iget-object p3, p0, Lo/ZL$TaskDescription;->b:Lo/ZL;

    invoke-static {p3}, Lo/ZL;->a(Lo/ZL;)J

    move-result-wide p4

    const-wide/16 v0, 0x1

    add-long/2addr p4, v0

    invoke-static {p3, p4, p5}, Lo/ZL;->b(Lo/ZL;J)V

    .line 174
    iget-object v1, p0, Lo/ZL$TaskDescription;->c:Ljava/lang/String;

    .line 175
    sget-object v2, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    const/4 v3, 0x6

    .line 177
    sget-object p3, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->m:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-static {p2, p3}, Lo/Lq;->b(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)I

    move-result v4

    .line 178
    new-instance p2, Lo/ZL$StateListAnimator;

    iget-object p3, p0, Lo/ZL$TaskDescription;->b:Lo/ZL;

    invoke-static {p3}, Lo/ZL;->a(Lo/ZL;)J

    move-result-wide p4

    invoke-direct {p2, p3, p6, p4, p5}, Lo/ZL$StateListAnimator;-><init>(Lo/ZL;Lo/zU;J)V

    move-object v5, p2

    check-cast v5, Lo/zU;

    move-object v0, p1

    .line 173
    invoke-interface/range {v0 .. v5}, Lo/zG;->e(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;IILo/zU;)Z

    :goto_1
    return-void
.end method

.method public c(Z)I
    .locals 0

    const/4 p1, 0x6

    return p1
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lo/ZL$TaskDescription;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d(Lo/zG;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p2, "browseManager"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "listContext"

    invoke-static {p3, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public d(Lo/zG;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZLo/zU;)Z
    .locals 0

    const-string p5, "browseManager"

    invoke-static {p1, p5}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "lomo"

    invoke-static {p2, p5}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "cb"

    invoke-static {p7, p5}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    invoke-interface {p1, p2, p3, p4, p7}, Lo/zG;->a(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IILo/zU;)Z

    move-result p1

    return p1
.end method
