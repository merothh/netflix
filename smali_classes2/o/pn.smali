.class public Lo/pn;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static b:Lcom/google/gson/Gson;

.field private static d:Lo/pn;


# instance fields
.field public errorCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "errorCount"
    .end annotation
.end field

.field protected errorMap:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "errormap"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lo/pn;
    .locals 1

    .line 61
    sget-object v0, Lo/pn;->d:Lo/pn;

    return-object v0
.end method

.method private b()V
    .locals 5

    .line 95
    monitor-enter p0

    .line 96
    :try_start_0
    sget-object v0, Lo/pn;->b:Lcom/google/gson/Gson;

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 97
    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-string v2, "device_error_info"

    invoke-static {v1, v2, v0}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DevicePlaybackErrorInfo"

    const-string v2, "save deviceErrorMap data %s ."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 98
    invoke-static {v1, v2, v3}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 99
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static e()Lo/pn;
    .locals 6

    .line 40
    sget-object v0, Lo/pn;->d:Lo/pn;

    if-nez v0, :cond_1

    .line 41
    invoke-static {}, Lo/adI;->b()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lo/pn;->b:Lcom/google/gson/Gson;

    .line 42
    const-class v0, Landroid/content/Context;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "device_error_info"

    invoke-static {v0, v2, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v4, "DevicePlaybackErrorInfo"

    const-string v5, "restore persisted Data %s ."

    .line 43
    invoke-static {v4, v5, v2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 44
    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    :try_start_0
    sget-object v2, Lo/pn;->b:Lcom/google/gson/Gson;

    const-class v5, Lo/pn;

    invoke-virtual {v2, v0, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/pn;

    sput-object v0, Lo/pn;->d:Lo/pn;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const-string v0, "has JsonSyntaxException %s ."

    .line 49
    invoke-static {v4, v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 53
    :cond_0
    :goto_0
    sget-object v0, Lo/pn;->d:Lo/pn;

    if-nez v0, :cond_1

    .line 54
    new-instance v0, Lo/pn;

    invoke-direct {v0}, Lo/pn;-><init>()V

    sput-object v0, Lo/pn;->d:Lo/pn;

    .line 57
    :cond_1
    sget-object v0, Lo/pn;->d:Lo/pn;

    return-object v0
.end method

.method private j()V
    .locals 2

    .line 103
    monitor-enter p0

    .line 104
    :try_start_0
    const-class v0, Landroid/content/Context;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "device_error_info"

    invoke-static {v0, v1}, Lo/aer;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized c()V
    .locals 1

    monitor-enter p0

    .line 83
    :try_start_0
    iget v0, p0, Lo/pn;->errorCount:I

    if-eqz v0, :cond_0

    .line 84
    invoke-direct {p0}, Lo/pn;->j()V

    :cond_0
    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lo/pn;->errorMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 87
    iput v0, p0, Lo/pn;->errorCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()I
    .locals 1

    .line 91
    iget v0, p0, Lo/pn;->errorCount:I

    return v0
.end method

.method public declared-synchronized e(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 68
    :try_start_0
    iget-object v0, p0, Lo/pn;->errorMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/pn;->errorMap:Ljava/util/Map;

    .line 72
    :cond_0
    iget-object v0, p0, Lo/pn;->errorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 74
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 76
    :cond_1
    iget v1, p0, Lo/pn;->errorCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lo/pn;->errorCount:I

    .line 77
    iget-object v1, p0, Lo/pn;->errorMap:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-direct {p0}, Lo/pn;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
