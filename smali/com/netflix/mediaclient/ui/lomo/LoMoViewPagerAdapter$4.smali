.class Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$4;
.super Landroid/content/BroadcastReceiver;
.source "LoMoViewPagerAdapter.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$4;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-nez p2, :cond_1

    const-string/jumbo v0, "LoMoViewPagerAdapter"

    const-string/jumbo v1, "Received null intent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "LoMoViewPagerAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "browseReceiver inovoked with Action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.BA_CW_REFRESH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$4;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$500(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->invalidateCwCache()V

    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->CW:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$4;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$000(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "LoMoViewPagerAdapter"

    const-string/jumbo v1, "Reloading cw row"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$4;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$4;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$800(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$4;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$900(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->refresh(Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;I)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.BA_IQ_REFRESH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$4;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$500(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->invalidateIqCache()V

    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->IQ:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$4;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$000(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "LoMoViewPagerAdapter"

    const-string/jumbo v1, "Reloading iq row"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$4;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$4;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$800(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$4;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$900(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->refresh(Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;I)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$4;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$800(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$4;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$800(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->INSTANT_QUEUE:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "LoMoViewPagerAdapter"

    const-string/jumbo v1, "Reloading iq row because lomo types match"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$4;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$4;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$800(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$4;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$900(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->refresh(Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;I)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.BA_POPULAR_TITLES_REFRESH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$4;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$500(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->invalidatePopularTitlesCache()V

    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->KUBRICK_KIDS_POPULAR:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$4;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$000(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "LoMoViewPagerAdapter"

    const-string/jumbo v1, "Reloading popular titles row"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$4;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$4;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$800(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$4;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$900(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->refresh(Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;I)V

    goto/16 :goto_0
.end method
