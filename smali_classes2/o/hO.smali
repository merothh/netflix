.class public abstract Lo/hO;
.super Lo/hN;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/hN<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lo/hO;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/hO;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lo/hN;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;)V

    .line 35
    iput-object p3, p0, Lo/hO;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lo/hO;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lo/hO;->d:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected a()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 3

    .line 42
    iget-object v0, p0, Lo/hO;->c:Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;->a:Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    if-ne v0, v1, :cond_0

    .line 44
    sget-object v0, Lo/hO;->a:Ljava/lang/String;

    const-string v1, "Create MSL transport for"

    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance v0, Lo/hO$1;

    invoke-direct {v0, p0}, Lo/hO$1;-><init>(Lo/hO;)V

    goto :goto_0

    .line 121
    :cond_0
    iget-object v0, p0, Lo/hO;->c:Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;->c:Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    if-ne v0, v1, :cond_1

    .line 123
    sget-object v0, Lo/hO;->a:Ljava/lang/String;

    const-string v1, "Create Web transport for"

    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v0, Lo/hO$2;

    iget-object v1, p0, Lo/hO;->e:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lo/hO$2;-><init>(Lo/hO;Landroid/content/Context;)V

    :goto_0
    return-object v0

    .line 227
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uknown transport type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/hO;->c:Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
