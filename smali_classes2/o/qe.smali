.class public abstract Lo/qe;
.super Lo/ng;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/ng<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# static fields
.field protected static final d:Ljava/lang/String;


# instance fields
.field protected b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    sget-object v0, Lo/pM;->c:Ljava/lang/String;

    sput-object v0, Lo/qe;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lo/ng;-><init>()V

    .line 25
    iput-object p1, p0, Lo/qe;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected b(Lo/agE;)Lorg/json/JSONObject;
    .locals 2

    .line 33
    invoke-virtual {p1}, Lo/agE;->d()Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-static {p1}, Lo/qe;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    invoke-virtual {p0, p1}, Lo/qe;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 40
    :cond_0
    sget-object v0, Lo/qe;->d:Ljava/lang/String;

    const-string v1, "User is not authorized, trying recovery..."

    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v0, Lcom/netflix/falkor/FalkorException;

    invoke-direct {v0, p1}, Lcom/netflix/falkor/FalkorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected synthetic c(Lo/agE;)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lo/qe;->b(Lo/agE;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method protected c(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 51
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 53
    sget-object v0, Lo/qe;->d:Ljava/lang/String;

    const-string v1, "error parsing json"

    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected synthetic g(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lo/qe;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
