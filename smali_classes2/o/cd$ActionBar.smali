.class public final Lo/cd$ActionBar;
.super Lo/cg;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/cd;->b(Ljava/util/List;Lo/cb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/cb;

.field final synthetic e:Lo/cd;


# direct methods
.method constructor <init>(Lo/cd;Lo/cb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/cb;",
            ")V"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lo/cd$ActionBar;->e:Lo/cd;

    iput-object p2, p0, Lo/cd$ActionBar;->a:Lo/cb;

    invoke-direct {p0}, Lo/cg;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;Lcom/netflix/mediaclient/android/app/Status;I)V
    .locals 4

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-static {}, Lo/cd;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    const-string v3, "res.statusCode"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "onDataFetched statusCode=%d"

    invoke-static {v0, v2, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 105
    iget-object v0, p0, Lo/cd$ActionBar;->e:Lo/cd;

    invoke-static {v0, p2}, Lo/cd;->d(Lo/cd;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 107
    iget-object p2, p0, Lo/cd$ActionBar;->a:Lo/cb;

    if-eqz p2, :cond_0

    .line 108
    iget-object p2, p0, Lo/cd$ActionBar;->e:Lo/cd;

    invoke-static {p2, p1}, Lo/cd;->e(Lo/cd;Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;)V

    .line 109
    iget-object p2, p0, Lo/cd$ActionBar;->a:Lo/cb;

    iget-object v0, p0, Lo/cd$ActionBar;->e:Lo/cd;

    invoke-static {v0}, Lo/cd;->a(Lo/cd;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    invoke-interface {p2, p1, v0, p3}, Lo/cb;->onDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;Lcom/netflix/mediaclient/android/app/Status;I)V

    :cond_0
    return-void
.end method
