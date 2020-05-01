.class final Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$launchProfilesGate$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$launchProfilesGate$1;->invoke(Lcom/netflix/mediaclient/service/user/UserAgent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lcom/netflix/mediaclient/android/app/Status;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$launchProfilesGate$1;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$launchProfilesGate$1;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$launchProfilesGate$1$1;->this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$launchProfilesGate$1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 109
    check-cast p1, Lcom/netflix/mediaclient/android/app/Status;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$launchProfilesGate$1$1;->invoke(Lcom/netflix/mediaclient/android/app/Status;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method

.method public final invoke(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .line 870
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$launchProfilesGate$1$1;->this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$launchProfilesGate$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$launchProfilesGate$1;->this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->setLoggingIn(Z)V

    if-eqz p1, :cond_0

    .line 871
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 872
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$launchProfilesGate$1$1;->this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$launchProfilesGate$1;

    iget-object p1, p1, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$launchProfilesGate$1;->this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;

    .line 873
    sget-object v0, Lo/Zg;->c:Lo/Zg;

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$launchProfilesGate$1$1;->this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$launchProfilesGate$1;

    iget-object v1, v1, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$launchProfilesGate$1;->this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$launchProfilesGate$1$1;->this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$launchProfilesGate$1;

    iget-object v2, v2, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$launchProfilesGate$1;->this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->getUiScreen()Lcom/netflix/cl/model/AppView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/Zg;->c(Landroid/content/Context;Lcom/netflix/cl/model/AppView;)Landroid/content/Intent;

    move-result-object v0

    .line 872
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->startActivity(Landroid/content/Intent;)V

    .line 875
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$launchProfilesGate$1$1;->this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$launchProfilesGate$1;

    iget-object p1, p1, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$launchProfilesGate$1;->this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->finish()V

    return-void
.end method
