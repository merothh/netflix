.class public abstract Lo/nt;
.super Lo/Instrumentation;
.source ""

# interfaces
.implements Lo/nx;


# instance fields
.field protected final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/ListActivity;)V
    .locals 0

    .line 27
    invoke-direct {p0, p2}, Lo/Instrumentation;-><init>(Lo/ListActivity;)V

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lo/nt;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/volley/Request;)Lo/ExitTransitionCoordinator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;)",
            "Lo/ExitTransitionCoordinator;"
        }
    .end annotation

    .line 38
    :try_start_0
    invoke-virtual {p0, p1}, Lo/nt;->e(Lcom/android/volley/Request;)V

    .line 39
    invoke-super {p0, p1}, Lo/Instrumentation;->c(Lcom/android/volley/Request;)Lo/ExitTransitionCoordinator;

    move-result-object v0

    .line 40
    invoke-virtual {p0, p1, v0}, Lo/nt;->c(Lcom/android/volley/Request;Lo/ExitTransitionCoordinator;)V
    :try_end_0
    .catch Lcom/android/volley/VolleyError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 43
    invoke-virtual {p0, p1, v0}, Lo/nt;->c(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    .line 44
    throw v0
.end method

.method public a(Lcom/android/volley/Request;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public c(Lcom/android/volley/Request;)Lo/ExitTransitionCoordinator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;)",
            "Lo/ExitTransitionCoordinator;"
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Lo/nt;->a(Lcom/android/volley/Request;)Lo/ExitTransitionCoordinator;

    move-result-object p1

    return-object p1
.end method

.method protected d(Lcom/android/volley/Request;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 50
    invoke-virtual {p0, p1, p2}, Lo/nt;->a(Lcom/android/volley/Request;Ljava/util/Map;)V

    return-void
.end method
