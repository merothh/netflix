.class public final Lo/se$TaskDescription;
.super Lcom/google/gson/TypeAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/se;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Lo/sw;",
        ">;"
    }
.end annotation


# instance fields
.field private a:[B

.field private final d:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gson/Gson;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lo/se$TaskDescription;->a:[B

    .line 21
    new-instance p1, Lo/sw$Application;

    invoke-direct {p1}, Lo/sw$Application;-><init>()V

    iput-object p1, p0, Lo/se$TaskDescription;->d:Lcom/google/gson/TypeAdapter;

    return-void
.end method


# virtual methods
.method public e(Lcom/google/gson/stream/JsonReader;)Lo/sw;
    .locals 5

    .line 36
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 37
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    const/4 p1, 0x0

    return-object p1

    .line 40
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 41
    iget-object v0, p0, Lo/se$TaskDescription;->a:[B

    .line 42
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 43
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v2, v3, :cond_1

    .line 45
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    .line 48
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x59dc06b

    if-eq v3, v4, :cond_2

    goto :goto_1

    :cond_2
    const-string v3, "bytes"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    .line 54
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto :goto_0

    .line 50
    :cond_4
    iget-object v0, p0, Lo/se$TaskDescription;->d:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0

    .line 58
    :cond_5
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 59
    new-instance p1, Lo/se;

    invoke-direct {p1, v0}, Lo/se;-><init>([B)V

    return-object p1
.end method

.method public e(Lcom/google/gson/stream/JsonWriter;Lo/sw;)V
    .locals 1

    if-nez p2, :cond_0

    .line 26
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 29
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    const-string v0, "bytes"

    .line 30
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 31
    iget-object v0, p0, Lo/se$TaskDescription;->d:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lo/sw;->a()[B

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 32
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lo/se$TaskDescription;->e(Lcom/google/gson/stream/JsonReader;)Lo/sw;

    move-result-object p1

    return-object p1
.end method

.method public synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p2, Lo/sw;

    invoke-virtual {p0, p1, p2}, Lo/se$TaskDescription;->e(Lcom/google/gson/stream/JsonWriter;Lo/sw;)V

    return-void
.end method
