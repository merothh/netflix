.class Lcom/netflix/mediaclient/ui/player/TopPanel$10;
.super Ljava/lang/Object;
.source "TopPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/TopPanel;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$10;->this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$10;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 544
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$10;->val$title:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$10;->this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/TopPanel;->access$500(Lcom/netflix/mediaclient/ui/player/TopPanel;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 549
    :goto_0
    return-void

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$10;->this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/TopPanel;->access$500(Lcom/netflix/mediaclient/ui/player/TopPanel;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$10;->val$title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
