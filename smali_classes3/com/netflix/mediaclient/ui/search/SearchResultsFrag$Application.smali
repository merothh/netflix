.class Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Application;
.super Lo/zP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Application"
.end annotation


# instance fields
.field a:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

.field private final c:J

.field final synthetic d:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;JLcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;)V
    .locals 0

    .line 1254
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Application;->d:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    const-string p1, "FetchSearchSimsByEntity"

    .line 1255
    invoke-direct {p0, p1}, Lo/zP;-><init>(Ljava/lang/String;)V

    .line 1256
    iput-wide p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Application;->c:J

    .line 1257
    iput-object p4, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Application;->a:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    return-void
.end method


# virtual methods
.method public c(Lo/Bs;Lcom/netflix/mediaclient/android/app/Status;Z)V
    .locals 4

    .line 1262
    invoke-super {p0, p1, p2, p3}, Lo/zP;->c(Lo/Bs;Lcom/netflix/mediaclient/android/app/Status;Z)V

    .line 1264
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Application;->c:J

    iget-object p3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Application;->d:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {p3}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->j(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)J

    move-result-wide v2

    cmp-long p3, v0, v2

    if-eqz p3, :cond_0

    return-void

    .line 1269
    :cond_0
    iget-object p3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Application;->d:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {p3, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->a(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;Lo/Bs;)V

    .line 1271
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result p2

    const-string p3, "FetchSearchSimsByEntity"

    if-eqz p2, :cond_1

    const-string p1, "Invalid status code"

    .line 1272
    invoke-static {p3, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Application;->d:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->K()V

    return-void

    .line 1277
    :cond_1
    invoke-interface {p1}, Lo/Bs;->getVideosListTrackable()Lo/Bz;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 1278
    invoke-interface {p1}, Lo/Bs;->getResultsVideoEntities()Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_1

    .line 1282
    :cond_2
    invoke-interface {p1}, Lo/Bs;->getResultsVideos()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1283
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-ge p2, v0, :cond_3

    goto :goto_0

    .line 1289
    :cond_3
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Application;->d:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {p2}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->f(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Lo/ZG;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 1290
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Application;->d:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    iget-object p3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Application;->a:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    invoke-static {p2, p3}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->d(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;)Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    .line 1291
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Application;->d:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {p2}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->f(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Lo/ZG;

    move-result-object p2

    invoke-virtual {p2, p1}, Lo/ZG;->d(Ljava/util/List;)V

    .line 1294
    :cond_4
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Application;->d:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {p2}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->i(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Landroid/widget/ProgressBar;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 1295
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Application;->d:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {p2}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->i(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Landroid/widget/ProgressBar;

    move-result-object p2

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1298
    :cond_5
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Application;->d:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->D()V

    .line 1299
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Application;->d:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->z()V

    .line 1300
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Application;->d:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {p2, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->a(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;Ljava/util/List;)V

    return-void

    :cond_6
    :goto_0
    const-string p1, "No details in response"

    .line 1284
    invoke-static {p3, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Application;->d:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->K()V

    :cond_7
    :goto_1
    return-void
.end method
