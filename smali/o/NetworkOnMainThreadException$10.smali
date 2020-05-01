.class Lo/NetworkOnMainThreadException$10;
.super Lo/InvalidClassException;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/NetworkOnMainThreadException;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/NetworkOnMainThreadException;


# direct methods
.method constructor <init>(Lo/NetworkOnMainThreadException;)V
    .locals 0

    .line 650
    iput-object p1, p0, Lo/NetworkOnMainThreadException$10;->a:Lo/NetworkOnMainThreadException;

    invoke-direct {p0}, Lo/InvalidClassException;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 0

    .line 659
    iget-object p1, p0, Lo/NetworkOnMainThreadException$10;->a:Lo/NetworkOnMainThreadException;

    invoke-virtual {p1}, Lo/NetworkOnMainThreadException;->h()V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2

    .line 653
    iget-object p1, p0, Lo/NetworkOnMainThreadException$10;->a:Lo/NetworkOnMainThreadException;

    invoke-static {p1}, Lo/NetworkOnMainThreadException;->b(Lo/NetworkOnMainThreadException;)Lo/NetworkOnMainThreadException$StateListAnimator;

    move-result-object p1

    const/16 v0, 0x46

    const/16 v1, 0xb4

    invoke-virtual {p1, v0, v1}, Lo/NetworkOnMainThreadException$StateListAnimator;->c(II)V

    return-void
.end method
