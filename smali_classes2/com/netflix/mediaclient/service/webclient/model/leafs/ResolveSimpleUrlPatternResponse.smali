.class public abstract Lcom/netflix/mediaclient/service/webclient/model/leafs/ResolveSimpleUrlPatternResponse;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/service/webclient/model/leafs/ResolveSimpleUrlPatternResponse$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/netflix/mediaclient/service/webclient/model/leafs/ResolveSimpleUrlPatternResponse$Builder;
    .locals 2

    .line 23
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ResolveSimpleUrlPatternResponse$Builder;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ResolveSimpleUrlPatternResponse$Builder;-><init>()V

    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ResolveSimpleUrlPatternResponse$Builder;->url(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ResolveSimpleUrlPatternResponse$Builder;

    move-result-object v0

    .line 25
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ResolveSimpleUrlPatternResponse$Builder;->error(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ResolveSimpleUrlPatternResponse$Builder;

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
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/ResolveSimpleUrlPatternResponse;",
            ">;"
        }
    .end annotation

    .line 19
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ResolveSimpleUrlPatternResponse$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ResolveSimpleUrlPatternResponse$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method public abstract error()Ljava/lang/String;
.end method

.method public abstract toBuilder()Lcom/netflix/mediaclient/service/webclient/model/leafs/ResolveSimpleUrlPatternResponse$Builder;
.end method

.method public abstract url()Ljava/lang/String;
.end method
