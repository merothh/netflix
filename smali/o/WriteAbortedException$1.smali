.class Lo/WriteAbortedException$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/WriteAbortedException;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Ljava/util/ArrayList;

.field final synthetic e:Ljava/util/ArrayList;

.field final synthetic f:Lo/WriteAbortedException;

.field final synthetic h:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lo/WriteAbortedException;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lo/WriteAbortedException$1;->f:Lo/WriteAbortedException;

    iput-object p2, p0, Lo/WriteAbortedException$1;->b:Ljava/lang/Object;

    iput-object p3, p0, Lo/WriteAbortedException$1;->e:Ljava/util/ArrayList;

    iput-object p4, p0, Lo/WriteAbortedException$1;->c:Ljava/lang/Object;

    iput-object p5, p0, Lo/WriteAbortedException$1;->d:Ljava/util/ArrayList;

    iput-object p6, p0, Lo/WriteAbortedException$1;->a:Ljava/lang/Object;

    iput-object p7, p0, Lo/WriteAbortedException$1;->h:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 0

    .line 231
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 3

    .line 218
    iget-object p1, p0, Lo/WriteAbortedException$1;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 219
    iget-object v1, p0, Lo/WriteAbortedException$1;->f:Lo/WriteAbortedException;

    iget-object v2, p0, Lo/WriteAbortedException$1;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v2, v0}, Lo/WriteAbortedException;->d(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 221
    :cond_0
    iget-object p1, p0, Lo/WriteAbortedException$1;->c:Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 222
    iget-object v1, p0, Lo/WriteAbortedException$1;->f:Lo/WriteAbortedException;

    iget-object v2, p0, Lo/WriteAbortedException$1;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v2, v0}, Lo/WriteAbortedException;->d(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 224
    :cond_1
    iget-object p1, p0, Lo/WriteAbortedException$1;->a:Ljava/lang/Object;

    if-eqz p1, :cond_2

    .line 225
    iget-object v1, p0, Lo/WriteAbortedException$1;->f:Lo/WriteAbortedException;

    iget-object v2, p0, Lo/WriteAbortedException$1;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v2, v0}, Lo/WriteAbortedException;->d(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method
