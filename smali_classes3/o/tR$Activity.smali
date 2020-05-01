.class Lo/tR$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/PrepareManager$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/tR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Activity"
.end annotation


# instance fields
.field private final a:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

.field private final b:Ljava/lang/String;

.field final synthetic c:Lo/tR;

.field private d:I

.field private e:I

.field private j:I


# direct methods
.method public constructor <init>(Lo/tR;Ljava/lang/String;Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;I)V
    .locals 0

    .line 319
    iput-object p1, p0, Lo/tR$Activity;->c:Lo/tR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    iput-object p2, p0, Lo/tR$Activity;->b:Ljava/lang/String;

    .line 321
    iput-object p3, p0, Lo/tR$Activity;->a:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    .line 322
    iput p4, p0, Lo/tR$Activity;->d:I

    return-void
.end method


# virtual methods
.method public d(Lo/Ae;Lcom/netflix/mediaclient/servicemgr/PrepareManager$PrepareResult;)V
    .locals 5

    .line 327
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/PrepareManager$PrepareResult;->a:Lcom/netflix/mediaclient/servicemgr/PrepareManager$PrepareResult;

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    .line 328
    iget p2, p0, Lo/tR$Activity;->e:I

    add-int/2addr p2, v1

    iput p2, p0, Lo/tR$Activity;->e:I

    goto :goto_0

    .line 330
    :cond_0
    iget p2, p0, Lo/tR$Activity;->j:I

    add-int/2addr p2, v1

    iput p2, p0, Lo/tR$Activity;->j:I

    .line 332
    :goto_0
    iget p2, p0, Lo/tR$Activity;->d:I

    sub-int/2addr p2, v1

    iput p2, p0, Lo/tR$Activity;->d:I

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    .line 333
    iget-wide v2, p1, Lo/Ae;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p2, v0

    iget p1, p0, Lo/tR$Activity;->d:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "nf_cache"

    const-string v2, "background content prefetching for %s complete. remaining=%s"

    invoke-static {p1, v2, p2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 334
    iget p1, p0, Lo/tR$Activity;->d:I

    if-nez p1, :cond_3

    .line 335
    iget-object p1, p0, Lo/tR$Activity;->c:Lo/tR;

    invoke-static {p1}, Lo/tR;->c(Lo/tR;)Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo/tR$Activity;->c:Lo/tR;

    invoke-static {p1}, Lo/tR;->c(Lo/tR;)Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object p1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->l()Lo/zS;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 336
    iget-object p1, p0, Lo/tR$Activity;->c:Lo/tR;

    invoke-static {p1}, Lo/tR;->c(Lo/tR;)Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object p1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->l()Lo/zS;

    move-result-object p1

    new-instance p2, Lo/tR$StateListAnimator;

    iget-object v2, p0, Lo/tR$Activity;->b:Ljava/lang/String;

    iget v3, p0, Lo/tR$Activity;->e:I

    iget v4, p0, Lo/tR$Activity;->j:I

    invoke-direct {p2, v2, v3, v4}, Lo/tR$StateListAnimator;-><init>(Ljava/lang/String;II)V

    invoke-interface {p1, p2}, Lo/zS;->e(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    .line 338
    :cond_1
    iget-object p1, p0, Lo/tR$Activity;->c:Lo/tR;

    iget-object p2, p0, Lo/tR$Activity;->a:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    iget v2, p0, Lo/tR$Activity;->j:I

    if-lez v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-static {p1, p2, v0}, Lo/tR;->d(Lo/tR;Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Z)V

    :cond_3
    return-void
.end method
