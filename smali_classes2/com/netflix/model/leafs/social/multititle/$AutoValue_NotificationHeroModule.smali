.class abstract Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationHeroModule;
.super Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationHeroModule;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationHeroModule$GsonTypeAdapter;
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/social/multititle/NotificationHeroTitleAction;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct/range {p0 .. p7}, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationHeroModule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/util/List;)V

    return-void
.end method
