.class Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/zB$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->c(JLandroid/content/Context;ZIIZ)Lo/zU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/zB$Activity<",
        "TO;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;

.field final synthetic b:J

.field final synthetic d:Z


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;JZ)V
    .locals 0

    .line 457
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$2;->a:Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;

    iput-wide p2, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$2;->b:J

    iput-boolean p4, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$2;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/netflix/model/leafs/ListOfMoviesSummary;)V
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$2;->a:Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->c(Lcom/netflix/model/leafs/ListOfMoviesSummary;)V

    return-void
.end method

.method public b()J
    .locals 2

    .line 461
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$2;->b:J

    return-wide v0
.end method

.method public c()V
    .locals 3

    .line 466
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$2;->a:Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->d(Z)V

    .line 467
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$2;->a:Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$2;->a:Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->c(Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;)Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$TaskDescription;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$2;->a:Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->c(Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;)Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$TaskDescription;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$2;->a:Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->a(Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$TaskDescription;->e(Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;I)V

    :cond_0
    return-void
.end method

.method public e(Ljava/util/List;Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TO;>;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    const/4 p2, 0x0

    .line 483
    :try_start_0
    iget-object p3, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$2;->a:Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;

    iget-boolean p4, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$2;->d:Z

    invoke-virtual {p3, p1, p4}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->c(Ljava/util/List;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$2;->a:Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->d(Z)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p3, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$2;->a:Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;

    invoke-virtual {p3, p2}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->d(Z)V

    .line 486
    throw p1
.end method
