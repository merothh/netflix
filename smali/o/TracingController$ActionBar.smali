.class public final Lo/TracingController$ActionBar;
.super Lcom/google/gson/TypeAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/TracingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Lo/WebBackForwardList;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Lo/ValueCallback;

.field private final e:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Lo/ValueCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gson/Gson;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lo/TracingController$ActionBar;->b:Lo/ValueCallback;

    .line 22
    const-class v0, Lo/ValueCallback;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object p1

    iput-object p1, p0, Lo/TracingController$ActionBar;->e:Lcom/google/gson/TypeAdapter;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/gson/stream/JsonReader;)Lo/WebBackForwardList;
    .locals 5

    .line 37
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 38
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    const/4 p1, 0x0

    return-object p1

    .line 41
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 42
    iget-object v0, p0, Lo/TracingController$ActionBar;->b:Lo/ValueCallback;

    .line 43
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 44
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v2, v3, :cond_1

    .line 46
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    .line 49
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x3c1eab4e

    if-eq v3, v4, :cond_2

    goto :goto_1

    :cond_2
    const-string v3, "osInfo"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    .line 55
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto :goto_0

    .line 51
    :cond_4
    iget-object v0, p0, Lo/TracingController$ActionBar;->e:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ValueCallback;

    goto :goto_0

    .line 59
    :cond_5
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 60
    new-instance p1, Lo/TracingController;

    invoke-direct {p1, v0}, Lo/TracingController;-><init>(Lo/ValueCallback;)V

    return-object p1
.end method

.method public a(Lcom/google/gson/stream/JsonWriter;Lo/WebBackForwardList;)V
    .locals 1

    if-nez p2, :cond_0

    .line 27
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 30
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    const-string v0, "osInfo"

    .line 31
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 32
    iget-object v0, p0, Lo/TracingController$ActionBar;->e:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lo/WebBackForwardList;->a()Lo/ValueCallback;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 33
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lo/TracingController$ActionBar;->a(Lcom/google/gson/stream/JsonReader;)Lo/WebBackForwardList;

    move-result-object p1

    return-object p1
.end method

.method public synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p2, Lo/WebBackForwardList;

    invoke-virtual {p0, p1, p2}, Lo/TracingController$ActionBar;->a(Lcom/google/gson/stream/JsonWriter;Lo/WebBackForwardList;)V

    return-void
.end method