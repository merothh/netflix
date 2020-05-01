.class Lcom/netflix/mediaclient/ui/home/HomeActivity$3$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/JsDialogHelper$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/home/HomeActivity$3;->onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/ui/home/HomeActivity$3;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/home/HomeActivity$3;)V
    .locals 0

    .line 713
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$3$1;->b:Lcom/netflix/mediaclient/ui/home/HomeActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5

    .line 717
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->a:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->d:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    .line 719
    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$3$1;->b:Lcom/netflix/mediaclient/ui/home/HomeActivity$3;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/home/HomeActivity$3;->b:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->e(Lcom/netflix/mediaclient/ui/home/HomeActivity;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    .line 721
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 722
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$3$1;->b:Lcom/netflix/mediaclient/ui/home/HomeActivity$3;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/home/HomeActivity$3;->b:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    new-instance v1, Lo/CO$Activity;

    invoke-direct {v1}, Lo/CO$Activity;-><init>()V

    new-instance v2, Lcom/netflix/mediaclient/ui/home/HomeActivity$3$1$2;

    invoke-direct {v2, p0, p1}, Lcom/netflix/mediaclient/ui/home/HomeActivity$3$1$2;-><init>(Lcom/netflix/mediaclient/ui/home/HomeActivity$3$1;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->setupInteractiveTracking(Lo/CO;Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Application;)Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;

    goto :goto_1

    .line 733
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$3$1;->b:Lcom/netflix/mediaclient/ui/home/HomeActivity$3;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/home/HomeActivity$3;->b:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-virtual {v1, v0, p1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->a(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 737
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$3$1;->b:Lcom/netflix/mediaclient/ui/home/HomeActivity$3;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/home/HomeActivity$3;->b:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->k()Lo/Iv;

    move-result-object v0

    invoke-virtual {v0}, Lo/Iv;->c()Lo/AH;

    move-result-object v0

    const-string v1, "HomeActivity"

    if-eqz v0, :cond_2

    .line 739
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$3$1;->b:Lcom/netflix/mediaclient/ui/home/HomeActivity$3;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/home/HomeActivity$3;->b:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-interface {v0}, Lo/AH;->getExpiryTimeStamp()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->a(Lcom/netflix/mediaclient/ui/home/HomeActivity;J)J

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 740
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$3$1;->b:Lcom/netflix/mediaclient/ui/home/HomeActivity$3;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/home/HomeActivity$3;->b:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->d(Lcom/netflix/mediaclient/ui/home/HomeActivity;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "Setting the mCurrExpiryTimeStamp = %s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    :cond_2
    const-string v0, "The lolomosummary object is null, so reset the mCurrExpiryTimeStamp in HomeActivity"

    .line 742
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$3$1;->b:Lcom/netflix/mediaclient/ui/home/HomeActivity$3;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/home/HomeActivity$3;->b:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->a(Lcom/netflix/mediaclient/ui/home/HomeActivity;J)J

    .line 745
    :goto_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$3$1;->b:Lcom/netflix/mediaclient/ui/home/HomeActivity$3;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/home/HomeActivity$3;->b:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->setLoadingStatusCallback(Lo/JsDialogHelper$Activity;)V

    const-string v0, "LOLOMO is loaded, report UI browse startup session ended in case this was on UI startup"

    .line 747
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 752
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$3$1;->b:Lcom/netflix/mediaclient/ui/home/HomeActivity$3;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/home/HomeActivity$3;->b:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->handleFalkorAgentErrors(Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_3
    return-void
.end method
