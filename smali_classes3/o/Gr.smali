.class Lo/Gr;
.super Lo/Gf;
.source ""


# instance fields
.field private a:Lcom/netflix/mediaclient/StatusCode;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/StatusCode;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lo/Gf;-><init>()V

    .line 25
    iput-object p1, p0, Lo/Gr;->a:Lcom/netflix/mediaclient/StatusCode;

    return-void
.end method

.method static c(Lcom/netflix/mediaclient/StatusCode;)Z
    .locals 1

    .line 56
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->av:Lcom/netflix/mediaclient/StatusCode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->ax:Lcom/netflix/mediaclient/StatusCode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->aw:Lcom/netflix/mediaclient/StatusCode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->as:Lcom/netflix/mediaclient/StatusCode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->ay:Lcom/netflix/mediaclient/StatusCode;

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
    .locals 1

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    invoke-static {}, Lo/dd;->c()Lo/dc;

    move-result-object v0

    invoke-interface {v0}, Lo/dc;->x_()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget-object v0, p0, Lo/Gr;->a:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    .line 46
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/Gr;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method e()Lcom/netflix/mediaclient/StatusCode;
    .locals 1

    .line 30
    iget-object v0, p0, Lo/Gr;->a:Lcom/netflix/mediaclient/StatusCode;

    return-object v0
.end method
