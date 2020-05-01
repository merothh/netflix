.class Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Activity"
.end annotation


# instance fields
.field final synthetic e:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)V
    .locals 0

    .line 1371
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity;->e:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1385
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity;->e:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->g(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Lo/RatingBar;

    move-result-object v0

    const-string v1, "instance_state_suggestions_selected_pos"

    invoke-direct {p0, p1, v0, v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity;->e(Landroid/os/Bundle;Lo/RatingBar;Ljava/lang/String;)V

    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1393
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity;->e:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->h(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Lo/DateTimeView;

    move-result-object v0

    const-string v1, "instance_state_suggestions_selected_pos"

    invoke-direct {p0, p1, v0, v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity;->e(Landroid/os/Bundle;Lo/DateTimeView;Ljava/lang/String;)V

    return-void
.end method

.method private d(Landroid/os/Bundle;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1429
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity;->e:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->f:Lo/OnDateChangedListener;

    if-nez v0, :cond_1

    .line 1430
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "restoreQuery but searchActionBar == null"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "instance_state_query"

    .line 1432
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1433
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->a(Landroid/os/Bundle;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, ""

    if-eqz v1, :cond_2

    .line 1434
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity;->e:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->f:Lo/OnDateChangedListener;

    invoke-virtual {p1, v3, v2}, Lo/OnDateChangedListener;->e(Ljava/lang/String;Z)V

    .line 1435
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity;->e:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->M()V

    goto :goto_0

    .line 1437
    :cond_2
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1438
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity;->e:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->f:Lo/OnDateChangedListener;

    invoke-virtual {v0, p1, v2}, Lo/OnDateChangedListener;->e(Ljava/lang/String;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method private e(Landroid/os/Bundle;Lo/DateTimeView;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1404
    :cond_0
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    .line 1405
    invoke-virtual {p1, p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v0, :cond_2

    .line 1408
    iget-object p3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity;->e:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {p3}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->h(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Lo/DateTimeView;

    move-result-object p3

    if-ne p2, p3, :cond_1

    .line 1409
    iget-object p3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity;->e:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {p3, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->c(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;I)I

    .line 1411
    :cond_1
    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity$4;-><init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity;Lo/DateTimeView;I)V

    const-wide/16 p1, 0x12c

    invoke-virtual {p3, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private e(Landroid/os/Bundle;Lo/RatingBar;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1472
    :cond_0
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    .line 1473
    invoke-virtual {p1, p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v0, :cond_2

    .line 1476
    iget-object p3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity;->e:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {p3}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->g(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Lo/RatingBar;

    move-result-object p3

    if-ne p2, p3, :cond_1

    .line 1477
    iget-object p3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity;->e:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {p3, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->c(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;I)I

    .line 1479
    :cond_1
    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity$5;

    invoke-direct {v0, p0, p2, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity$5;-><init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity;Lo/RatingBar;I)V

    const-wide/16 p1, 0x12c

    invoke-virtual {p3, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private f(Landroid/os/Bundle;)V
    .locals 2

    .line 1516
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity;->e:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->m(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1517
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity;->e:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->m(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)I

    move-result v0

    const-string v1, "instance_state_suggestions_selected_pos"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private g(Landroid/os/Bundle;)V
    .locals 2

    .line 1506
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity;->e:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->l(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1507
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity;->e:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->l(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Ljava/util/Stack;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity;->e:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->l(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    new-array v1, v1, [Lcom/netflix/mediaclient/ui/search/SearchItemClick;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/search/SearchItemClick;

    if-eqz v0, :cond_0

    .line 1508
    array-length v1, v0

    if-lez v1, :cond_0

    const-string v1, "instance_state__click_history"

    .line 1509
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method private h(Landroid/os/Bundle;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "instance_state__click_history"

    .line 1449
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1450
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1452
    array-length v0, p1

    if-nez v0, :cond_1

    goto :goto_1

    .line 1456
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1457
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 1458
    check-cast v3, Lcom/netflix/mediaclient/ui/search/SearchItemClick;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1461
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity;->e:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->l(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Ljava/util/Stack;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1462
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity;->e:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->l(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Ljava/util/Stack;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    nop

    :cond_3
    :goto_1
    return-void
.end method

.method private j(Landroid/os/Bundle;)V
    .locals 2

    .line 1499
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity;->e:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->b(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1500
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity;->e:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->b(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "instance_state_query"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1501
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->e(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method


# virtual methods
.method c(Landroid/os/Bundle;)V
    .locals 0

    .line 1493
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity;->f(Landroid/os/Bundle;)V

    .line 1494
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity;->g(Landroid/os/Bundle;)V

    .line 1495
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity;->j(Landroid/os/Bundle;)V

    return-void
.end method

.method e(Landroid/os/Bundle;)V
    .locals 0

    .line 1374
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity;->a(Landroid/os/Bundle;)V

    .line 1375
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity;->b(Landroid/os/Bundle;)V

    .line 1376
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity;->h(Landroid/os/Bundle;)V

    .line 1377
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity;->d(Landroid/os/Bundle;)V

    return-void
.end method
