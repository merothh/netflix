.class Lo/NetworkOnMainThreadException$8;
.super Lo/InvalidClassException;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/NetworkOnMainThreadException;->j(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic d:Lo/NetworkOnMainThreadException;


# direct methods
.method constructor <init>(Lo/NetworkOnMainThreadException;I)V
    .locals 0

    .line 669
    iput-object p1, p0, Lo/NetworkOnMainThreadException$8;->d:Lo/NetworkOnMainThreadException;

    iput p2, p0, Lo/NetworkOnMainThreadException$8;->b:I

    invoke-direct {p0}, Lo/InvalidClassException;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    .line 677
    iget-object p1, p0, Lo/NetworkOnMainThreadException$8;->d:Lo/NetworkOnMainThreadException;

    iget v0, p0, Lo/NetworkOnMainThreadException$8;->b:I

    invoke-virtual {p1, v0}, Lo/NetworkOnMainThreadException;->g(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2

    .line 672
    iget-object p1, p0, Lo/NetworkOnMainThreadException$8;->d:Lo/NetworkOnMainThreadException;

    invoke-static {p1}, Lo/NetworkOnMainThreadException;->b(Lo/NetworkOnMainThreadException;)Lo/NetworkOnMainThreadException$StateListAnimator;

    move-result-object p1

    const/4 v0, 0x0

    const/16 v1, 0xb4

    invoke-virtual {p1, v0, v1}, Lo/NetworkOnMainThreadException$StateListAnimator;->e(II)V

    return-void
.end method
