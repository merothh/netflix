.class public abstract Lo/qs;
.super Lo/nr;
.source ""


# static fields
.field protected static final D:Ljava/lang/String;


# instance fields
.field protected B:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    sget-object v0, Lo/pM;->c:Ljava/lang/String;

    sput-object v0, Lo/qs;->D:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lo/nr;-><init>()V

    .line 28
    iput-object p1, p0, Lo/qs;->B:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected b(Lo/agE;)Lorg/json/JSONObject;
    .locals 2

    .line 36
    invoke-virtual {p1}, Lo/agE;->d()Ljava/lang/String;

    move-result-object p1

    .line 42
    invoke-static {p1}, Lo/qs;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    invoke-virtual {p0, p1}, Lo/qs;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 43
    :cond_0
    sget-object v0, Lo/qs;->D:Ljava/lang/String;

    const-string v1, "User is not authorized, trying recovery..."

    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v0, Lcom/netflix/falkor/FalkorException;

    invoke-direct {v0, p1}, Lcom/netflix/falkor/FalkorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected synthetic c(Lo/agE;)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lo/qs;->b(Lo/agE;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
