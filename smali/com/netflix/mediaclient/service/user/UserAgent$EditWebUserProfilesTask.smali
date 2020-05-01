.class Lcom/netflix/mediaclient/service/user/UserAgent$EditWebUserProfilesTask;
.super Ljava/lang/Object;
.source "UserAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field mCallback:Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;

.field profileIconName:Ljava/lang/String;

.field profileId:Ljava/lang/String;

.field profileName:Ljava/lang/String;

.field startInKidsZone:Z

.field final synthetic this$0:Lcom/netflix/mediaclient/service/user/UserAgent;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V
    .locals 0

    .prologue
    .line 1264
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$EditWebUserProfilesTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    .line 1265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1266
    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$EditWebUserProfilesTask;->profileId:Ljava/lang/String;

    .line 1267
    iput-object p3, p0, Lcom/netflix/mediaclient/service/user/UserAgent$EditWebUserProfilesTask;->profileName:Ljava/lang/String;

    .line 1268
    iput-boolean p4, p0, Lcom/netflix/mediaclient/service/user/UserAgent$EditWebUserProfilesTask;->startInKidsZone:Z

    .line 1269
    iput-object p5, p0, Lcom/netflix/mediaclient/service/user/UserAgent$EditWebUserProfilesTask;->profileIconName:Ljava/lang/String;

    .line 1270
    iput-object p6, p0, Lcom/netflix/mediaclient/service/user/UserAgent$EditWebUserProfilesTask;->mCallback:Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;

    .line 1271
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$EditWebUserProfilesTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$1200(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/user/UserWebClient;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$EditWebUserProfilesTask;->profileId:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$EditWebUserProfilesTask;->profileName:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/netflix/mediaclient/service/user/UserAgent$EditWebUserProfilesTask;->startInKidsZone:Z

    iget-object v4, p0, Lcom/netflix/mediaclient/service/user/UserAgent$EditWebUserProfilesTask;->profileIconName:Ljava/lang/String;

    new-instance v5, Lcom/netflix/mediaclient/service/user/UserAgent$ProfilesUpdateCallBackWithResult;

    iget-object v6, p0, Lcom/netflix/mediaclient/service/user/UserAgent$EditWebUserProfilesTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    iget-object v7, p0, Lcom/netflix/mediaclient/service/user/UserAgent$EditWebUserProfilesTask;->mCallback:Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/netflix/mediaclient/service/user/UserAgent$ProfilesUpdateCallBackWithResult;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;Lcom/netflix/mediaclient/service/user/UserAgent$1;)V

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/service/user/UserWebClient;->editWebUserProfile(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V

    .line 1276
    return-void
.end method
