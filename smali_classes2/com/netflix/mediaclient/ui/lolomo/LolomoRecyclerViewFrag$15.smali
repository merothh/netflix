.class Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$15;
.super Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

.field final synthetic e:Lcom/netflix/mediaclient/android/widget/NetflixActionBar;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;Lcom/netflix/mediaclient/android/widget/NetflixActionBar;)V
    .locals 0

    .line 507
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$15;->a:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$15;->e:Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2

    .line 510
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$15;->a:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->A()I

    move-result v0

    iput v0, p1, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->q:I

    .line 511
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$15;->a:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$15;->e:Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    iget v1, p1, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->q:I

    invoke-virtual {p1, v0, v1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->e(Lcom/netflix/mediaclient/android/widget/NetflixActionBar;I)V

    .line 512
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$15;->a:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->d(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;)Lo/Ki;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 513
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$15;->a:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->d(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;)Lo/Ki;

    move-result-object p1

    invoke-virtual {p1}, Lo/Ki;->d()V

    :cond_0
    if-nez p2, :cond_1

    if-eqz p3, :cond_2

    .line 517
    :cond_1
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$15;->a:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    sget-object p2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->b:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->c(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 518
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object p1

    const-string p2, "onScrolled"

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/NetflixApplication;->b(Ljava/lang/String;)V

    .line 520
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$15;->a:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->uiLatencyTrackerFluent:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/ViewSwitcher;

    invoke-interface {p1}, Lo/ViewSwitcher;->a()V

    :cond_2
    return-void
.end method
