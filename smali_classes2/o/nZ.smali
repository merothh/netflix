.class public Lo/nZ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/nZ$TaskDescription;
    }
.end annotation


# instance fields
.field private final a:Lo/oQ;

.field private final b:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/ov;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lo/oL;

.field private final e:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;Ljava/util/List;Ljava/lang/String;Lo/oQ;Lo/oL;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;",
            "Ljava/util/List<",
            "Lo/ov;",
            ">;",
            "Ljava/lang/String;",
            "Lo/oQ;",
            "Lo/oL;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lo/nZ;->e:Ljava/util/Queue;

    .line 42
    iput-object p1, p0, Lo/nZ;->b:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    .line 43
    iput-object p2, p0, Lo/nZ;->c:Ljava/util/List;

    if-nez p3, :cond_0

    .line 46
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/ov;

    .line 47
    iget-object p3, p0, Lo/nZ;->e:Ljava/util/Queue;

    invoke-interface {p2}, Lo/ov;->a()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    :cond_0
    iget-object p1, p0, Lo/nZ;->e:Ljava/util/Queue;

    invoke-interface {p1, p3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_1
    iput-object p4, p0, Lo/nZ;->a:Lo/oQ;

    .line 53
    iput-object p5, p0, Lo/nZ;->d:Lo/oL;

    return-void
.end method

.method private synthetic a(Ljava/lang/String;Lo/ov;Lo/nZ$TaskDescription;Lo/oC;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p4, v0

    const/4 p1, 0x1

    aput-object p5, p4, p1

    const-string p1, "nfLicenseReplacer"

    const-string v0, "replaceTillListEmpty %s %s"

    .line 76
    invoke-static {p1, v0, p4}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 77
    invoke-direct {p0, p2, p5}, Lo/nZ;->c(Lo/ov;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 78
    invoke-direct {p0, p5}, Lo/nZ;->c(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 79
    invoke-direct {p0, p3}, Lo/nZ;->d(Lo/nZ$TaskDescription;)V

    return-void
.end method

.method private c(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 95
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 97
    :try_start_0
    iget-object p1, p0, Lo/nZ;->b:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;->b()V
    :try_end_0
    .catch Lcom/netflix/mediaclient/service/offline/registry/PersistRegistryException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private c(Lo/ov;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 88
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lo/CarrierIdentifier;->n()Lo/CameraPrewarmService;

    move-result-object v0

    invoke-virtual {v0}, Lo/CameraPrewarmService;->j()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->l()Lo/zS;

    move-result-object v0

    invoke-interface {p1}, Lo/ov;->f()Lo/oC;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lo/oS;->c(Lo/zS;Lo/or;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method private d(Lo/nZ$TaskDescription;)V
    .locals 5

    .line 65
    iget-object v0, p0, Lo/nZ;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    iget-object v0, p0, Lo/nZ;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 67
    iget-object v1, p0, Lo/nZ;->c:Ljava/util/List;

    invoke-static {v0, v1}, Lo/nT;->a(Ljava/lang/String;Ljava/util/List;)Lo/ov;

    move-result-object v1

    if-nez v1, :cond_0

    .line 69
    invoke-direct {p0, p1}, Lo/nZ;->d(Lo/nZ$TaskDescription;)V

    return-void

    .line 72
    :cond_0
    new-instance v2, Lo/ox;

    iget-object v3, p0, Lo/nZ;->a:Lo/oQ;

    iget-object v4, p0, Lo/nZ;->d:Lo/oL;

    invoke-direct {v2, v1, v3, v4}, Lo/ox;-><init>(Lo/ov;Lo/oQ;Lo/oL;)V

    .line 75
    new-instance v3, Lo/nX;

    invoke-direct {v3, p0, v0, v1, p1}, Lo/nX;-><init>(Lo/nZ;Ljava/lang/String;Lo/ov;Lo/nZ$TaskDescription;)V

    invoke-virtual {v2, v3}, Lo/ox;->e(Lo/ox$TaskDescription;)V

    goto :goto_0

    :cond_1
    const-string v0, "nfLicenseReplacer"

    const-string v1, "replaceTillListEmpty all replaced"

    .line 82
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-interface {p1}, Lo/nZ$TaskDescription;->d()V

    :goto_0
    return-void
.end method

.method static synthetic e(Lo/nZ;Ljava/lang/String;Lo/ov;Lo/nZ$TaskDescription;Lo/oC;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lo/nZ;->a(Ljava/lang/String;Lo/ov;Lo/nZ$TaskDescription;Lo/oC;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method


# virtual methods
.method public b(Lo/nZ$TaskDescription;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lo/nZ;->d(Lo/nZ$TaskDescription;)V

    return-void
.end method
