.class abstract Lo/cf;
.super Lo/bZ;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/bZ<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static n:Ljava/lang/String; = "aui"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lo/cz;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lo/bZ;-><init>(Landroid/content/Context;Lo/cz;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lo/cz;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lo/bZ;-><init>(Landroid/content/Context;Lo/cz;I)V

    return-void
.end method


# virtual methods
.method protected K()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected U()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;)V
    .locals 1

    .line 27
    check-cast p1, Lcom/netflix/mediaclient/service/webclient/AUIApiEndpointRegistry;

    iput-object p1, p0, Lo/cf;->e:Lcom/netflix/mediaclient/service/webclient/AUIApiEndpointRegistry;

    .line 28
    iget-object p1, p0, Lo/cf;->e:Lcom/netflix/mediaclient/service/webclient/AUIApiEndpointRegistry;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/service/webclient/AUIApiEndpointRegistry;->a(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/cf;->j(Ljava/lang/String;)V

    return-void
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    .line 33
    sget-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->f:Lcom/netflix/mediaclient/net/NetworkRequestType;

    return-object v0
.end method
