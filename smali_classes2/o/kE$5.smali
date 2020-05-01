.class Lo/kE$5;
.super Lcom/android/volley/Request;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/kE;->c(Ljava/lang/String;Ljava/lang/String;Lo/aiW$TaskDescription;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/Request<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/kE;

.field final synthetic d:Lo/aiW$TaskDescription;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/kE;ILjava/lang/String;Lo/FragmentManagerNonConfig$Activity;Lo/aiW$TaskDescription;Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lo/kE$5;->b:Lo/kE;

    iput-object p5, p0, Lo/kE$5;->d:Lo/aiW$TaskDescription;

    iput-object p6, p0, Lo/kE$5;->e:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lo/FragmentManagerNonConfig$Activity;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 57
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lo/kE$5;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method public e(Lo/ExitTransitionCoordinator;)Lo/FragmentManagerNonConfig;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExitTransitionCoordinator;",
            ")",
            "Lo/FragmentManagerNonConfig<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lo/ExitTransitionCoordinator;->c:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 62
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p1, Lo/ExitTransitionCoordinator;->c:[B

    iget-object v3, p1, Lo/ExitTransitionCoordinator;->a:Ljava/util/Map;

    invoke-static {v3}, Lo/LauncherActivity;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\""

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 64
    iget-object v2, p0, Lo/kE$5;->d:Lo/aiW$TaskDescription;

    invoke-interface {v2, v1}, Lo/aiW$TaskDescription;->e(Ljava/lang/Exception;)V

    .line 67
    :goto_0
    iget-object v1, p0, Lo/kE$5;->d:Lo/aiW$TaskDescription;

    iget v2, p1, Lo/ExitTransitionCoordinator;->d:I

    iget-object v3, p1, Lo/ExitTransitionCoordinator;->a:Ljava/util/Map;

    invoke-interface {v1, v2, v3, v0}, Lo/aiW$TaskDescription;->e(ILjava/util/Map;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 68
    invoke-static {p1}, Lo/LauncherActivity;->e(Lo/ExitTransitionCoordinator;)Lo/ContextImpl$StateListAnimator;

    move-result-object p1

    invoke-static {v0, p1}, Lo/FragmentManagerNonConfig;->b(Ljava/lang/Object;Lo/ContextImpl$StateListAnimator;)Lo/FragmentManagerNonConfig;

    move-result-object p1

    return-object p1
.end method

.method public q()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Content-Type"

    const-string v2, "text/plain; charset=utf-8"

    .line 83
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public v()[B
    .locals 2

    .line 90
    iget-object v0, p0, Lo/kE$5;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    const-string v0, "text/plain; charset=utf-8"

    return-object v0
.end method
