.class public final Lo/cd$TaskDescription;
.super Lo/cg;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/cd;->b(Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballCallData;Lo/cb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/cd;

.field final synthetic c:Lo/cb;


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

    .line 155
    iput-object p1, p0, Lo/cd$TaskDescription;->a:Lo/cd;

    iput-object p2, p0, Lo/cd$TaskDescription;->c:Lo/cb;

    invoke-direct {p0}, Lo/cg;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;Lcom/netflix/mediaclient/android/app/Status;I)V
    .locals 6

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    .line 159
    :cond_0
    invoke-static {}, Lo/cd;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v4, 0x1

    aput-object p1, v2, v4

    const-string v5, "error in calling moneyball next. status: %s, auiData %s"

    invoke-static {v0, v5, v2}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 160
    iget-object v0, p0, Lo/cd$TaskDescription;->a:Lo/cd;

    invoke-static {v0}, Lo/cd;->b(Lo/cd;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    sget-object v0, Lo/amj;->c:Lo/amj;

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p2, v0, v3

    if-eqz p1, :cond_1

    move-object v1, p1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    aput-object v1, v0, v4

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "status= %s, auiData= %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.String.format(format, *args)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    invoke-interface {v1, v0}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    .line 166
    :cond_2
    iget-object v0, p0, Lo/cd$TaskDescription;->c:Lo/cb;

    if-eqz v0, :cond_3

    .line 167
    iget-object v0, p0, Lo/cd$TaskDescription;->a:Lo/cd;

    invoke-static {v0, p1}, Lo/cd;->e(Lo/cd;Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;)V

    .line 168
    iget-object v0, p0, Lo/cd$TaskDescription;->c:Lo/cb;

    invoke-interface {v0, p1, p2, p3}, Lo/cb;->onDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;Lcom/netflix/mediaclient/android/app/Status;I)V

    :cond_3
    return-void
.end method
