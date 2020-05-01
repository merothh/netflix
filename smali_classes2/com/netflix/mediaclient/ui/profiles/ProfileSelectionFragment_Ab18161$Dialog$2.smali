.class final Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Dialog$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Dialog;->run(Lo/Am;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Dialog;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Dialog$2;->e:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Dialog;

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

    const-string v0, "<anonymous parameter 1>"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 748
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Dialog$2;->e:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Dialog;

    iget-object p2, p2, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Dialog;->d:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;

    invoke-static {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->c(Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object p1

    const-string v0, "IClientLogging.Completio\u2026ImageLoaderReason(reason)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->d(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    return-void
.end method
