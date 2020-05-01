.class public Lcom/netflix/mediaclient/event/nrdp/device/MemoryWarning;
.super Lcom/netflix/mediaclient/event/nrdp/device/BaseDeviceEvent;
.source "MemoryWarning.java"


# static fields
.field private static final AVAILABLE_MEMORY:Ljava/lang/String; = "avail"

.field private static final TOTAL_MEMORY:Ljava/lang/String; = "total"

.field public static final TYPE:Ljava/lang/String; = "nrdp-device-memory-warning"

.field private static final USED_MEMORY:Ljava/lang/String; = "used"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const-string/jumbo v0, "nrdp-device-memory-warning"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/event/nrdp/device/BaseDeviceEvent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-nez v0, :cond_0

    const-string/jumbo v0, "nf_event"

    const-string/jumbo v2, "Unable to find activity manager! Unable to get memory data!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string/jumbo v0, "avail"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "used"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "total"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v1, p0, Lcom/netflix/mediaclient/event/nrdp/device/MemoryWarning;->json:Lorg/json/JSONObject;

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "nf_event"

    const-string/jumbo v3, "Failed to add property to JSON object"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    new-instance v0, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    invoke-static {v0}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    :try_start_1
    const-string/jumbo v3, "avail"

    iget-wide v4, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v2, "used"

    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v3

    mul-int/lit16 v3, v3, 0x400

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "total"

    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "type"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/event/nrdp/device/MemoryWarning;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v2, "nf_event"

    const-string/jumbo v3, "Failed to add property to JSON object"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
