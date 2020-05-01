.class Lcom/netflix/mediaclient/service/user/UserAgent$FetchAvailableAvatarsListTask$1;
.super Lcom/netflix/mediaclient/service/user/SimpleUserAgentWebCallback;
.source "UserAgent.java"


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/user/UserAgent$FetchAvailableAvatarsListTask;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent$FetchAvailableAvatarsListTask;)V
    .locals 0

    .prologue
    .line 1091
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchAvailableAvatarsListTask$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$FetchAvailableAvatarsListTask;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/SimpleUserAgentWebCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvatarsListFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
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
    .line 1094
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchAvailableAvatarsListTask$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$FetchAvailableAvatarsListTask;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchAvailableAvatarsListTask;->mCallback:Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;->onAvailableAvatarsListFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1095
    return-void
.end method
