.class public Lo/zh;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:I


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Lo/zh;->e:I

    .line 76
    iput-object p2, p0, Lo/zh;->b:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lo/zh;->d:Ljava/lang/String;

    .line 78
    iput-object p4, p0, Lo/zh;->c:Ljava/lang/String;

    .line 79
    iput-boolean p5, p0, Lo/zh;->a:Z

    return-void
.end method

.method public static e(Lo/ExitTransitionCoordinator;Lcom/android/volley/VolleyError;)Lo/zh;
    .locals 6

    .line 24
    invoke-static {p1}, Lo/zr;->a(Lcom/android/volley/VolleyError;)I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x5

    if-eq v1, v0, :cond_0

    .line 26
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 27
    new-instance p0, Lo/zh;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lo/zh;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p0

    :cond_0
    if-eqz p0, :cond_2

    .line 31
    iget p1, p0, Lo/ExitTransitionCoordinator;->d:I

    const/16 v0, 0x190

    if-lt p1, v0, :cond_2

    .line 32
    iget-object p1, p0, Lo/ExitTransitionCoordinator;->a:Ljava/util/Map;

    const-string v0, "X-FTL-Error"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 35
    iget p1, p0, Lo/ExitTransitionCoordinator;->d:I

    const/16 v0, 0x1a2

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    const/4 v5, 0x0

    .line 36
    :goto_0
    iget-object p1, p0, Lo/ExitTransitionCoordinator;->a:Ljava/util/Map;

    const-string v0, "Via"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    .line 37
    new-instance p1, Lo/zh;

    iget v1, p0, Lo/ExitTransitionCoordinator;->d:I

    const/4 v4, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lo/zh;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
