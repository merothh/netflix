.class Lo/NetworkOnMainThreadException$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/NetworkOnMainThreadException;->g(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/NetworkOnMainThreadException;

.field final synthetic d:Landroid/view/ViewParent;


# direct methods
.method constructor <init>(Lo/NetworkOnMainThreadException;Landroid/view/ViewParent;)V
    .locals 0

    .line 712
    iput-object p1, p0, Lo/NetworkOnMainThreadException$7;->b:Lo/NetworkOnMainThreadException;

    iput-object p2, p0, Lo/NetworkOnMainThreadException$7;->d:Landroid/view/ViewParent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 715
    iget-object v0, p0, Lo/NetworkOnMainThreadException$7;->d:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lo/NetworkOnMainThreadException$7;->b:Lo/NetworkOnMainThreadException;

    invoke-static {v1}, Lo/NetworkOnMainThreadException;->b(Lo/NetworkOnMainThreadException;)Lo/NetworkOnMainThreadException$StateListAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method
