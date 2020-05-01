.class public Lo/AccessibilityClickableSpan;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ClassFormatError;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ClassFormatError<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Landroid/view/View;

.field private final d:Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;Landroid/view/View;)V
    .locals 1

    const-string v0, "signupInlineWarningView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/AccessibilityClickableSpan;->d:Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    iput-object p2, p0, Lo/AccessibilityClickableSpan;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    .line 7
    iget-object v0, p0, Lo/AccessibilityClickableSpan;->b:Landroid/view/View;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lo/AccessibilityClickableSpan;->d:Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->setText(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 13
    iget-object p1, p0, Lo/AccessibilityClickableSpan;->b:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/view/View;->scrollTo(II)V

    :cond_0
    return-void
.end method

.method public synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 7
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lo/AccessibilityClickableSpan;->a(Ljava/lang/String;)V

    return-void
.end method
