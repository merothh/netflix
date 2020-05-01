.class public Lo/kE;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/TimerStat;


# instance fields
.field private final c:Landroid/content/Context;

.field private final e:Lo/FragmentHostCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lo/kE;->c:Landroid/content/Context;

    const-string v0, "MDX DIAL Queue"

    .line 26
    invoke-static {p1, v0}, Lo/NativeActivity;->e(Landroid/content/Context;Ljava/lang/String;)Lo/FragmentHostCallback;

    move-result-object p1

    iput-object p1, p0, Lo/kE;->e:Lo/FragmentHostCallback;

    return-void
.end method

.method static synthetic a(Lo/aiW$TaskDescription;Lcom/android/volley/VolleyError;)V
    .locals 0

    invoke-static {p0, p1}, Lo/kE;->e(Lo/aiW$TaskDescription;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method private c(Lo/aiW$TaskDescription;)Lo/FragmentManagerNonConfig$Activity;
    .locals 1

    .line 96
    new-instance v0, Lo/kM;

    invoke-direct {v0, p1}, Lo/kM;-><init>(Lo/aiW$TaskDescription;)V

    return-object v0
.end method

.method private static synthetic e(Lo/aiW$TaskDescription;Lcom/android/volley/VolleyError;)V
    .locals 6

    .line 97
    iget-object v0, p1, Lcom/android/volley/VolleyError;->e:Lo/ExitTransitionCoordinator;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 101
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, v0, Lo/ExitTransitionCoordinator;->c:[B

    iget-object v3, v0, Lo/ExitTransitionCoordinator;->a:Ljava/util/Map;

    invoke-static {v3}, Lo/LauncherActivity;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\""

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "VolleyHttpClient"

    const-string v3, "Failed to parse body - unsupported encoding"

    .line 103
    invoke-static {v2, v3, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    :goto_0
    iget v1, v0, Lo/ExitTransitionCoordinator;->d:I

    iget-object v0, v0, Lo/ExitTransitionCoordinator;->a:Ljava/util/Map;

    invoke-interface {p0, v1, v0, p1}, Lo/aiW$TaskDescription;->e(ILjava/util/Map;Ljava/lang/String;)V

    return-void

    .line 115
    :cond_0
    invoke-interface {p0, p1}, Lo/aiW$TaskDescription;->e(Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Lo/aiW$TaskDescription;)V
    .locals 8

    .line 31
    iget-object v0, p0, Lo/kE;->e:Lo/FragmentHostCallback;

    new-instance v7, Lo/kE$2;

    invoke-direct {p0, p2}, Lo/kE;->c(Lo/aiW$TaskDescription;)Lo/FragmentManagerNonConfig$Activity;

    move-result-object v5

    const/4 v3, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lo/kE$2;-><init>(Lo/kE;ILjava/lang/String;Lo/FragmentManagerNonConfig$Activity;Lo/aiW$TaskDescription;)V

    invoke-virtual {v0, v7}, Lo/FragmentHostCallback;->a(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Lo/aiW$TaskDescription;)V
    .locals 9

    .line 57
    iget-object v0, p0, Lo/kE;->e:Lo/FragmentHostCallback;

    new-instance v8, Lo/kE$5;

    invoke-direct {p0, p3}, Lo/kE;->c(Lo/aiW$TaskDescription;)Lo/FragmentManagerNonConfig$Activity;

    move-result-object v5

    const/4 v3, 0x1

    move-object v1, v8

    move-object v2, p0

    move-object v4, p1

    move-object v6, p3

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lo/kE$5;-><init>(Lo/kE;ILjava/lang/String;Lo/FragmentManagerNonConfig$Activity;Lo/aiW$TaskDescription;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lo/FragmentHostCallback;->a(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public c(Ljava/lang/String;Lo/aiW$TaskDescription;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, p1, v0, p2}, Lo/kE;->c(Ljava/lang/String;Ljava/lang/String;Lo/aiW$TaskDescription;)V

    return-void
.end method
