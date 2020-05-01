.class public final Lo/of$LoaderManager;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/of;-><init>(Landroid/content/Context;Lo/nS;Lo/Sc;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/of;


# direct methods
.method constructor <init>(Lo/of;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 293
    iput-object p1, p0, Lo/of$LoaderManager;->e:Lo/of;

    invoke-direct {p0}, Lo/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lo/Bb;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 6

    if-eqz p2, :cond_0

    .line 295
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 296
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error status for onShowDetailsFetched was "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SmartDownloadController"

    invoke-static {p2, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 301
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "SmartDownloadController onShowDetailsFetched showDetails was null"

    .line 302
    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void

    .line 305
    :cond_1
    invoke-interface {p1}, Lo/Bb;->getId()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    .line 306
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "SPY-18618 SmartDownloadController onShowDetailsFetched showDetails.id was null"

    .line 307
    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void

    .line 315
    :cond_2
    invoke-interface {p1}, Lo/Bb;->ad()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 316
    sget-object p2, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->a:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    goto :goto_0

    .line 318
    :cond_3
    sget-object p2, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    :goto_0
    move-object v5, p2

    .line 320
    iget-object p2, p0, Lo/of$LoaderManager;->e:Lo/of;

    invoke-virtual {p2}, Lo/of;->n()Lo/Sc;

    move-result-object v0

    .line 321
    invoke-interface {p1}, Lo/Bb;->getId()Ljava/lang/String;

    move-result-object v1

    const-string p2, "showDetails.id"

    invoke-static {v1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 323
    invoke-interface {p1}, Lo/Bb;->as()I

    move-result v3

    .line 324
    iget-object p1, p0, Lo/of$LoaderManager;->e:Lo/of;

    invoke-static {p1}, Lo/of;->a(Lo/of;)Lo/of$TaskDescription;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lo/Sc$StateListAnimator;

    .line 320
    invoke-virtual/range {v0 .. v5}, Lo/Sc;->c(Ljava/lang/String;IILo/Sc$StateListAnimator;Lcom/netflix/mediaclient/browse/api/task/TaskMode;)V

    return-void
.end method
