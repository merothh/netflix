.class Lcom/netflix/mediaclient/android/fragment/CustomViewPager$1;
.super Ljava/lang/Object;
.source "CustomViewPager.java"

# interfaces
.implements Lcom/viewpagerindicator/android/osp/ViewPager$OnPageChangeListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/android/fragment/CustomViewPager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/fragment/CustomViewPager;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/netflix/mediaclient/android/fragment/CustomViewPager$1;->this$0:Lcom/netflix/mediaclient/android/fragment/CustomViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 3

    .prologue
    .line 84
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const-string/jumbo v0, "CustomViewPager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPageScrolled, position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; positionOffset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; positionOffsetPixels: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/fragment/CustomViewPager$1;->this$0:Lcom/netflix/mediaclient/android/fragment/CustomViewPager;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/fragment/CustomViewPager;->onPageSelected(I)V

    .line 88
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .prologue
    .line 76
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const-string/jumbo v0, "CustomViewPager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPageSelected, position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/fragment/CustomViewPager$1;->this$0:Lcom/netflix/mediaclient/android/fragment/CustomViewPager;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/fragment/CustomViewPager;->onPageSelected(I)V

    .line 80
    return-void
.end method
