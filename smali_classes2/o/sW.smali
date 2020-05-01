.class public final Lo/sW;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lo/wB;
    .locals 3

    .line 23
    const-class v0, Lcom/google/gson/Gson;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/Gson;

    const-string v1, "streamingConfig"

    const/4 v2, 0x0

    .line 24
    invoke-static {p0, v1, v2}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 25
    const-class v1, Lo/xG;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/xG;

    if-eqz p0, :cond_0

    .line 27
    invoke-virtual {p0}, Lo/xG;->b()Lo/wB;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 28
    invoke-virtual {p0}, Lo/xG;->b()Lo/wB;

    move-result-object p0

    goto :goto_0

    .line 30
    :cond_0
    new-instance p0, Lcom/google/gson/JsonObject;

    invoke-direct {p0}, Lcom/google/gson/JsonObject;-><init>()V

    const-class v1, Lo/wB;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/wB;

    .line 32
    :goto_0
    invoke-virtual {p0}, Lo/wB;->i()V

    return-object p0
.end method
