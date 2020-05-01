.class Lo/r$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/r;->b(Lo/np;Ljava/util/Map;Lo/r$Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/np;

.field final synthetic c:Lo/r$Application;

.field final synthetic d:Lo/r;

.field final synthetic e:Ljava/util/Map;


# direct methods
.method constructor <init>(Lo/r;Lo/np;Ljava/util/Map;Lo/r$Application;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lo/r$2;->d:Lo/r;

    iput-object p2, p0, Lo/r$2;->b:Lo/np;

    iput-object p3, p0, Lo/r$2;->e:Ljava/util/Map;

    iput-object p4, p0, Lo/r$2;->c:Lo/r$Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 130
    iget-object v0, p0, Lo/r$2;->b:Lo/np;

    const-class v1, Lo/P;

    invoke-virtual {v0, v1}, Lo/np;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lo/r$2;->b:Lo/np;

    new-instance v1, Lcom/netflix/mediaclient/net/RequestMetricsMarker;

    sget-object v2, Lcom/netflix/mediaclient/net/RequestMetricsMarker$Type;->e:Lcom/netflix/mediaclient/net/RequestMetricsMarker$Type;

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/net/RequestMetricsMarker;-><init>(Lcom/netflix/mediaclient/net/RequestMetricsMarker$Type;)V

    invoke-virtual {v0, v1}, Lo/np;->c(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 139
    :goto_0
    :try_start_0
    iget-object v2, p0, Lo/r$2;->b:Lo/np;

    iget-object v3, p0, Lo/r$2;->e:Ljava/util/Map;

    invoke-virtual {v2, v3}, Lo/np;->b(Ljava/util/Map;)[B

    move-result-object v2

    .line 140
    sget-object v3, Lo/H;->b:Ljava/util/concurrent/Executor;

    new-instance v4, Lo/r$2$3;

    invoke-direct {v4, p0, v2}, Lo/r$2$3;-><init>(Lo/r$2;[B)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v1

    const/4 v1, 0x0

    goto :goto_4

    :catch_0
    move-exception v2

    move-object v4, v2

    const/4 v3, 0x0

    :goto_1
    const/16 v5, 0xa

    const/4 v6, 0x1

    if-ge v3, v5, :cond_5

    if-eqz v4, :cond_5

    .line 151
    instance-of v5, v4, Lorg/chromium/net/CronetException;

    if-eqz v5, :cond_3

    .line 152
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljava/net/HttpRetryException;

    if-eqz v3, :cond_2

    add-int/lit8 v3, v1, 0x1

    const/4 v5, 0x6

    if-ge v1, v5, :cond_1

    const/4 v1, 0x1

    goto :goto_3

    :cond_1
    move v1, v3

    .line 157
    :cond_2
    iget-object v3, p0, Lo/r$2;->c:Lo/r$Application;

    new-instance v5, Lcom/android/volley/VolleyError;

    invoke-direct {v5, v4}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v3, v5}, Lo/r$Application;->b(Lcom/android/volley/VolleyError;)V

    goto :goto_2

    .line 162
    :cond_3
    instance-of v5, v4, Lcom/android/volley/VolleyError;

    if-eqz v5, :cond_4

    .line 163
    iget-object v3, p0, Lo/r$2;->c:Lo/r$Application;

    check-cast v4, Lcom/android/volley/VolleyError;

    invoke-virtual {v3, v4}, Lo/r$Application;->b(Lcom/android/volley/VolleyError;)V

    :goto_2
    move v3, v1

    const/4 v1, 0x0

    goto :goto_3

    .line 167
    :cond_4
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    move v3, v1

    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_3
    if-nez v6, :cond_6

    .line 170
    iget-object v4, p0, Lo/r$2;->c:Lo/r$Application;

    new-instance v5, Lcom/android/volley/VolleyError;

    invoke-direct {v5, v2}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Lo/r$Application;->b(Lcom/android/volley/VolleyError;)V

    :cond_6
    :goto_4
    if-nez v1, :cond_7

    return-void

    :cond_7
    move v1, v3

    goto :goto_0
.end method
