.class Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$AvatarsFetchedCallback;
.super Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;
.source "ProfileDetailsActivity.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$AvatarsFetchedCallback;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$1;)V
    .locals 0

    .prologue
    .line 401
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$AvatarsFetchedCallback;-><init>(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)V

    return-void
.end method


# virtual methods
.method public onAvailableAvatarsListFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 404
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    const-string/jumbo v0, "ProfileDetailsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAvailableAvatarsListFetched: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_0
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    .line 411
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$AvatarsFetchedCallback;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->access$200(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$AvatarsFetchedCallback;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->access$700(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$AvatarsFetchedCallback;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->access$502(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    .line 435
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    .line 436
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;->isInDefaultSet()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 437
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$AvatarsFetchedCallback;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->access$502(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    .line 442
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$AvatarsFetchedCallback;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->access$500(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    move-result-object v0

    if-nez v0, :cond_4

    .line 444
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$AvatarsFetchedCallback;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->access$502(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    .line 447
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$AvatarsFetchedCallback;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$AvatarsFetchedCallback;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->access$500(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->access$702(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    .line 449
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$AvatarsFetchedCallback;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->access$800(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)V

    .line 464
    :goto_0
    return-void

    .line 453
    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$AvatarsFetchedCallback;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->handleUserAgentErrors(Lcom/netflix/mediaclient/android/app/Status;)Ljava/lang/String;

    move-result-object v0

    .line 454
    sget-object v1, Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;->displayedError:Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    invoke-static {p2, v0, v1}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->createUIError(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    move-result-object v0

    .line 457
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$AvatarsFetchedCallback;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->access$900(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 458
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$AvatarsFetchedCallback;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->profilesGate:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-static {v1, v2, v3, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportDeleteProfileActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    goto :goto_0

    .line 459
    :cond_7
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$AvatarsFetchedCallback;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->access$300(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 460
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$AvatarsFetchedCallback;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->profilesGate:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$AvatarsFetchedCallback;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;

    invoke-static {v4}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->access$1000(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;

    move-result-object v4

    invoke-static {v1, v2, v3, v0, v4}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportAddProfileActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;)V

    goto :goto_0

    .line 462
    :cond_8
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$AvatarsFetchedCallback;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->profilesGate:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$AvatarsFetchedCallback;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;

    invoke-static {v4}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->access$1000(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;

    move-result-object v4

    invoke-static {v1, v2, v3, v0, v4}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportEditProfileActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;)V

    goto :goto_0
.end method
