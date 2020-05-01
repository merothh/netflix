.class Lo/cG$9;
.super Lo/cW;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/cG;->d(Lo/zX;Ljava/util/List;Lo/cJ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/cG;

.field final synthetic e:Lo/cJ;


# direct methods
.method constructor <init>(Lo/cG;Lo/cJ;)V
    .locals 0

    .line 926
    iput-object p1, p0, Lo/cG$9;->d:Lo/cG;

    iput-object p2, p0, Lo/cG$9;->e:Lo/cJ;

    invoke-direct {p0}, Lo/cW;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 930
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "nf_configurationagent"

    const-string v2, "onConfigDataFetched statusCode=%d"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 931
    iget-object v0, p0, Lo/cG$9;->d:Lo/cG;

    invoke-static {v0, p2}, Lo/cG;->d(Lo/cG;Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    .line 933
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 936
    iget-object p2, p0, Lo/cG$9;->d:Lo/cG;

    invoke-static {p2, p1}, Lo/cG;->d(Lo/cG;Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    invoke-static {p2, v0}, Lo/cG;->d(Lo/cG;Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    .line 937
    sget-object p2, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    iget-object v0, p0, Lo/cG$9;->d:Lo/cG;

    invoke-static {v0}, Lo/cG;->h(Lo/cG;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    if-ne p2, v0, :cond_0

    .line 938
    iget-object p2, p0, Lo/cG$9;->d:Lo/cG;

    invoke-virtual {p2, p1}, Lo/cG;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;)V

    .line 941
    :cond_0
    iget-object p2, p0, Lo/cG$9;->d:Lo/cG;

    invoke-static {p2}, Lo/cG;->m(Lo/cG;)Lo/sT;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 942
    iget-object p2, p0, Lo/cG$9;->d:Lo/cG;

    invoke-static {p2}, Lo/cG;->m(Lo/cG;)Lo/sT;

    move-result-object p2

    iget-object v0, p0, Lo/cG$9;->d:Lo/cG;

    invoke-virtual {v0}, Lo/cG;->ay()Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingConfigOverride;

    move-result-object v0

    invoke-interface {p2, v0}, Lo/sT;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingConfigOverride;)V

    .line 946
    :cond_1
    iget-object p2, p0, Lo/cG$9;->e:Lo/cJ;

    if-eqz p2, :cond_2

    .line 947
    iget-object v0, p0, Lo/cG$9;->d:Lo/cG;

    invoke-static {v0}, Lo/cG;->h(Lo/cG;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lo/cJ;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_2
    return-void
.end method
