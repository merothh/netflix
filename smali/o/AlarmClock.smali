.class public final Lo/AlarmClock;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/DifferentialPrivacyConfig;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/DifferentialPrivacyConfig<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/io/StringWriter;

.field private final c:Lcom/google/gson/stream/JsonWriter;

.field private final d:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>(Lcom/google/gson/Gson;ZI)V
    .locals 0

    const-string p3, "gson"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/AlarmClock;->d:Lcom/google/gson/Gson;

    .line 202
    new-instance p1, Ljava/io/StringWriter;

    const/16 p3, 0x1000

    invoke-direct {p1, p3}, Ljava/io/StringWriter;-><init>(I)V

    iput-object p1, p0, Lo/AlarmClock;->a:Ljava/io/StringWriter;

    .line 203
    new-instance p1, Lcom/google/gson/stream/JsonWriter;

    iget-object p3, p0, Lo/AlarmClock;->a:Ljava/io/StringWriter;

    check-cast p3, Ljava/io/Writer;

    invoke-direct {p1, p3}, Lcom/google/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    iput-object p1, p0, Lo/AlarmClock;->c:Lcom/google/gson/stream/JsonWriter;

    .line 206
    iget-object p1, p0, Lo/AlarmClock;->c:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {p1, p2}, Lcom/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/gson/Gson;ZIILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/16 p3, 0x1000

    .line 199
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lo/AlarmClock;-><init>(Lcom/google/gson/Gson;ZI)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/gson/JsonElement;)Lo/AlarmClock;
    .locals 2

    const-string v0, "v"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lo/AlarmClock;->d:Lcom/google/gson/Gson;

    iget-object v1, p0, Lo/AlarmClock;->c:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;Lcom/google/gson/stream/JsonWriter;)V

    return-object p0
.end method

.method public a(Ljava/lang/Number;)Lo/AlarmClock;
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lo/AlarmClock;->c:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0, p1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/google/gson/stream/JsonWriter;

    return-object p0
.end method

.method public synthetic a()Lo/DifferentialPrivacyConfig;
    .locals 1

    .line 196
    invoke-virtual {p0}, Lo/AlarmClock;->c()Lo/AlarmClock;

    move-result-object v0

    check-cast v0, Lo/DifferentialPrivacyConfig;

    return-object v0
.end method

.method public synthetic a(Ljava/lang/String;)Lo/DifferentialPrivacyConfig;
    .locals 0

    .line 196
    invoke-virtual {p0, p1}, Lo/AlarmClock;->e(Ljava/lang/String;)Lo/AlarmClock;

    move-result-object p1

    check-cast p1, Lo/DifferentialPrivacyConfig;

    return-object p1
.end method

.method public b()Lo/AlarmClock;
    .locals 1

    .line 215
    iget-object v0, p0, Lo/AlarmClock;->c:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-object p0
.end method

.method public b(Z)Lo/AlarmClock;
    .locals 1

    .line 240
    iget-object v0, p0, Lo/AlarmClock;->c:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0, p1}, Lcom/google/gson/stream/JsonWriter;->value(Z)Lcom/google/gson/stream/JsonWriter;

    return-object p0
.end method

.method public c()Lo/AlarmClock;
    .locals 1

    .line 210
    iget-object v0, p0, Lo/AlarmClock;->c:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lo/AlarmClock;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lo/AlarmClock;->c:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0, p1}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    return-object p0
.end method

.method public synthetic c(Lcom/google/gson/JsonElement;)Lo/DifferentialPrivacyConfig;
    .locals 0

    .line 196
    invoke-virtual {p0, p1}, Lo/AlarmClock;->a(Lcom/google/gson/JsonElement;)Lo/AlarmClock;

    move-result-object p1

    check-cast p1, Lo/DifferentialPrivacyConfig;

    return-object p1
.end method

.method public synthetic c(Ljava/lang/Number;)Lo/DifferentialPrivacyConfig;
    .locals 0

    .line 196
    invoke-virtual {p0, p1}, Lo/AlarmClock;->a(Ljava/lang/Number;)Lo/AlarmClock;

    move-result-object p1

    check-cast p1, Lo/DifferentialPrivacyConfig;

    return-object p1
.end method

.method public d(J)Lo/AlarmClock;
    .locals 1

    .line 250
    iget-object v0, p0, Lo/AlarmClock;->c:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    return-object p0
.end method

.method public synthetic d()Lo/DifferentialPrivacyConfig;
    .locals 1

    .line 196
    invoke-virtual {p0}, Lo/AlarmClock;->b()Lo/AlarmClock;

    move-result-object v0

    check-cast v0, Lo/DifferentialPrivacyConfig;

    return-object v0
.end method

.method public synthetic d(Ljava/lang/String;)Lo/DifferentialPrivacyConfig;
    .locals 0

    .line 196
    invoke-virtual {p0, p1}, Lo/AlarmClock;->c(Ljava/lang/String;)Lo/AlarmClock;

    move-result-object p1

    check-cast p1, Lo/DifferentialPrivacyConfig;

    return-object p1
.end method

.method public e()Lo/AlarmClock;
    .locals 1

    .line 220
    iget-object v0, p0, Lo/AlarmClock;->c:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->beginArray()Lcom/google/gson/stream/JsonWriter;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lo/AlarmClock;
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lo/AlarmClock;->c:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0, p1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    return-object p0
.end method

.method public synthetic e(J)Lo/DifferentialPrivacyConfig;
    .locals 0

    .line 196
    invoke-virtual {p0, p1, p2}, Lo/AlarmClock;->d(J)Lo/AlarmClock;

    move-result-object p1

    check-cast p1, Lo/DifferentialPrivacyConfig;

    return-object p1
.end method

.method public synthetic e(Z)Lo/DifferentialPrivacyConfig;
    .locals 0

    .line 196
    invoke-virtual {p0, p1}, Lo/AlarmClock;->b(Z)Lo/AlarmClock;

    move-result-object p1

    check-cast p1, Lo/DifferentialPrivacyConfig;

    return-object p1
.end method

.method public f()Lo/AlarmClock;
    .locals 1

    .line 265
    iget-object v0, p0, Lo/AlarmClock;->c:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-object p0
.end method

.method public synthetic g()Lo/DifferentialPrivacyConfig;
    .locals 1

    .line 196
    invoke-virtual {p0}, Lo/AlarmClock;->e()Lo/AlarmClock;

    move-result-object v0

    check-cast v0, Lo/DifferentialPrivacyConfig;

    return-object v0
.end method

.method public synthetic h()Lo/DifferentialPrivacyConfig;
    .locals 1

    .line 196
    invoke-virtual {p0}, Lo/AlarmClock;->f()Lo/AlarmClock;

    move-result-object v0

    check-cast v0, Lo/DifferentialPrivacyConfig;

    return-object v0
.end method

.method public i()Lo/AlarmClock;
    .locals 1

    .line 225
    iget-object v0, p0, Lo/AlarmClock;->c:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->endArray()Lcom/google/gson/stream/JsonWriter;

    return-object p0
.end method

.method public synthetic j()Lo/DifferentialPrivacyConfig;
    .locals 1

    .line 196
    invoke-virtual {p0}, Lo/AlarmClock;->i()Lo/AlarmClock;

    move-result-object v0

    check-cast v0, Lo/DifferentialPrivacyConfig;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 2

    .line 270
    iget-object v0, p0, Lo/AlarmClock;->c:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->close()V

    .line 271
    iget-object v0, p0, Lo/AlarmClock;->a:Ljava/io/StringWriter;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "stringWriter.toString()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic o()Ljava/lang/Object;
    .locals 1

    .line 196
    invoke-virtual {p0}, Lo/AlarmClock;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
