.class public Lo/Gu;
.super Lo/Gf;
.source ""


# instance fields
.field private a:Lcom/netflix/mediaclient/StatusCode;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/StatusCode;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lo/Gf;-><init>()V

    .line 14
    iput-object p1, p0, Lo/Gu;->a:Lcom/netflix/mediaclient/StatusCode;

    return-void
.end method

.method static d(Lcom/netflix/mediaclient/StatusCode;)Z
    .locals 1

    .line 31
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->cG:Lcom/netflix/mediaclient/StatusCode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->cI:Lcom/netflix/mediaclient/StatusCode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/Throwable;)Lo/hR;
    .locals 2

    .line 25
    sget-object v0, Lo/Gu;->c:Ljava/lang/String;

    const-string v1, "Device is unable to download offline content using Widevine after OS upgrade, report an error"

    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-virtual {p0, p1, p2}, Lo/Gu;->c(Landroid/content/Context;Ljava/lang/Throwable;)Lo/hR;

    move-result-object p1

    return-object p1
.end method

.method e()Lcom/netflix/mediaclient/StatusCode;
    .locals 1

    .line 19
    iget-object v0, p0, Lo/Gu;->a:Lcom/netflix/mediaclient/StatusCode;

    return-object v0
.end method
