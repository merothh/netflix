.class public abstract Lcom/netflix/model/leafs/social/multititle/NotificationGridModule;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/model/leafs/social/multititle/NotificationModule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/model/leafs/social/multititle/NotificationGridModule$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/netflix/model/leafs/social/multititle/NotificationGridModule$Builder;
    .locals 1

    .line 25
    new-instance v0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationGridModule$Builder;

    invoke-direct {v0}, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationGridModule$Builder;-><init>()V

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
            "Lcom/netflix/model/leafs/social/multititle/NotificationGridModule;",
            ">;"
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationGridModule$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationGridModule$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method public abstract actions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/social/multititle/NotificationGridTitleAction;",
            ">;"
        }
    .end annotation
.end method

.method public abstract columnWidth()I
.end method

.method public abstract headlineText()Ljava/lang/String;
.end method

.method public abstract layout()Ljava/lang/String;
.end method

.method public abstract toBuilder()Lcom/netflix/model/leafs/social/multititle/NotificationGridModule$Builder;
.end method
