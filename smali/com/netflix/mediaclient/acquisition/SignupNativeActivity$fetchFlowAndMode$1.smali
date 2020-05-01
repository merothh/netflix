.class final Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$fetchFlowAndMode$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/cb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->fetchFlowAndMode(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$fetchFlowAndMode$1;->this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;Lcom/netflix/mediaclient/android/app/Status;I)V
    .locals 0

    const-string p3, "status"

    invoke-static {p2, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 475
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;->getFlowMode()Lcom/netflix/android/moneyball/FlowMode;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 476
    iget-object p2, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$fetchFlowAndMode$1;->this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->getViewModel()Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;->getCurrentMoneyballData()Lo/Cloneable;

    move-result-object p2

    invoke-virtual {p2, p1}, Lo/Cloneable;->e(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
