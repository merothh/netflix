.class Lcom/netflix/mediaclient/service/user/UserAgent$ProfilesUpdateCallBackWithResult;
.super Lcom/netflix/mediaclient/service/user/SimpleUserAgentWebCallback;
.source "UserAgent.java"


# instance fields
.field mResultCallback:Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;

.field final synthetic this$0:Lcom/netflix/mediaclient/service/user/UserAgent;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$ProfilesUpdateCallBackWithResult;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/SimpleUserAgentWebCallback;-><init>()V

    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$ProfilesUpdateCallBackWithResult;->mResultCallback:Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;Lcom/netflix/mediaclient/service/user/UserAgent$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgent$ProfilesUpdateCallBackWithResult;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V

    return-void
.end method


# virtual methods
.method public onUserProfilesUpdated(Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$ProfilesUpdateCallBackWithResult;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$2700(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;->onUserProfilesUpdated(Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;Lcom/netflix/mediaclient/android/app/Status;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$ProfilesUpdateCallBackWithResult;->mResultCallback:Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;

    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;->onProfilesListUpdateResult(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
