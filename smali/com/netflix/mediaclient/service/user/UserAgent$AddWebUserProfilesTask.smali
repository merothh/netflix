.class Lcom/netflix/mediaclient/service/user/UserAgent$AddWebUserProfilesTask;
.super Ljava/lang/Object;
.source "UserAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field mCallback:Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;

.field profileIconName:Ljava/lang/String;

.field profileName:Ljava/lang/String;

.field startInKidsZone:Z

.field final synthetic this$0:Lcom/netflix/mediaclient/service/user/UserAgent;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/lang/String;ZLjava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V
    .locals 0

    .prologue
    .line 1242
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$AddWebUserProfilesTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    .line 1243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1244
    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$AddWebUserProfilesTask;->profileName:Ljava/lang/String;

    .line 1245
    iput-boolean p3, p0, Lcom/netflix/mediaclient/service/user/UserAgent$AddWebUserProfilesTask;->startInKidsZone:Z

    .line 1246
    iput-object p4, p0, Lcom/netflix/mediaclient/service/user/UserAgent$AddWebUserProfilesTask;->profileIconName:Ljava/lang/String;

    .line 1247
    iput-object p5, p0, Lcom/netflix/mediaclient/service/user/UserAgent$AddWebUserProfilesTask;->mCallback:Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;

    .line 1248
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1252
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$AddWebUserProfilesTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$1200(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/user/UserWebClient;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$AddWebUserProfilesTask;->profileName:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$AddWebUserProfilesTask;->startInKidsZone:Z

    iget-object v3, p0, Lcom/netflix/mediaclient/service/user/UserAgent$AddWebUserProfilesTask;->profileIconName:Ljava/lang/String;

    new-instance v4, Lcom/netflix/mediaclient/service/user/UserAgent$ProfilesUpdateCallBackWithResult;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/user/UserAgent$AddWebUserProfilesTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    iget-object v6, p0, Lcom/netflix/mediaclient/service/user/UserAgent$AddWebUserProfilesTask;->mCallback:Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/netflix/mediaclient/service/user/UserAgent$ProfilesUpdateCallBackWithResult;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;Lcom/netflix/mediaclient/service/user/UserAgent$1;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/user/UserWebClient;->addWebUserProfile(Ljava/lang/String;ZLjava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V

    .line 1253
    return-void
.end method
