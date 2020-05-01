.class Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$3;
.super Ljava/lang/Object;
.source "LoMoViewPagerAdapter.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)V
    .locals 0

    .prologue
    .line 422
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$3;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$3;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$700(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    return-object v0
.end method

.method public notifyParentOfDataSetChange()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 441
    const-string/jumbo v0, "LoMoViewPagerAdapter"

    const-string/jumbo v1, "Notified parent of data set change"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-static {}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->isCurrentLocaleRTL()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 444
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$3;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$400(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/lomo/RowAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 445
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 446
    const-string/jumbo v1, "LoMoViewPagerAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Current locale is RTL, we got oour first data, set to last page "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const-string/jumbo v1, "LoMoViewPagerAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Current page "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$3;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$500(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->getCurrentItem()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const-string/jumbo v1, "LoMoViewPagerAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Previous last page "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$3;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$600(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$3;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$500(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->getCurrentItem()I

    move-result v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$3;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$600(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 452
    const-string/jumbo v1, "LoMoViewPagerAdapter"

    const-string/jumbo v2, "LOMO stayed on same last page, just adjust"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$3;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$500(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

    move-result-object v1

    invoke-virtual {v1, v0, v5, v5}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->setCurrentItem(IZZ)V

    .line 467
    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$3;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$602(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;I)I

    .line 477
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$3;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->notifyDataSetChanged()V

    .line 478
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$3;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$500(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->notifyDataSetChanged()V

    .line 480
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$3;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$500(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_2

    .line 481
    const-string/jumbo v0, "LoMoViewPagerAdapter"

    const-string/jumbo v1, "Data loaded for page 0 - saving state"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$3;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$500(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->saveStateAndTrackPresentation(I)V

    .line 484
    :cond_2
    return-void

    .line 455
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$3;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$500(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->getCurrentItem()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$3;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$600(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 456
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 457
    const-string/jumbo v2, "LoMoViewPagerAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "User moved from last page, adjust to page "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_4
    if-ltz v1, :cond_5

    .line 460
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$3;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$500(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

    move-result-object v2

    invoke-virtual {v2, v1, v5, v5}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->setCurrentItem(IZZ)V

    goto :goto_0

    .line 462
    :cond_5
    const-string/jumbo v1, "LoMoViewPagerAdapter"

    const-string/jumbo v2, "Wrong position, reset to end"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$3;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$500(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

    move-result-object v1

    invoke-virtual {v1, v0, v5, v5}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->setCurrentItem(IZZ)V

    goto/16 :goto_0

    .line 470
    :cond_6
    const-string/jumbo v0, "LoMoViewPagerAdapter"

    const-string/jumbo v1, "Current locale is LTR..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$3;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$000(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->DISCOVERY:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    if-ne v0, v1, :cond_1

    .line 473
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$3;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$500(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v5, v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->setCurrentItem(IZ)V

    goto/16 :goto_1
.end method

.method public notifyParentOfError()V
    .locals 3

    .prologue
    .line 426
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$3;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$000(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->ERROR:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    if-eq v0, v1, :cond_0

    .line 427
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$3;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$3;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$000(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$102(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;)Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    .line 429
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    const-string/jumbo v0, "LoMoViewPagerAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Pre-error state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$3;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$100(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$3;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->ERROR:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$200(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;)V

    .line 434
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$3;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->notifyDataSetChanged()V

    .line 435
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$3;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$300(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)V

    .line 436
    return-void
.end method
