.class public abstract Lcom/netflix/mediaclient/service/webclient/model/leafs/CheckVideoMaturityResponse;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/service/webclient/model/leafs/CheckVideoMaturityResponse$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/netflix/mediaclient/service/webclient/model/leafs/CheckVideoMaturityResponse$Builder;
    .locals 2

    .line 19
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_CheckVideoMaturityResponse$Builder;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_CheckVideoMaturityResponse$Builder;-><init>()V

    const/4 v1, 0x1

    .line 20
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_CheckVideoMaturityResponse$Builder;->isAppropriate(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/CheckVideoMaturityResponse$Builder;

    move-result-object v0

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
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/CheckVideoMaturityResponse;",
            ">;"
        }
    .end annotation

    .line 15
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_CheckVideoMaturityResponse$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_CheckVideoMaturityResponse$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method public abstract isAppropriate()Z
.end method

.method public abstract toBuilder()Lcom/netflix/mediaclient/service/webclient/model/leafs/CheckVideoMaturityResponse$Builder;
.end method

.method public abstract videoId()Ljava/lang/String;
.end method
