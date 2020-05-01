.class Lo/iH$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/aeL$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/iH;->e(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic d:Lo/iH;


# direct methods
.method constructor <init>(Lo/iH;Ljava/lang/String;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lo/iH$1;->d:Lo/iH;

    iput-object p2, p0, Lo/iH$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;[BJ)V
    .locals 2

    const-string p1, "nf_log_cl"

    if-eqz p3, :cond_1

    .line 283
    array-length p4, p3

    const/4 p5, 0x1

    if-ge p4, p5, :cond_0

    goto :goto_0

    .line 288
    :cond_0
    :try_start_0
    iget-object p4, p0, Lo/iH$1;->d:Lo/iH;

    invoke-static {p4, p3}, Lo/iH;->c(Lo/iH;[B)Ljava/lang/String;

    move-result-object p3

    .line 289
    iget-object p4, p0, Lo/iH$1;->d:Lo/iH;

    iget-object p5, p0, Lo/iH$1;->a:Ljava/lang/String;

    new-instance v0, Lo/iH$Application;

    iget-object v1, p0, Lo/iH$1;->d:Lo/iH;

    invoke-direct {v0, v1, p3}, Lo/iH$Application;-><init>(Lo/iH;Ljava/lang/String;)V

    invoke-virtual {p4, p5, p2, p3, v0}, Lo/iH;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/jr;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    const-string p3, "Failed to send events. Try to delete it."

    .line 291
    invoke-static {p1, p3, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    iget-object p1, p0, Lo/iH$1;->d:Lo/iH;

    iget-object p2, p0, Lo/iH$1;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lo/iH;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p2, "We failed to retrieve payload. Trying to delete it"

    .line 284
    invoke-static {p1, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object p1, p0, Lo/iH$1;->d:Lo/iH;

    iget-object p2, p0, Lo/iH$1;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lo/iH;->b(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
