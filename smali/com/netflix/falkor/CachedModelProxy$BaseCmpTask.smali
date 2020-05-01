.class abstract Lcom/netflix/falkor/CachedModelProxy$BaseCmpTask;
.super Ljava/lang/Object;
.source "CachedModelProxy.java"

# interfaces
.implements Lcom/netflix/falkor/CachedModelProxy$CmpTaskDetails;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/falkor/CachedModelProxy$1;)V
    .locals 0

    .prologue
    .line 1181
    invoke-direct {p0}, Lcom/netflix/falkor/CachedModelProxy$BaseCmpTask;-><init>()V

    return-void
.end method


# virtual methods
.method public customHandleResponse(Lcom/google/gson/JsonObject;)V
    .locals 0

    .prologue
    .line 1210
    return-void
.end method

.method public getOptionalRequestParams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/util/DataUtil$StringPair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1214
    const/4 v0, 0x0

    return-object v0
.end method

.method public shouldCollapseMissingPql()Z
    .locals 1

    .prologue
    .line 1186
    const/4 v0, 0x0

    return v0
.end method

.method public shouldCustomHandleResponse()Z
    .locals 1

    .prologue
    .line 1206
    const/4 v0, 0x0

    return v0
.end method

.method public shouldSkipCache()Z
    .locals 1

    .prologue
    .line 1202
    const/4 v0, 0x0

    return v0
.end method

.method public shouldUseAuthorization()Z
    .locals 1

    .prologue
    .line 1194
    const/4 v0, 0x1

    return v0
.end method

.method public shouldUseCacheOnly()Z
    .locals 1

    .prologue
    .line 1198
    const/4 v0, 0x0

    return v0
.end method

.method public shouldUseCallMethod()Z
    .locals 1

    .prologue
    .line 1190
    const/4 v0, 0x0

    return v0
.end method
