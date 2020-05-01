.class Lcom/netflix/mediaclient/ui/voip/DialerScreen$2;
.super Ljava/lang/Object;
.source "DialerScreen.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$2;->this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$2;->this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->access$100(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$2;->this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->access$200(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$2;->this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->access$300(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$2;->this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->access$400(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$2;->this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->access$200(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/netflix/mediaclient/util/ViewUtils;->removeGlobalLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$2;->this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->access$200(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$2;->this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->access$200(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$2;->this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->access$400(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$2;->this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->access$400(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "VoipActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "w in portrait: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "VoipActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "old screen h in portrait: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "VoipActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "new screen h in portrait: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-le v2, v1, :cond_2

    sub-int/2addr v0, v2

    add-int/2addr v0, v1

    :cond_2
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$2;->this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->access$300(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method
