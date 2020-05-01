.class public abstract Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/model/leafs/social/multititle/NotificationModule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule$Builder;
    .locals 1

    .line 40
    new-instance v0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationRatingInfoModule$Builder;

    invoke-direct {v0}, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationRatingInfoModule$Builder;-><init>()V

    return-object v0
.end method

.method public static typeAdapter(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;",
            ">;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method public abstract actions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/social/multititle/NotificationRatingAction;",
            ">;"
        }
    .end annotation
.end method

.method public abstract bodyCopy()Ljava/lang/String;
.end method

.method public abstract bodyCopyConfirmationThumbsDown()Ljava/lang/String;
.end method

.method public abstract bodyCopyConfirmationThumbsUp()Ljava/lang/String;
.end method

.method public abstract boxshot()Ljava/lang/String;
.end method

.method public abstract boxshotWebp()Ljava/lang/String;
.end method

.method public abstract layout()Ljava/lang/String;
.end method

.method public abstract titleId()I
.end method

.method public abstract toBuilder()Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule$Builder;
.end method

.method public abstract videoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
.end method
