.class Lcom/netflix/mediaclient/ui/voip/DialerScreen$3;
.super Ljava/lang/Object;
.source "DialerScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)V
    .locals 0

    .prologue
    .line 450
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$3;->this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 453
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$3;->this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->access$500(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$3;->this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->access$600(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020106

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 455
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$3;->this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->access$600(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 460
    :goto_0
    return-void

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$3;->this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->access$600(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020105

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 458
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$3;->this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->access$600(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0
.end method
