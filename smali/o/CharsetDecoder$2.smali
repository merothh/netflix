.class Lo/CharsetDecoder$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/CharsetDecoder;->animate(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/CharsetDecoder;


# direct methods
.method constructor <init>(Lo/CharsetDecoder;)V
    .locals 0

    .line 1907
    iput-object p1, p0, Lo/CharsetDecoder$2;->c:Lo/CharsetDecoder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1910
    iget-object v0, p0, Lo/CharsetDecoder$2;->c:Lo/CharsetDecoder;

    invoke-virtual {v0}, Lo/CharsetDecoder;->end()V

    .line 1911
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
