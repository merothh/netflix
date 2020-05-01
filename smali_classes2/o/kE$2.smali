.class Lo/kE$2;
.super Lcom/android/volley/Request;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/kE;->b(Ljava/lang/String;Lo/aiW$TaskDescription;)V
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

.field final synthetic e:Lo/aiW$TaskDescription;


# direct methods
.method constructor <init>(Lo/kE;ILjava/lang/String;Lo/FragmentManagerNonConfig$Activity;Lo/aiW$TaskDescription;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lo/kE$2;->b:Lo/kE;

    iput-object p5, p0, Lo/kE$2;->e:Lo/aiW$TaskDescription;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lo/FragmentManagerNonConfig$Activity;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lo/kE$2;->d(Ljava/lang/Void;)V

    return-void
.end method

.method protected d(Ljava/lang/Void;)V
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

    .line 34
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lo/ExitTransitionCoordinator;->c:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 36
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

    .line 38
    iget-object v2, p0, Lo/kE$2;->e:Lo/aiW$TaskDescription;

    invoke-interface {v2, v1}, Lo/aiW$TaskDescription;->e(Ljava/lang/Exception;)V

    .line 41
    :goto_0
    iget-object v1, p0, Lo/kE$2;->e:Lo/aiW$TaskDescription;

    iget v2, p1, Lo/ExitTransitionCoordinator;->d:I

    iget-object v3, p1, Lo/ExitTransitionCoordinator;->a:Ljava/util/Map;

    invoke-interface {v1, v2, v3, v0}, Lo/aiW$TaskDescription;->e(ILjava/util/Map;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 42
    invoke-static {p1}, Lo/LauncherActivity;->e(Lo/ExitTransitionCoordinator;)Lo/ContextImpl$StateListAnimator;

    move-result-object p1

    invoke-static {v0, p1}, Lo/FragmentManagerNonConfig;->b(Ljava/lang/Object;Lo/ContextImpl$StateListAnimator;)Lo/FragmentManagerNonConfig;

    move-result-object p1

    return-object p1
.end method
