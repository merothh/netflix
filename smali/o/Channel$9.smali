.class Lo/Channel$9;
.super Lo/Charset;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Channel;->createAnimator(Landroid/view/ViewGroup;Lo/AlgorithmParameters;Lo/AlgorithmParameters;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic d:Lo/Channel;

.field e:Z


# direct methods
.method constructor <init>(Lo/Channel;Landroid/view/ViewGroup;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lo/Channel$9;->d:Lo/Channel;

    iput-object p2, p0, Lo/Channel$9;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lo/Charset;-><init>()V

    const/4 p1, 0x0

    .line 392
    iput-boolean p1, p0, Lo/Channel$9;->e:Z

    return-void
.end method


# virtual methods
.method public b(Lo/CharsetDecoder;)V
    .locals 1

    .line 415
    iget-object p1, p0, Lo/Channel$9;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lo/SecureRandom;->a(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public c(Lo/CharsetDecoder;)V
    .locals 1

    .line 410
    iget-object p1, p0, Lo/Channel$9;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/SecureRandom;->a(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public d(Lo/CharsetDecoder;)V
    .locals 2

    .line 402
    iget-boolean v0, p0, Lo/Channel$9;->e:Z

    if-nez v0, :cond_0

    .line 403
    iget-object v0, p0, Lo/Channel$9;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/SecureRandom;->a(Landroid/view/ViewGroup;Z)V

    .line 405
    :cond_0
    invoke-virtual {p1, p0}, Lo/CharsetDecoder;->removeListener(Lo/CharsetDecoder$StateListAnimator;)Lo/CharsetDecoder;

    return-void
.end method
