.class public Lo/yk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/iB;


# instance fields
.field private b:Lo/iy;

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/iy;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lo/yk;->e:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lo/yk;->b:Lo/iy;

    .line 23
    invoke-static {}, Lcom/netflix/mediaclient/service/job/NetflixJob;->i()Lcom/netflix/mediaclient/service/job/NetflixJob;

    move-result-object p1

    .line 24
    iget-object p2, p0, Lo/yk;->b:Lo/iy;

    sget-object v0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->e:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    invoke-interface {p2, v0}, Lo/iy;->c(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 25
    iget-object p2, p0, Lo/yk;->b:Lo/iy;

    invoke-interface {p2, p1}, Lo/iy;->b(Lcom/netflix/mediaclient/service/job/NetflixJob;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onNetflixStartJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 1

    const-string p1, "partnerInstallJob"

    const-string v0, "install token job started"

    .line 31
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNetflixStopJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 1

    const-string p1, "partnerInstallJob"

    const-string v0, "install token job stopped"

    .line 37
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
