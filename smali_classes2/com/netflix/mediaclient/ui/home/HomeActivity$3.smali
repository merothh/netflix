.class Lcom/netflix/mediaclient/ui/home/HomeActivity$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/zT;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/home/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/ui/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V
    .locals 0

    .line 697
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$3;->b:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string v0, "HomeActivity"

    const-string v1, "ServiceManager ready"

    .line 701
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$3;->b:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->m()V

    .line 705
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$3;->b:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->a(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V

    .line 707
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$3;->b:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->k()Lo/Iv;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/Iv;->onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 708
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$3;->b:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->b(Lcom/netflix/mediaclient/ui/home/HomeActivity;)Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$3;->b:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->b(Lcom/netflix/mediaclient/ui/home/HomeActivity;)Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 713
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$3;->b:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    new-instance p2, Lcom/netflix/mediaclient/ui/home/HomeActivity$3$1;

    invoke-direct {p2, p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity$3$1;-><init>(Lcom/netflix/mediaclient/ui/home/HomeActivity$3;)V

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->setLoadingStatusCallback(Lo/JsDialogHelper$Activity;)V

    return-void
.end method

.method public onManagerUnavailable(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 762
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$3;->b:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->d:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->e(Lcom/netflix/mediaclient/ui/home/HomeActivity;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    .line 763
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$3;->b:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->d:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-virtual {v0, v1, p2}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->a(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/android/app/Status;)V

    const-string v0, "HomeActivity"

    const-string v1, "ServiceManager unavailable"

    .line 765
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$3;->b:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->k()Lo/Iv;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lo/Iv;->onManagerUnavailable(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 767
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$3;->b:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->b(Lcom/netflix/mediaclient/ui/home/HomeActivity;)Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 768
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$3;->b:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->b(Lcom/netflix/mediaclient/ui/home/HomeActivity;)Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->onManagerUnavailable(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    const-string p1, "LOLOMO failed, report UI startup session ended in case this was on UI startup"

    .line 770
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
