.class Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$3;
.super Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;
.source "ProfileDetailsActivity.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$3;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onProfileListUpdateStatus(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 209
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    const-string/jumbo v0, "ProfileDetailsActivity"

    const-string/jumbo v1, "Operation successful!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$3;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->access$900(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$3;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->profilesGate:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-static {v0, v1, v2, v4}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportDeleteProfileActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 234
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$3;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->access$300(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$3;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->profilesGate:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$3;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->access$1000(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;

    move-result-object v3

    invoke-static {v0, v1, v2, v4, v3}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportAddProfileActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;)V

    goto :goto_0

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$3;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->profilesGate:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$3;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->access$1000(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;

    move-result-object v3

    invoke-static {v0, v1, v2, v4, v3}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportEditProfileActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;)V

    goto :goto_0

    .line 221
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$3;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->handleUserAgentErrors(Lcom/netflix/mediaclient/android/app/Status;)Ljava/lang/String;

    move-result-object v0

    .line 223
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$3;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->access$900(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 224
    sget-object v1, Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;->displayedError:Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->createUIError(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$3;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->profilesGate:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-static {v1, v2, v3, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportDeleteProfileActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    goto :goto_0

    .line 226
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$3;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->access$300(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 227
    sget-object v1, Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;->displayedError:Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->createUIError(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    move-result-object v0

    .line 228
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$3;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->profilesGate:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$3;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;

    invoke-static {v4}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->access$1000(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;

    move-result-object v4

    invoke-static {v1, v2, v3, v0, v4}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportAddProfileActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;)V

    goto :goto_0

    .line 230
    :cond_4
    sget-object v1, Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;->displayedError:Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->createUIError(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    move-result-object v0

    .line 231
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$3;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->profilesGate:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$3;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;

    invoke-static {v4}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->access$1000(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;

    move-result-object v4

    invoke-static {v1, v2, v3, v0, v4}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportEditProfileActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;)V

    goto :goto_0
.end method
