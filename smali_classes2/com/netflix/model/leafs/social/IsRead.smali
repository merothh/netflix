.class public abstract Lcom/netflix/model/leafs/social/IsRead;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/model/leafs/social/IsRead$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/netflix/model/leafs/social/IsRead$Builder;
    .locals 2

    .line 25
    new-instance v0, Lcom/netflix/model/leafs/social/$$AutoValue_IsRead$Builder;

    invoke-direct {v0}, Lcom/netflix/model/leafs/social/$$AutoValue_IsRead$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/model/leafs/social/$$AutoValue_IsRead$Builder;->read(Z)Lcom/netflix/model/leafs/social/IsRead$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static create()Lcom/netflix/model/leafs/social/IsRead;
    .locals 2

    .line 17
    new-instance v0, Lcom/netflix/model/leafs/social/AutoValue_IsRead;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/model/leafs/social/AutoValue_IsRead;-><init>(Z)V

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
            "Lcom/netflix/model/leafs/social/IsRead;",
            ">;"
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/netflix/model/leafs/social/$AutoValue_IsRead$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/model/leafs/social/$AutoValue_IsRead$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/netflix/model/leafs/social/$AutoValue_IsRead$GsonTypeAdapter;->setDefaultRead(Z)Lcom/netflix/model/leafs/social/$AutoValue_IsRead$GsonTypeAdapter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract read()Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isRead"
    .end annotation
.end method

.method public abstract toBuilder()Lcom/netflix/model/leafs/social/IsRead$Builder;
.end method
