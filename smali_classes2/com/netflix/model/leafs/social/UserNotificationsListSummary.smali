.class public abstract Lcom/netflix/model/leafs/social/UserNotificationsListSummary;
.super Lo/BlockedNumberContract;
.source ""

# interfaces
.implements Lcom/netflix/model/leafs/social/NotificationsListSummary;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/model/leafs/social/UserNotificationsListSummary$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lo/BlockedNumberContract;-><init>()V

    return-void
.end method

.method public static builder()Lcom/netflix/model/leafs/social/UserNotificationsListSummary$Builder;
    .locals 2

    .line 30
    new-instance v0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary$Builder;

    invoke-direct {v0}, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary$Builder;-><init>()V

    const/4 v1, -0x1

    .line 31
    invoke-virtual {v0, v1}, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary$Builder;->baseTrackId(I)Lcom/netflix/model/leafs/social/UserNotificationsListSummary$Builder;

    move-result-object v0

    .line 32
    invoke-virtual {v0, v1}, Lcom/netflix/model/leafs/social/UserNotificationsListSummary$Builder;->mdpTrackId(I)Lcom/netflix/model/leafs/social/UserNotificationsListSummary$Builder;

    move-result-object v0

    .line 33
    invoke-virtual {v0, v1}, Lcom/netflix/model/leafs/social/UserNotificationsListSummary$Builder;->playerTrackId(I)Lcom/netflix/model/leafs/social/UserNotificationsListSummary$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static create()Lcom/netflix/model/leafs/social/UserNotificationsListSummary;
    .locals 7

    .line 20
    new-instance v6, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationsListSummary;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationsListSummary;-><init>(Ljava/lang/String;IIILjava/util/List;)V

    return-object v6
.end method

.method public static typeAdapter(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/model/leafs/social/UserNotificationsListSummary;",
            ">;"
        }
    .end annotation

    .line 16
    new-instance v0, Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationsListSummary$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationsListSummary$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method public makeCopy(Ljava/util/List;)Lcom/netflix/model/leafs/social/NotificationsListSummary;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;",
            ">;)",
            "Lcom/netflix/model/leafs/social/NotificationsListSummary;"
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/UserNotificationsListSummary;->toBuilder()Lcom/netflix/model/leafs/social/UserNotificationsListSummary$Builder;

    move-result-object v0

    .line 38
    invoke-virtual {v0, p1}, Lcom/netflix/model/leafs/social/UserNotificationsListSummary$Builder;->notifications(Ljava/util/List;)Lcom/netflix/model/leafs/social/UserNotificationsListSummary$Builder;

    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationsListSummary$Builder;->build()Lcom/netflix/model/leafs/social/UserNotificationsListSummary;

    move-result-object p1

    return-object p1
.end method

.method public abstract toBuilder()Lcom/netflix/model/leafs/social/UserNotificationsListSummary$Builder;
.end method
