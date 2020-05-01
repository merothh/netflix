.class final Lo/DR$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DR;->e()Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Application;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/DR;


# direct methods
.method constructor <init>(Lo/DR;)V
    .locals 0

    iput-object p1, p0, Lo/DR$Application;->c:Lo/DR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;",
            "Ljava/util/Collection<",
            "Lo/Ap;",
            ">;)V"
        }
    .end annotation

    const-string v0, "reason"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ttrImageDataList"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iget-object p2, p0, Lo/DR$Application;->c:Lo/DR;

    invoke-static {p2}, Lo/DR;->d(Lo/DR;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 101
    iget-object p2, p0, Lo/DR$Application;->c:Lo/DR;

    .line 102
    invoke-static {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->c(Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object p1

    const-string v0, "IClientLogging.Completio\u2026ImageLoaderReason(reason)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 101
    invoke-static {p2, p1, v0}, Lo/DR;->a(Lo/DR;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method
