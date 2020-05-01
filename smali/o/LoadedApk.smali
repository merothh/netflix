.class public Lo/LoadedApk;
.super Lo/LocalActivityManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/LocalActivityManager<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/json/JSONObject;Lo/FragmentManagerNonConfig$StateListAnimator;Lo/FragmentManagerNonConfig$Activity;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lo/FragmentManagerNonConfig$StateListAnimator<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lo/FragmentManagerNonConfig$Activity;",
            ")V"
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_0
    move-object v3, p3

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lo/LocalActivityManager;-><init>(ILjava/lang/String;Ljava/lang/String;Lo/FragmentManagerNonConfig$StateListAnimator;Lo/FragmentManagerNonConfig$Activity;)V

    return-void
.end method


# virtual methods
.method public e(Lo/ExitTransitionCoordinator;)Lo/FragmentManagerNonConfig;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExitTransitionCoordinator;",
            ")",
            "Lo/FragmentManagerNonConfig<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 66
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lo/ExitTransitionCoordinator;->c:[B

    iget-object v2, p1, Lo/ExitTransitionCoordinator;->a:Ljava/util/Map;

    .line 67
    invoke-static {v2}, Lo/LauncherActivity;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 68
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-static {p1}, Lo/LauncherActivity;->e(Lo/ExitTransitionCoordinator;)Lo/ContextImpl$StateListAnimator;

    move-result-object p1

    .line 68
    invoke-static {v1, p1}, Lo/FragmentManagerNonConfig;->b(Ljava/lang/Object;Lo/ContextImpl$StateListAnimator;)Lo/FragmentManagerNonConfig;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 73
    new-instance v0, Lcom/android/volley/ParseError;

    invoke-direct {v0, p1}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lo/FragmentManagerNonConfig;->a(Lcom/android/volley/VolleyError;)Lo/FragmentManagerNonConfig;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    .line 71
    new-instance v0, Lcom/android/volley/ParseError;

    invoke-direct {v0, p1}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lo/FragmentManagerNonConfig;->a(Lcom/android/volley/VolleyError;)Lo/FragmentManagerNonConfig;

    move-result-object p1

    return-object p1
.end method
