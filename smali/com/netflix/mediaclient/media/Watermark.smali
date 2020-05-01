.class public abstract Lcom/netflix/mediaclient/media/Watermark;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/media/Watermark$Anchor;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
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
            "Lcom/netflix/mediaclient/media/Watermark;",
            ">;"
        }
    .end annotation

    .line 56
    new-instance v0, Lcom/netflix/mediaclient/media/AutoValue_Watermark$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/media/AutoValue_Watermark$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method public abstract anchor()Lcom/netflix/mediaclient/media/Watermark$Anchor;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "anchor"
    .end annotation
.end method

.method public getAnchor()Lcom/netflix/mediaclient/media/Watermark$Anchor;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/Watermark;->anchor()Lcom/netflix/mediaclient/media/Watermark$Anchor;

    move-result-object v0

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/Watermark;->identifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/Watermark;->opacity()I

    move-result v0

    return v0
.end method

.method public abstract identifier()Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end method

.method public isValid()Z
    .locals 2

    .line 32
    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/Watermark;->opacity()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/Watermark;->opacity()I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/Watermark;->identifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/Watermark;->anchor()Lcom/netflix/mediaclient/media/Watermark$Anchor;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract opacity()I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "opacity"
    .end annotation
.end method
