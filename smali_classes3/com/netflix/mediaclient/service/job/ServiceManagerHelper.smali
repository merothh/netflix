.class public Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$Activity;,
        Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;
    }
.end annotation


# instance fields
.field private final a:Lo/zT;

.field private final b:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$Activity;

.field private c:Lo/Am;

.field private e:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$Activity;)V
    .locals 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-object p1, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;->b:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    iput-object p1, p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->e:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    .line 29
    new-instance p1, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$4;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$4;-><init>(Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->a:Lo/zT;

    .line 103
    sget-object p1, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;->b:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    iput-object p1, p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->e:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    .line 104
    new-instance p1, Lo/Am;

    invoke-direct {p1}, Lo/Am;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->c:Lo/Am;

    .line 105
    iget-object p1, p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->c:Lo/Am;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->a:Lo/zT;

    invoke-virtual {p1, v0}, Lo/Am;->c(Lo/zT;)V

    .line 106
    iput-object p2, p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->b:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$Activity;

    return-void
.end method

.method static synthetic a(Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;)Lo/Am;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->c:Lo/Am;

    return-object p0
.end method

.method static synthetic c(Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;)Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$Activity;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->b:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$Activity;

    return-object p0
.end method

.method static synthetic c(Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;)Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->e:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    return-object p1
.end method


# virtual methods
.method public a(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->c:Lo/Am;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0, p1}, Lo/Am;->d(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->c:Lo/Am;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0, p1}, Lo/Am;->a(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->e:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    sget-object v1, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;->c:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->c:Lo/Am;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Lo/Am;->d()V

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->c:Lo/Am;

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->e:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    sget-object v1, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;->a:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
