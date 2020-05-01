.class Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView$1;
.super Ljava/lang/Object;
.source "KubrickHeroView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView$1;->this$0:Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    .line 107
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView$1;->this$0:Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->access$000(Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 108
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    const-string/jumbo v1, "KubrickHeroView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Setting shadow height to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView$1;->this$0:Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->access$100(Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 112
    return-void
.end method
