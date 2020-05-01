.class Lo/Channel$8;
.super Landroid/animation/AnimatorListenerAdapter;
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
.field final synthetic a:Lo/Channel$Application;

.field final synthetic c:Lo/Channel;

.field private mViewBounds:Lo/Channel$Application;


# direct methods
.method constructor <init>(Lo/Channel;Lo/Channel$Application;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lo/Channel$8;->c:Lo/Channel;

    iput-object p2, p0, Lo/Channel$8;->a:Lo/Channel$Application;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 326
    iget-object p1, p0, Lo/Channel$8;->a:Lo/Channel$Application;

    iput-object p1, p0, Lo/Channel$8;->mViewBounds:Lo/Channel$Application;

    return-void
.end method
