.class public final Lo/WebView$TaskDescription;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/WebView;->e(Lo/WebViewClient;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/WebViewClient;

.field final synthetic c:Lo/WebView;

.field private e:Z


# direct methods
.method constructor <init>(Lo/WebView;Lo/WebViewClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/WebViewClient;",
            ")V"
        }
    .end annotation

    .line 320
    iput-object p1, p0, Lo/WebView$TaskDescription;->c:Lo/WebView;

    iput-object p2, p0, Lo/WebView$TaskDescription;->b:Lo/WebViewClient;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 332
    iget-object p1, p0, Lo/WebView$TaskDescription;->c:Lo/WebView;

    const/4 v0, 0x0

    check-cast v0, Lo/WebViewClient;

    invoke-static {p1, v0}, Lo/WebView;->e(Lo/WebView;Lo/WebViewClient;)V

    const/4 p1, 0x1

    .line 333
    iput-boolean p1, p0, Lo/WebView$TaskDescription;->e:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 324
    iget-boolean p1, p0, Lo/WebView$TaskDescription;->e:Z

    if-nez p1, :cond_0

    .line 325
    sget-object p1, Lo/WebView;->e:Lo/WebView$Activity;

    check-cast p1, Lo/MessagePdu;

    .line 327
    iget-object p1, p0, Lo/WebView$TaskDescription;->c:Lo/WebView;

    invoke-virtual {p1}, Lo/WebView;->y()Lo/WebViewDatabase;

    move-result-object p1

    iget-object v0, p0, Lo/WebView$TaskDescription;->b:Lo/WebViewClient;

    invoke-interface {p1, v0}, Lo/WebViewDatabase;->a(Lo/WebViewClient;)V

    :cond_0
    return-void
.end method
