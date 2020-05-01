.class Lo/nQ$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/nQ;->d(JLo/pq$ActionBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lo/pq$ActionBar;

.field final synthetic c:Lo/nQ;


# direct methods
.method constructor <init>(Lo/nQ;JLo/pq$ActionBar;)V
    .locals 0

    .line 1792
    iput-object p1, p0, Lo/nQ$8;->c:Lo/nQ;

    iput-wide p2, p0, Lo/nQ$8;->a:J

    iput-object p4, p0, Lo/nQ$8;->b:Lo/pq$ActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1795
    iget-object v0, p0, Lo/nQ$8;->c:Lo/nQ;

    invoke-static {v0}, Lo/nQ;->u(Lo/nQ;)Ljava/util/Map;

    move-result-object v0

    iget-wide v1, p0, Lo/nQ$8;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lo/nQ$8;->b:Lo/pq$ActionBar;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lo/nQ$8;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/nQ$8;->c:Lo/nQ;

    invoke-static {v1}, Lo/nQ;->f(Lo/nQ;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lo/nT;->a(Ljava/lang/String;Ljava/util/List;)Lo/ov;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1798
    new-instance v1, Lo/nQ$8$4;

    invoke-direct {v1, p0}, Lo/nQ$8$4;-><init>(Lo/nQ$8;)V

    invoke-interface {v0, v1}, Lo/ov;->a(Lo/ov$Activity;)V

    goto :goto_0

    .line 1816
    :cond_0
    iget-object v2, p0, Lo/nQ$8;->c:Lo/nQ;

    const/4 v3, 0x0

    iget-object v4, p0, Lo/nQ$8;->b:Lo/pq$ActionBar;

    iget-wide v5, p0, Lo/nQ$8;->a:J

    new-instance v8, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->bd:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v8, v0}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    const-string v7, "-1"

    invoke-static/range {v2 .. v8}, Lo/nQ;->b(Lo/nQ;Lo/pq$Application;Lo/pq$ActionBar;JLjava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method
