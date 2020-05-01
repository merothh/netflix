.class Lcom/netflix/mediaclient/service/user/UserAgent$RemoveWebUserProfilesTask;
.super Ljava/lang/Object;
.source "UserAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field mCallback:Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;

.field profileId:Ljava/lang/String;

.field final synthetic this$0:Lcom/netflix/mediaclient/service/user/UserAgent;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V
    .locals 0

    .prologue
    .line 1283
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$RemoveWebUserProfilesTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    .line 1284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1285
    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$RemoveWebUserProfilesTask;->profileId:Ljava/lang/String;

    .line 1286
    iput-object p3, p0, Lcom/netflix/mediaclient/service/user/UserAgent$RemoveWebUserProfilesTask;->mCallback:Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;

    .line 1287
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$RemoveWebUserProfilesTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$1200(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/user/UserWebClient;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$RemoveWebUserProfilesTask;->profileId:Ljava/lang/String;

    new-instance v2, Lcom/netflix/mediaclient/service/user/UserAgent$ProfilesUpdateCallBackWithResult;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/user/UserAgent$RemoveWebUserProfilesTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/user/UserAgent$RemoveWebUserProfilesTask;->mCallback:Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/netflix/mediaclient/service/user/UserAgent$ProfilesUpdateCallBackWithResult;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;Lcom/netflix/mediaclient/service/user/UserAgent$1;)V

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/service/user/UserWebClient;->removeWebUserProfile(Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V

    .line 1292
    return-void
.end method
