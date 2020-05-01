.class Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage$2;
.super Ljava/lang/Object;
.source "DiscoveryPage.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage$2;->this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DiscoveryPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CwDiscoveryView height  -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage$2;->this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;->access$000(Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;)Lcom/netflix/mediaclient/ui/lomo/CwDiscoveryView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/lomo/CwDiscoveryView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage$2;->this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;->access$000(Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;)Lcom/netflix/mediaclient/ui/lomo/CwDiscoveryView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/CwDiscoveryView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage$2;->this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;->access$000(Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;)Lcom/netflix/mediaclient/ui/lomo/CwDiscoveryView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/lomo/CwDiscoveryView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f100000    # 0.5625f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage$2;->this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;->access$000(Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;)Lcom/netflix/mediaclient/ui/lomo/CwDiscoveryView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/CwDiscoveryView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x1

    return v0
.end method
