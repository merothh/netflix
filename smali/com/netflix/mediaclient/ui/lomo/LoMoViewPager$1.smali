.class Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager$1;
.super Ljava/lang/Object;
.source "LoMoViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager$1;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager$1;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->access$000(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->isCurrentLocaleRTL()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager$1;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager$1;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->access$100(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;)Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :cond_1
    :goto_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "LoMoViewPager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Auto-rotating to next view, id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager$1;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

    invoke-virtual {v1, v0, v4, v4}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->setCurrentItem(IZZ)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager$1;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->access$300(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->access$200()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager$1;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager$1;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->access$100(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;)Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1
.end method
