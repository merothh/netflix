.class public final Lcom/netflix/mediaclient/acquisition/view/SignupBannerView$makeLinkClickable$clickable$1;
.super Landroid/text/style/ClickableSpan;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->makeLinkClickable(Landroid/text/SpannableStringBuilder;Landroid/text/style/URLSpan;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $span:Landroid/text/style/URLSpan;

.field final synthetic this$0:Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;Landroid/text/style/URLSpan;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/style/URLSpan;",
            ")V"
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView$makeLinkClickable$clickable$1;->this$0:Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView$makeLinkClickable$clickable$1;->$span:Landroid/text/style/URLSpan;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView$makeLinkClickable$clickable$1;->this$0:Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView$BannerUrlClickListener;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->access$setBannerUrlClickListener$p(Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;Lcom/netflix/mediaclient/acquisition/view/SignupBannerView$BannerUrlClickListener;)V

    .line 113
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView$makeLinkClickable$clickable$1;->this$0:Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    invoke-static {p1}, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->access$getBannerUrlClickListener$p(Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;)Lcom/netflix/mediaclient/acquisition/view/SignupBannerView$BannerUrlClickListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView$makeLinkClickable$clickable$1;->$span:Landroid/text/style/URLSpan;

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    const-string v1, "span.url"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView$BannerUrlClickListener;->onUrlClicked(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
