.class public final Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents$1;
.super Ljava/util/HashSet;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/yn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    const-string v0, "com.netflix.mediaclient.intent.action.NOTIFY_USER_ACCOUNT_NOT_LOGGED_IN"

    .line 59
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents$1;->add(Ljava/lang/Object;)Z

    const-string v0, "com.netflix.mediaclient.intent.action.NOTIFY_USER_ACCOUNT_ACTIVE"

    .line 60
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents$1;->add(Ljava/lang/Object;)Z

    const-string v0, "com.netflix.mediaclient.intent.action.NOTIFY_USER_ACCOUNT_DEACTIVE"

    .line 61
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents$1;->add(Ljava/lang/Object;)Z

    const-string v0, "com.netflix.mediaclient.intent.action.NOTIFY_USER_PROFILE_ACTIVE"

    .line 62
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents$1;->add(Ljava/lang/Object;)Z

    const-string v0, "com.netflix.mediaclient.intent.action.NOTIFY_USER_PROFILE_DEACTIVE"

    .line 63
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents$1;->add(Ljava/lang/Object;)Z

    const-string v0, "com.netflix.mediaclient.intent.action.NOTIFY_USER_PROFILE_TYPE_CHANGED"

    .line 64
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents$1;->add(Ljava/lang/Object;)Z

    const-string v0, "com.netflix.mediaclient.intent.action.NOTIFY_USER_PROFILE_READY_TO_SELECT"

    .line 65
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents$1;->add(Ljava/lang/Object;)Z

    const-string v0, "com.netflix.mediaclient.intent.action.NOTIFY_USER_PROFILE_SELECTION_RESULT"

    .line 66
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents$1;->add(Ljava/lang/Object;)Z

    const-string v0, "com.netflix.mediaclient.intent.action.NOTIFY_PROFILES_LIST_UPDATED"

    .line 67
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents$1;->add(Ljava/lang/Object;)Z

    const-string v0, "com.netflix.mediaclient.intent.action.ACCOUNT_DATA_FETCHED"

    .line 68
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents$1;->add(Ljava/lang/Object;)Z

    const-string v0, "com.netflix.mediaclient.intent.action.NOTIFY_CURRENT_PROFILE_INVALID"

    .line 69
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents$1;->add(Ljava/lang/Object;)Z

    const-string v0, "com.netflix.mediaclient.intent.action.NOTIFY_CELLULAR_DATA_USAGE_CHANGED"

    .line 70
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
