.class Lcom/netflix/mediaclient/ui/home/HomeActivity$3$1$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/home/HomeActivity$3$1;->a(Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/ui/home/HomeActivity$3$1;

.field final synthetic e:Lcom/netflix/mediaclient/android/app/Status;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/home/HomeActivity$3$1;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 723
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$3$1$2;->d:Lcom/netflix/mediaclient/ui/home/HomeActivity$3$1;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$3$1$2;->e:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;Ljava/util/Collection;)V
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

    .line 729
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$3$1$2;->d:Lcom/netflix/mediaclient/ui/home/HomeActivity$3$1;

    iget-object p2, p2, Lcom/netflix/mediaclient/ui/home/HomeActivity$3$1;->b:Lcom/netflix/mediaclient/ui/home/HomeActivity$3;

    iget-object p2, p2, Lcom/netflix/mediaclient/ui/home/HomeActivity$3;->b:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->c(Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$3$1$2;->e:Lcom/netflix/mediaclient/android/app/Status;

    invoke-virtual {p2, p1, v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->a(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
