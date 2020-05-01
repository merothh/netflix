.class public abstract Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static typeAdapter(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;",
            ">;"
        }
    .end annotation

    .line 19
    new-instance v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_ManifestLimitedLicense$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/media/manifest/AutoValue_ManifestLimitedLicense$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method public abstract bytes()[B
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "licenseResponseBase64"
    .end annotation
.end method

.method public abstract drmSessionId()I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "drmSessionId"
    .end annotation
.end method
