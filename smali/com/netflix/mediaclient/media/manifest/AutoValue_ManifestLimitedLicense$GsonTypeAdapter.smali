.class public final Lcom/netflix/mediaclient/media/manifest/AutoValue_ManifestLimitedLicense$GsonTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/media/manifest/AutoValue_ManifestLimitedLicense;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GsonTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;",
        ">;"
    }
.end annotation


# instance fields
.field private final bytesAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "[B>;"
        }
    .end annotation
.end field

.field private defaultBytes:[B

.field private defaultDrmSessionId:I

.field private final drmSessionIdAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gson/Gson;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_ManifestLimitedLicense$GsonTypeAdapter;->defaultBytes:[B

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_ManifestLimitedLicense$GsonTypeAdapter;->defaultDrmSessionId:I

    .line 25
    new-instance v0, Lo/sw$Application;

    invoke-direct {v0}, Lo/sw$Application;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_ManifestLimitedLicense$GsonTypeAdapter;->bytesAdapter:Lcom/google/gson/TypeAdapter;

    .line 26
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_ManifestLimitedLicense$GsonTypeAdapter;->drmSessionIdAdapter:Lcom/google/gson/TypeAdapter;

    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;
    .locals 7

    .line 43
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 44
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    const/4 p1, 0x0

    return-object p1

    .line 47
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 48
    iget-object v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_ManifestLimitedLicense$GsonTypeAdapter;->defaultBytes:[B

    .line 49
    iget v1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_ManifestLimitedLicense$GsonTypeAdapter;->defaultDrmSessionId:I

    .line 50
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 51
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v3, v4, :cond_1

    .line 53
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    .line 56
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x7a900c6f

    const/4 v6, 0x1

    if-eq v4, v5, :cond_3

    const v5, -0x11d2448e

    if-eq v4, v5, :cond_2

    goto :goto_1

    :cond_2
    const-string v4, "drmSessionId"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const-string v4, "licenseResponseBase64"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v3, 0x0

    :cond_4
    :goto_1
    if-eqz v3, :cond_6

    if-eq v3, v6, :cond_5

    .line 66
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto :goto_0

    .line 62
    :cond_5
    iget-object v1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_ManifestLimitedLicense$GsonTypeAdapter;->drmSessionIdAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v1, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 58
    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_ManifestLimitedLicense$GsonTypeAdapter;->bytesAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0

    .line 70
    :cond_7
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 71
    new-instance p1, Lcom/netflix/mediaclient/media/manifest/AutoValue_ManifestLimitedLicense;

    invoke-direct {p1, v0, v1}, Lcom/netflix/mediaclient/media/manifest/AutoValue_ManifestLimitedLicense;-><init>([BI)V

    return-object p1
.end method

.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/media/manifest/AutoValue_ManifestLimitedLicense$GsonTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultBytes([B)Lcom/netflix/mediaclient/media/manifest/AutoValue_ManifestLimitedLicense$GsonTypeAdapter;
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_ManifestLimitedLicense$GsonTypeAdapter;->defaultBytes:[B

    return-object p0
.end method

.method public setDefaultDrmSessionId(I)Lcom/netflix/mediaclient/media/manifest/AutoValue_ManifestLimitedLicense$GsonTypeAdapter;
    .locals 0

    .line 78
    iput p1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_ManifestLimitedLicense$GsonTypeAdapter;->defaultDrmSessionId:I

    return-object p0
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;)V
    .locals 2

    if-nez p2, :cond_0

    .line 31
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 34
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    const-string v0, "licenseResponseBase64"

    .line 35
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 36
    iget-object v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_ManifestLimitedLicense$GsonTypeAdapter;->bytesAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;->bytes()[B

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "drmSessionId"

    .line 37
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 38
    iget-object v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_ManifestLimitedLicense$GsonTypeAdapter;->drmSessionIdAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;->drmSessionId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 39
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p2, Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/media/manifest/AutoValue_ManifestLimitedLicense$GsonTypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;)V

    return-void
.end method