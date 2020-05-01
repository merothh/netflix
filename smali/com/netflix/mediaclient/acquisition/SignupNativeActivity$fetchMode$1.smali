.class public final Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$fetchMode$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/TextClassificationSessionFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->fetchMode(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $mode:Ljava/lang/String;

.field final synthetic this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 456
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$fetchMode$1;->this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$fetchMode$1;->$mode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAfterNetworkAction(Lo/TextClassifierImpl$Application;)V
    .locals 2

    const-string v0, "response"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 460
    invoke-virtual {p1}, Lo/TextClassifierImpl$Application;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$fetchMode$1;->$mode:Ljava/lang/String;

    const-string v1, "welcome"

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 463
    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$fetchMode$1;->this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;

    invoke-virtual {p1}, Lo/TextClassifierImpl$Application;->c()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->showErrorDialogForStatus(Lcom/netflix/mediaclient/android/app/Status;Z)V

    if-eqz v0, :cond_1

    .line 466
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$fetchMode$1;->this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->d:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->access$closeClInteractSessions(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    .line 467
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$fetchMode$1;->this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->d:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->access$closeClRenderSessions(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    :cond_1
    return-void
.end method

.method public onBeforeNetworkAction(Lo/TextClassifierImpl$ActionBar;)V
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
