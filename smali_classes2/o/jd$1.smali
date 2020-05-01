.class Lo/jd$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/aeL$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/jd;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic d:Lo/jd;


# direct methods
.method constructor <init>(Lo/jd;Ljava/lang/String;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lo/jd$1;->d:Lo/jd;

    iput-object p2, p0, Lo/jd$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;[BJ)V
    .locals 2

    const-string p1, "nf_pds_logs"

    if-eqz p3, :cond_1

    .line 283
    array-length p4, p3

    const/4 p5, 0x1

    if-ge p4, p5, :cond_0

    goto :goto_0

    .line 288
    :cond_0
    :try_start_0
    new-instance p4, Ljava/lang/String;

    const-string p5, "utf-8"

    invoke-direct {p4, p3, p5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 290
    iget-object p3, p0, Lo/jd$1;->d:Lo/jd;

    new-instance p5, Lo/jd$Activity;

    iget-object v0, p0, Lo/jd$1;->d:Lo/jd;

    iget-object v1, p0, Lo/jd$1;->b:Ljava/lang/String;

    invoke-direct {p5, v0, v1}, Lo/jd$Activity;-><init>(Lo/jd;Ljava/lang/String;)V

    invoke-static {p3, p2, p4, p5}, Lo/jd;->e(Lo/jd;Ljava/lang/String;Ljava/lang/String;Lo/jd$StateListAnimator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    const-string p3, "Failed to send pdsEvent."

    .line 292
    invoke-static {p1, p3, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    :goto_0
    const-string p2, "We failed to retrieve payload. Trying to delete it"

    .line 284
    invoke-static {p1, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object p1, p0, Lo/jd$1;->d:Lo/jd;

    iget-object p2, p0, Lo/jd$1;->b:Ljava/lang/String;

    invoke-static {p1, p2}, Lo/jd;->e(Lo/jd;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
