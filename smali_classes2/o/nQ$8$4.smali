.class Lo/nQ$8$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ov$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/nQ$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/nQ$8;


# direct methods
.method constructor <init>(Lo/nQ$8;)V
    .locals 0

    .line 1798
    iput-object p1, p0, Lo/nQ$8$4;->b:Lo/nQ$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lo/pq$Application;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 9

    const-string v0, "nf_offlineAgent"

    const-string v1, "onPlayableManifestReady"

    .line 1801
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    iget-object v1, p0, Lo/nQ$8$4;->b:Lo/nQ$8;

    iget-object v1, v1, Lo/nQ$8;->c:Lo/nQ;

    invoke-static {v1}, Lo/nQ;->u(Lo/nQ;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lo/nQ$8$4;->b:Lo/nQ$8;

    iget-wide v2, v2, Lo/nQ$8;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lo/pq$ActionBar;

    if-eqz v4, :cond_1

    .line 1804
    iget-object v0, p0, Lo/nQ$8$4;->b:Lo/nQ$8;

    iget-object v2, v0, Lo/nQ$8;->c:Lo/nQ;

    iget-object v0, p0, Lo/nQ$8$4;->b:Lo/nQ$8;

    iget-wide v5, v0, Lo/nQ$8;->a:J

    move-object v3, p1

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v2 .. v8}, Lo/nQ;->b(Lo/nQ;Lo/pq$Application;Lo/pq$ActionBar;JLjava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1805
    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result p1

    sget-object p2, Lcom/netflix/mediaclient/StatusCode;->bb:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 1806
    iget-object p1, p0, Lo/nQ$8$4;->b:Lo/nQ$8;

    iget-object p1, p1, Lo/nQ$8;->c:Lo/nQ;

    invoke-static {p1}, Lo/nQ;->d(Lo/nQ;)V

    goto :goto_0

    .line 1807
    :cond_0
    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result p1

    sget-object p2, Lcom/netflix/mediaclient/StatusCode;->aW:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result p2

    if-ne p1, p2, :cond_2

    .line 1808
    iget-object p1, p0, Lo/nQ$8$4;->b:Lo/nQ$8;

    iget-object p1, p1, Lo/nQ$8;->c:Lo/nQ;

    invoke-static {p1}, Lo/nQ;->h(Lo/nQ;)Lo/pa$Activity;

    move-result-object p1

    invoke-interface {p1}, Lo/pa$Activity;->e()V

    goto :goto_0

    :cond_1
    const-string p1, "onPlayableManifestReady originalCallback not found"

    .line 1811
    invoke-static {v0, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method
