.class abstract Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationsListSummary;
.super Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationsListSummary$GsonTypeAdapter;
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;IIILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct/range {p0 .. p5}, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary;-><init>(Ljava/lang/String;IIILjava/util/List;)V

    return-void
.end method
