.class public final Lo/cd$Activity;
.super Lo/cg;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/cd;->b(Ljava/lang/String;Ljava/lang/String;Lo/cb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/cb;

.field final synthetic b:Lo/cd;


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

    .line 126
    iput-object p1, p0, Lo/cd$Activity;->b:Lo/cd;

    iput-object p2, p0, Lo/cd$Activity;->a:Lo/cb;

    invoke-direct {p0}, Lo/cg;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;Lcom/netflix/mediaclient/android/app/Status;I)V
    .locals 6

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-static {}, Lo/cd;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v3

    const-string v4, "res.statusCode"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "onDataFetched statusCode=%d"

    invoke-static {v0, v3, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 130
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    .line 131
    :cond_0
    invoke-static {}, Lo/cd;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p2, v3, v4

    aput-object p1, v3, v1

    const-string v5, "error in fetching Moneyball data status: %s, moneyballData: %s"

    invoke-static {v0, v5, v3}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 133
    iget-object v0, p0, Lo/cd$Activity;->b:Lo/cd;

    invoke-static {v0}, Lo/cd;->b(Lo/cd;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    sget-object v0, Lo/amj;->c:Lo/amj;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v4

    if-eqz p1, :cond_1

    move-object v2, p1

    goto :goto_0

    :cond_1
    const-string v2, ""

    :goto_0
    aput-object v2, v0, v1

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "status= %s, moneyballData= %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.String.format(format, *args)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    invoke-interface {v1, v0}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    .line 139
    :cond_2
    iget-object v0, p0, Lo/cd$Activity;->a:Lo/cb;

    if-eqz v0, :cond_3

    .line 140
    iget-object v0, p0, Lo/cd$Activity;->b:Lo/cd;

    invoke-static {v0, p1}, Lo/cd;->e(Lo/cd;Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;)V

    .line 141
    iget-object v0, p0, Lo/cd$Activity;->a:Lo/cb;

    invoke-interface {v0, p1, p2, p3}, Lo/cb;->onDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;Lcom/netflix/mediaclient/android/app/Status;I)V

    :cond_3
    return-void
.end method
