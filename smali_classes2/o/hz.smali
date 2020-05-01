.class abstract Lo/hz;
.super Lo/zn;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/zn<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lo/zn;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lo/zn;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public b(Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;)V
    .locals 1

    .line 26
    iput-object p1, p0, Lo/hz;->j:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    .line 27
    iget-object p1, p0, Lo/hz;->j:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/hz;->j(Ljava/lang/String;)V

    return-void
.end method
