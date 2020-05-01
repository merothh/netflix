.class public final Lo/ImageButton$StateListAnimator;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ImageButton;->a(Lo/WebResourceError;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/ImageButton;

.field final synthetic d:Lkotlin/jvm/internal/Ref$FloatRef;

.field final synthetic e:Lo/WebResourceError;


# direct methods
.method constructor <init>(Lo/ImageButton;Lkotlin/jvm/internal/Ref$FloatRef;Lo/WebResourceError;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$FloatRef;",
            "Lo/WebResourceError;",
            ")V"
        }
    .end annotation

    .line 298
    iput-object p1, p0, Lo/ImageButton$StateListAnimator;->b:Lo/ImageButton;

    iput-object p2, p0, Lo/ImageButton$StateListAnimator;->d:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p3, p0, Lo/ImageButton$StateListAnimator;->e:Lo/WebResourceError;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 300
    iget-object p1, p0, Lo/ImageButton$StateListAnimator;->b:Lo/ImageButton;

    iget-object v0, p0, Lo/ImageButton$StateListAnimator;->d:Lkotlin/jvm/internal/Ref$FloatRef;

    iget v0, v0, Lkotlin/jvm/internal/Ref$FloatRef;->d:F

    invoke-virtual {p1, v0}, Lo/ImageButton;->setSpeed(F)V

    .line 301
    sget-object p1, Lo/ImageButton;->a:Lo/ImageButton$TaskDescription;

    check-cast p1, Lo/MessagePdu;

    .line 302
    iget-object p1, p0, Lo/ImageButton$StateListAnimator;->b:Lo/ImageButton;

    invoke-virtual {p1}, Lo/ImageButton;->f()I

    move-result p1

    iget-object v0, p0, Lo/ImageButton$StateListAnimator;->e:Lo/WebResourceError;

    invoke-virtual {v0}, Lo/WebResourceError;->b()I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    if-lt p1, v0, :cond_1

    .line 306
    iget-object p1, p0, Lo/ImageButton$StateListAnimator;->b:Lo/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lo/ImageButton;->f()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lo/ImageButton;->setMinAndMaxFrame(II)V

    .line 307
    iget-object p1, p0, Lo/ImageButton$StateListAnimator;->b:Lo/ImageButton;

    iget-object v0, p0, Lo/ImageButton$StateListAnimator;->e:Lo/WebResourceError;

    invoke-virtual {v0}, Lo/WebResourceError;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Lo/ImageButton;->setFrame(I)V

    .line 309
    :cond_1
    :goto_0
    iget-object p1, p0, Lo/ImageButton$StateListAnimator;->b:Lo/ImageButton;

    invoke-virtual {p1}, Lo/ImageButton;->h()Lo/WebSyncManager;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lo/ImageButton$StateListAnimator;->e:Lo/WebResourceError;

    invoke-virtual {v0}, Lo/WebResourceError;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/WebSyncManager;->b(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
