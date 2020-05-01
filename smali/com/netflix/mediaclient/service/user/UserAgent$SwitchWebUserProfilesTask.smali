.class Lcom/netflix/mediaclient/service/user/UserAgent$SwitchWebUserProfilesTask;
.super Ljava/lang/Object;
.source "UserAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field profileId:Ljava/lang/String;

.field final synthetic this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

.field private final webClientCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1128
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$SwitchWebUserProfilesTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    .line 1129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1138
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent$SwitchWebUserProfilesTask$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/user/UserAgent$SwitchWebUserProfilesTask$1;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent$SwitchWebUserProfilesTask;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$SwitchWebUserProfilesTask;->webClientCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    .line 1130
    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$SwitchWebUserProfilesTask;->profileId:Ljava/lang/String;

    .line 1131
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$SwitchWebUserProfilesTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$1200(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/user/UserWebClient;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$SwitchWebUserProfilesTask;->profileId:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$SwitchWebUserProfilesTask;->webClientCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/service/user/UserWebClient;->switchWebUserProfile(Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V

    .line 1136
    return-void
.end method
