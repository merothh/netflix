.class public final Lo/as;
.super Lo/at;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/as$ActionBar;
    }
.end annotation


# static fields
.field public static final a:Lo/as$ActionBar;


# instance fields
.field private c:Landroid/app/ActivityManager$MemoryInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/as$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/as$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/as;->a:Lo/as$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 16
    sget-object v1, Lcom/netflix/mediaclient/performance/api/capture/CaptureType;->e:Lcom/netflix/mediaclient/performance/api/capture/CaptureType;

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lo/at;-><init>(Lcom/netflix/mediaclient/performance/api/capture/CaptureType;JILo/amc;)V

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    .line 41
    iget-object v0, p0, Lo/as;->c:Landroid/app/ActivityManager$MemoryInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()V
    .locals 2

    .line 29
    sget-object v0, Lo/as;->a:Lo/as$ActionBar;

    check-cast v0, Lo/MessagePdu;

    .line 30
    invoke-super {p0}, Lo/at;->e()V

    .line 31
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    iput-object v0, p0, Lo/as;->c:Landroid/app/ActivityManager$MemoryInfo;

    .line 33
    sget-object v0, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 66
    const-class v0, Landroid/content/Context;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "activity"

    .line 33
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/app/ActivityManager;

    .line 34
    iget-object v1, p0, Lo/as;->c:Landroid/app/ActivityManager$MemoryInfo;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 36
    sget-object v0, Lo/as;->a:Lo/as$ActionBar;

    check-cast v0, Lo/MessagePdu;

    return-void

    .line 33
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 6

    .line 45
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 46
    iget-object v1, p0, Lo/as;->c:Landroid/app/ActivityManager$MemoryInfo;

    if-eqz v1, :cond_0

    .line 47
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 48
    iget-wide v3, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-string v5, "sAvailMem"

    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 49
    iget-wide v3, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const-string v5, "sTotalMem"

    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 50
    iget-boolean v1, v1, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    const-string v3, "sLowMem"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "systemMemInfo"

    .line 51
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-object v0
.end method
