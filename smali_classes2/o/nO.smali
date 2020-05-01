.class Lo/nO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ov$Application;
.implements Lo/ov$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/nO$StateListAnimator;
    }
.end annotation


# instance fields
.field private final a:Lo/nO$StateListAnimator;

.field private final b:Lo/oL;

.field private final c:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

.field private d:I

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/ov;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private h:I


# direct methods
.method constructor <init>(Lo/nO$StateListAnimator;Lo/oL;Ljava/util/List;Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/nO$StateListAnimator;",
            "Lo/oL;",
            "Ljava/util/List<",
            "Lo/ov;",
            ">;",
            "Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lo/nO;->d:I

    .line 34
    iput v0, p0, Lo/nO;->h:I

    .line 35
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lo/nO;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    iput-object p4, p0, Lo/nO;->c:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    .line 42
    iput-object p2, p0, Lo/nO;->b:Lo/oL;

    .line 43
    iput-object p1, p0, Lo/nO;->a:Lo/nO$StateListAnimator;

    .line 44
    iput-object p3, p0, Lo/nO;->e:Ljava/util/List;

    return-void
.end method

.method private a()V
    .locals 4

    const-string v0, "nf_MaintenanceJob"

    const-string v1, "processPendingDelete"

    .line 87
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v1, p0, Lo/nO;->c:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;->n()Ljava/util/List;

    move-result-object v1

    .line 89
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "processPendingDelete not calling onAllMaintenanceJobDone"

    .line 90
    invoke-static {v0, v2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lo/nO;->h:I

    .line 92
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/oC;

    .line 93
    iget-object v2, p0, Lo/nO;->b:Lo/oL;

    const/4 v3, 0x0

    invoke-static {v2, v1, p0, v3}, Lo/ot;->b(Lo/oL;Lo/oC;Lo/ov$Application;Lo/oz;)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lo/nO;->a:Lo/nO$StateListAnimator;

    invoke-interface {v0}, Lo/nO$StateListAnimator;->g()V

    :cond_1
    return-void
.end method


# virtual methods
.method public b(Lo/oC;)V
    .locals 2

    const-string v0, "nf_MaintenanceJob"

    const-string v1, "onDeleteCompleted"

    .line 66
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lo/nO;->c:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;->b(Lo/oC;)V

    .line 68
    iget p1, p0, Lo/nO;->h:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lo/nO;->h:I

    .line 69
    iget p1, p0, Lo/nO;->h:I

    if-nez p1, :cond_0

    iget-object p1, p0, Lo/nO;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    .line 70
    iget-object p1, p0, Lo/nO;->a:Lo/nO$StateListAnimator;

    invoke-interface {p1}, Lo/nO$StateListAnimator;->g()V

    :cond_0
    return-void
.end method

.method public b(Lo/ov;)V
    .locals 0

    .line 80
    iget p1, p0, Lo/nO;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lo/nO;->d:I

    .line 81
    iget p1, p0, Lo/nO;->d:I

    if-nez p1, :cond_0

    iget-object p1, p0, Lo/nO;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    .line 82
    invoke-direct {p0}, Lo/nO;->a()V

    :cond_0
    return-void
.end method

.method c()V
    .locals 2

    .line 62
    iget-object v0, p0, Lo/nO;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method c(Lo/Ck;)V
    .locals 2

    const-string v0, "nf_MaintenanceJob"

    const-string v1, "startMaintenanceJob"

    .line 48
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    .line 51
    invoke-interface {p1, v0}, Lo/Ck;->e(I)V

    .line 52
    iget-object p1, p0, Lo/nO;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 53
    iget-object p1, p0, Lo/nO;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lo/nO;->d:I

    .line 54
    iget-object p1, p0, Lo/nO;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ov;

    .line 55
    invoke-interface {v0, p0}, Lo/ov;->c(Lo/ov$TaskDescription;)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-direct {p0}, Lo/nO;->a()V

    :cond_1
    return-void
.end method
