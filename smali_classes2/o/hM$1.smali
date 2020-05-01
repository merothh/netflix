.class Lo/hM$1;
.super Lo/cW;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/hM;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/hM;

.field final synthetic b:Lo/bX;


# direct methods
.method constructor <init>(Lo/hM;Lo/bX;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lo/hM$1;->a:Lo/hM;

    iput-object p2, p0, Lo/hM$1;->b:Lo/bX;

    invoke-direct {p0}, Lo/cW;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 196
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result v0

    .line 197
    iget-object v1, p0, Lo/hM$1;->b:Lo/bX;

    invoke-virtual {v1, v0}, Lo/bX;->d(I)V

    .line 198
    iget-object v1, p0, Lo/hM$1;->b:Lo/bX;

    invoke-virtual {v1, v0}, Lo/bX;->e(I)V

    .line 199
    iget-object v0, p0, Lo/hM$1;->b:Lo/bX;

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p1

    invoke-virtual {v0, p1}, Lo/bX;->b(Z)V

    .line 200
    iget-object p1, p0, Lo/hM$1;->b:Lo/bX;

    sget-object v0, Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;->d:Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;

    invoke-virtual {p1, v0}, Lo/bX;->b(Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;)V

    .line 203
    iget-object p1, p0, Lo/hM$1;->a:Lo/hM;

    invoke-static {p1}, Lo/hM;->c(Lo/hM;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    .line 204
    iget-object p1, p0, Lo/hM$1;->a:Lo/hM;

    invoke-static {p1}, Lo/hM;->c(Lo/hM;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/bX;

    invoke-static {p1, v0}, Lo/hM;->e(Lo/hM;Lo/bX;)V

    :cond_0
    return-void
.end method
