.class Lo/tR$5$5$5;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/tR$5$5;->e(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/tR$5$5;


# direct methods
.method constructor <init>(Lo/tR$5$5;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lo/tR$5$5$5;->b:Lo/tR$5$5;

    invoke-direct {p0}, Lo/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lo/agg;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .line 231
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 232
    iget-object p2, p0, Lo/tR$5$5$5;->b:Lo/tR$5$5;

    invoke-static {p2, p1}, Lo/tR$5$5;->b(Lo/tR$5$5;Lo/AK;)V

    .line 234
    :cond_0
    iget-object p1, p0, Lo/tR$5$5$5;->b:Lo/tR$5$5;

    iget-object p1, p1, Lo/tR$5$5;->c:Lo/tR$5;

    iget-object p1, p1, Lo/tR$5;->j:Lo/tR;

    iget-object p2, p0, Lo/tR$5$5$5;->b:Lo/tR$5$5;

    iget-object p2, p2, Lo/tR$5$5;->c:Lo/tR$5;

    iget-object p2, p2, Lo/tR$5;->e:Ljava/lang/String;

    iget-object v0, p0, Lo/tR$5$5$5;->b:Lo/tR$5$5;

    iget-object v0, v0, Lo/tR$5$5;->c:Lo/tR$5;

    iget-object v0, v0, Lo/tR$5;->c:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    iget-object v1, p0, Lo/tR$5$5$5;->b:Lo/tR$5$5;

    iget-object v1, v1, Lo/tR$5$5;->c:Lo/tR$5;

    iget-object v1, v1, Lo/tR$5;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lo/tR$5$5$5;->b:Lo/tR$5$5;

    iget-object v2, v2, Lo/tR$5$5;->c:Lo/tR$5;

    iget-object v2, v2, Lo/tR$5;->b:Ljava/util/List;

    invoke-static {p1, p2, v0, v1, v2}, Lo/tR;->e(Lo/tR;Ljava/lang/String;Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/List;)V

    return-void
.end method
