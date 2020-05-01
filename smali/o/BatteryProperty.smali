.class public final Lo/BatteryProperty;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final b(Lcom/google/gson/JsonElement;)Ljava/lang/String;
    .locals 1

    const-string v0, "$this$asStringOrNull"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
