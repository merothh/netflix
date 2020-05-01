.class public abstract Lo/at;
.super Lo/aj;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/at$TaskDescription;
    }
.end annotation


# static fields
.field public static final e:Lo/at$TaskDescription;


# instance fields
.field private final a:Lo/am;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/aq;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Runnable;

.field private final d:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/at$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/at$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/at;->e:Lo/at$TaskDescription;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/performance/api/capture/CaptureType;J)V
    .locals 1

    const-string v0, "captureType"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1}, Lo/aj;-><init>(Lcom/netflix/mediaclient/performance/api/capture/CaptureType;)V

    iput-wide p2, p0, Lo/at;->d:J

    .line 27
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lo/at;->b:Ljava/util/Map;

    .line 29
    sget-object p1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 147
    const-class p1, Lo/am;

    invoke-static {p1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/am;

    iput-object p1, p0, Lo/at;->a:Lo/am;

    .line 37
    new-instance p1, Lo/at$4;

    invoke-direct {p1, p0}, Lo/at$4;-><init>(Lo/at;)V

    check-cast p1, Ljava/lang/Runnable;

    iput-object p1, p0, Lo/at;->c:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/netflix/mediaclient/performance/api/capture/CaptureType;JILo/amc;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/32 p2, 0xea60

    .line 16
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lo/at;-><init>(Lcom/netflix/mediaclient/performance/api/capture/CaptureType;J)V

    return-void
.end method

.method public static final synthetic b(Lo/at;)Lo/am;
    .locals 0

    .line 16
    iget-object p0, p0, Lo/at;->a:Lo/am;

    return-object p0
.end method

.method public static final synthetic e(Lo/at;)J
    .locals 2

    .line 16
    iget-wide v0, p0, Lo/at;->d:J

    return-wide v0
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 68
    invoke-super {p0}, Lo/aj;->b()V

    .line 70
    sget-object v0, Lo/at;->e:Lo/at$TaskDescription;

    check-cast v0, Lo/MessagePdu;

    .line 71
    iget-object v0, p0, Lo/at;->a:Lo/am;

    invoke-virtual {v0}, Lo/am;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lo/at;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()Z
    .locals 3

    .line 96
    iget-object v0, p0, Lo/at;->b:Ljava/util/Map;

    .line 140
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 96
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/aq;

    invoke-interface {v1}, Lo/aq;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_2
    :goto_0
    return v2
.end method

.method public final d()V
    .locals 2

    .line 58
    invoke-super {p0}, Lo/aj;->d()V

    .line 60
    sget-object v0, Lo/at;->e:Lo/at$TaskDescription;

    check-cast v0, Lo/MessagePdu;

    .line 61
    iget-object v0, p0, Lo/at;->a:Lo/am;

    invoke-virtual {v0}, Lo/am;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lo/at;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public e(Ljava/lang/String;F)V
    .locals 2

    const-string v0, "captureName"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "PerformanceCapture"

    .line 79
    invoke-static {v0}, Lo/aeB;->e(Ljava/lang/String;)Z

    .line 81
    iget-object v0, p0, Lo/at;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/aq;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lo/ap;

    invoke-direct {v0, p1}, Lo/ap;-><init>(Ljava/lang/String;)V

    check-cast v0, Lo/aq;

    .line 86
    iget-object v1, p0, Lo/at;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_0
    invoke-interface {v0, p2}, Lo/aq;->b(F)V

    return-void
.end method

.method public j()V
    .locals 2

    const-string v0, "PerformanceCapture"

    .line 117
    invoke-static {v0}, Lo/aeB;->e(Ljava/lang/String;)Z

    .line 119
    iget-object v0, p0, Lo/at;->b:Ljava/util/Map;

    .line 145
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 120
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/aq;

    invoke-interface {v1}, Lo/aq;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4

    .line 103
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 104
    iget-object v1, p0, Lo/at;->b:Ljava/util/Map;

    .line 143
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 105
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/aq;

    invoke-interface {v3}, Lo/aq;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/aq;

    invoke-interface {v2}, Lo/aq;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    return-object v0
.end method
