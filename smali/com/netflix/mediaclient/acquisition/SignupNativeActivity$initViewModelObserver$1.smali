.class final Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$initViewModelObserver$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ClassFormatError;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->initViewModelObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/ClassFormatError<",
        "Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$initViewModelObserver$1;->this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;)V
    .locals 3

    .line 502
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$initViewModelObserver$1;->this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->access$getSuppressNavigateToFlowMode$p(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$initViewModelObserver$1;->this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->access$getCurrentFragment$p(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;)Lo/Fade;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 503
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$initViewModelObserver$1;->this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->access$setSuppressNavigateToFlowMode$p(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;Ljava/lang/Boolean;)V

    if-eqz p1, :cond_0

    .line 504
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;->getFlowMode()Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_3

    .line 505
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$initViewModelObserver$1;->this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->access$hideProgressSpinner(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;)V

    goto :goto_0

    .line 508
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$initViewModelObserver$1;->this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->access$setSuppressNavigateToFlowMode$p(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;Ljava/lang/Boolean;)V

    .line 509
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$initViewModelObserver$1;->this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;->getFlowMode()Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v1

    :cond_2
    invoke-static {v0, v1}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->access$navigateToFlowMode(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;Lcom/netflix/android/moneyball/FlowMode;)V

    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    .line 513
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;->getMode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 514
    sget-object v1, Lcom/netflix/mediaclient/acquisition/SignupMode;->INSTANCE:Lcom/netflix/mediaclient/acquisition/SignupMode;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/acquisition/SignupMode;->isWelcomeMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 515
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$initViewModelObserver$1;->this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->getViewModel()Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;

    move-result-object v0

    new-instance v1, Lo/InputMethodManagerInternal;

    invoke-direct {v1}, Lo/InputMethodManagerInternal;-><init>()V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;->setFormCache(Lo/InputMethodManagerInternal;)V

    :cond_4
    if-eqz p1, :cond_5

    .line 520
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;->getFlowMode()Lcom/netflix/android/moneyball/FlowMode;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$initViewModelObserver$1;->this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->access$persistAbAllocations(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;Lcom/netflix/android/moneyball/FlowMode;)V

    .line 522
    :cond_5
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$initViewModelObserver$1;->this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;

    invoke-static {p1}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->access$initThreatMetrixIfApplicable(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 109
    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$initViewModelObserver$1;->onChanged(Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;)V

    return-void
.end method
