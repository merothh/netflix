.class Lo/CharsetDecoder$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/CharsetDecoder;->runAnimator(Landroid/animation/Animator;Lo/Spanned;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/Spanned;

.field final synthetic e:Lo/CharsetDecoder;


# direct methods
.method constructor <init>(Lo/CharsetDecoder;Lo/Spanned;)V
    .locals 0

    .line 896
    iput-object p1, p0, Lo/CharsetDecoder$4;->e:Lo/CharsetDecoder;

    iput-object p2, p0, Lo/CharsetDecoder$4;->c:Lo/Spanned;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 904
    iget-object v0, p0, Lo/CharsetDecoder$4;->c:Lo/Spanned;

    invoke-virtual {v0, p1}, Lo/Spanned;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    iget-object v0, p0, Lo/CharsetDecoder$4;->e:Lo/CharsetDecoder;

    iget-object v0, v0, Lo/CharsetDecoder;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 899
    iget-object v0, p0, Lo/CharsetDecoder$4;->e:Lo/CharsetDecoder;

    iget-object v0, v0, Lo/CharsetDecoder;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
