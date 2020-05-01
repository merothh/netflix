.class public Lo/Gn;
.super Lo/Gf;
.source ""


# static fields
.field private static a:Lcom/netflix/mediaclient/StatusCode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->aj:Lcom/netflix/mediaclient/StatusCode;

    sput-object v0, Lo/Gn;->a:Lcom/netflix/mediaclient/StatusCode;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lo/Gf;-><init>()V

    return-void
.end method

.method static d(Lcom/netflix/mediaclient/StatusCode;)Z
    .locals 1

    .line 26
    sget-object v0, Lo/Gn;->a:Lcom/netflix/mediaclient/StatusCode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/Throwable;)Lo/hR;
    .locals 2

    .line 21
    sget-object v0, Lo/Gn;->c:Ljava/lang/String;

    const-string v1, "State exception..."

    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-virtual {p0, p1, p2}, Lo/Gn;->c(Landroid/content/Context;Ljava/lang/Throwable;)Lo/hR;

    move-result-object p1

    return-object p1
.end method

.method e()Lcom/netflix/mediaclient/StatusCode;
    .locals 1

    .line 15
    sget-object v0, Lo/Gn;->a:Lcom/netflix/mediaclient/StatusCode;

    return-object v0
.end method
