.class public final Lcom/netflix/mediaclient/media/AutoValue_Watermark$GsonTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/media/AutoValue_Watermark;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GsonTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Lcom/netflix/mediaclient/media/Watermark;",
        ">;"
    }
.end annotation


# instance fields
.field private final anchorAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/mediaclient/media/Watermark$Anchor;",
            ">;"
        }
    .end annotation
.end field

.field private defaultAnchor:Lcom/netflix/mediaclient/media/Watermark$Anchor;

.field private defaultIdentifier:Ljava/lang/String;

.field private defaultOpacity:I

.field private final identifierAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final opacityAdapter:Lcom/google/gson/TypeAdapter;
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
    .locals 2

    .line 25
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/netflix/mediaclient/media/AutoValue_Watermark$GsonTypeAdapter;->defaultIdentifier:Ljava/lang/String;

    const/4 v1, 0x0

    .line 23
    iput v1, p0, Lcom/netflix/mediaclient/media/AutoValue_Watermark$GsonTypeAdapter;->defaultOpacity:I

    .line 24
    iput-object v0, p0, Lcom/netflix/mediaclient/media/AutoValue_Watermark$GsonTypeAdapter;->defaultAnchor:Lcom/netflix/mediaclient/media/Watermark$Anchor;

    .line 26
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/AutoValue_Watermark$GsonTypeAdapter;->identifierAdapter:Lcom/google/gson/TypeAdapter;

    .line 27
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/AutoValue_Watermark$GsonTypeAdapter;->opacityAdapter:Lcom/google/gson/TypeAdapter;

    .line 28
    const-class v0, Lcom/netflix/mediaclient/media/Watermark$Anchor;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/media/AutoValue_Watermark$GsonTypeAdapter;->anchorAdapter:Lcom/google/gson/TypeAdapter;

    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/mediaclient/media/Watermark;
    .locals 9

    .line 47
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 48
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    const/4 p1, 0x0

    return-object p1

    .line 51
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 52
    iget-object v0, p0, Lcom/netflix/mediaclient/media/AutoValue_Watermark$GsonTypeAdapter;->defaultIdentifier:Ljava/lang/String;

    .line 53
    iget v1, p0, Lcom/netflix/mediaclient/media/AutoValue_Watermark$GsonTypeAdapter;->defaultOpacity:I

    .line 54
    iget-object v2, p0, Lcom/netflix/mediaclient/media/AutoValue_Watermark$GsonTypeAdapter;->defaultAnchor:Lcom/netflix/mediaclient/media/Watermark$Anchor;

    .line 55
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 56
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 57
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v4, v5, :cond_1

    .line 58
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    .line 61
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x543d3d4b

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v5, v6, :cond_4

    const v6, -0x4b8807f5

    if-eq v5, v6, :cond_3

    const/16 v6, 0xd1b

    if-eq v5, v6, :cond_2

    goto :goto_1

    :cond_2
    const-string v5, "id"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    const-string v5, "opacity"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const-string v5, "anchor"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v4, 0x2

    :cond_5
    :goto_1
    if-eqz v4, :cond_8

    if-eq v4, v8, :cond_7

    if-eq v4, v7, :cond_6

    .line 75
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto :goto_0

    .line 71
    :cond_6
    iget-object v2, p0, Lcom/netflix/mediaclient/media/AutoValue_Watermark$GsonTypeAdapter;->anchorAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/media/Watermark$Anchor;

    goto :goto_0

    .line 67
    :cond_7
    iget-object v1, p0, Lcom/netflix/mediaclient/media/AutoValue_Watermark$GsonTypeAdapter;->opacityAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v1, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 63
    :cond_8
    iget-object v0, p0, Lcom/netflix/mediaclient/media/AutoValue_Watermark$GsonTypeAdapter;->identifierAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 79
    :cond_9
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 80
    new-instance p1, Lcom/netflix/mediaclient/media/AutoValue_Watermark;

    invoke-direct {p1, v0, v1, v2}, Lcom/netflix/mediaclient/media/AutoValue_Watermark;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/media/Watermark$Anchor;)V

    return-object p1
.end method

.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/media/AutoValue_Watermark$GsonTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/mediaclient/media/Watermark;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultAnchor(Lcom/netflix/mediaclient/media/Watermark$Anchor;)Lcom/netflix/mediaclient/media/AutoValue_Watermark$GsonTypeAdapter;
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/netflix/mediaclient/media/AutoValue_Watermark$GsonTypeAdapter;->defaultAnchor:Lcom/netflix/mediaclient/media/Watermark$Anchor;

    return-object p0
.end method

.method public setDefaultIdentifier(Ljava/lang/String;)Lcom/netflix/mediaclient/media/AutoValue_Watermark$GsonTypeAdapter;
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/netflix/mediaclient/media/AutoValue_Watermark$GsonTypeAdapter;->defaultIdentifier:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultOpacity(I)Lcom/netflix/mediaclient/media/AutoValue_Watermark$GsonTypeAdapter;
    .locals 0

    .line 87
    iput p1, p0, Lcom/netflix/mediaclient/media/AutoValue_Watermark$GsonTypeAdapter;->defaultOpacity:I

    return-object p0
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/mediaclient/media/Watermark;)V
    .locals 2

    if-nez p2, :cond_0

    .line 33
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 36
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    const-string v0, "id"

    .line 37
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 38
    iget-object v0, p0, Lcom/netflix/mediaclient/media/AutoValue_Watermark$GsonTypeAdapter;->identifierAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/Watermark;->identifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "opacity"

    .line 39
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 40
    iget-object v0, p0, Lcom/netflix/mediaclient/media/AutoValue_Watermark$GsonTypeAdapter;->opacityAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/Watermark;->opacity()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "anchor"

    .line 41
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 42
    iget-object v0, p0, Lcom/netflix/mediaclient/media/AutoValue_Watermark$GsonTypeAdapter;->anchorAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/Watermark;->anchor()Lcom/netflix/mediaclient/media/Watermark$Anchor;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 43
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p2, Lcom/netflix/mediaclient/media/Watermark;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/media/AutoValue_Watermark$GsonTypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/mediaclient/media/Watermark;)V

    return-void
.end method
