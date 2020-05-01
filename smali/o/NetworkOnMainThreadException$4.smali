.class Lo/NetworkOnMainThreadException$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/NetworkOnMainThreadException;->c(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/NetworkOnMainThreadException;


# direct methods
.method constructor <init>(Lo/NetworkOnMainThreadException;)V
    .locals 0

    .line 557
    iput-object p1, p0, Lo/NetworkOnMainThreadException$4;->d:Lo/NetworkOnMainThreadException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x8

    .line 560
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 561
    iget-object p1, p0, Lo/NetworkOnMainThreadException$4;->d:Lo/NetworkOnMainThreadException;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/NetworkOnMainThreadException;->c(I)V

    return-void
.end method

.method public onDragStateChanged(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 570
    :cond_0
    invoke-static {}, Lo/Message;->c()Lo/Message;

    move-result-object p1

    iget-object v0, p0, Lo/NetworkOnMainThreadException$4;->d:Lo/NetworkOnMainThreadException;

    iget-object v0, v0, Lo/NetworkOnMainThreadException;->d:Lo/Message$Activity;

    invoke-virtual {p1, v0}, Lo/Message;->d(Lo/Message$Activity;)V

    goto :goto_0

    .line 574
    :cond_1
    invoke-static {}, Lo/Message;->c()Lo/Message;

    move-result-object p1

    iget-object v0, p0, Lo/NetworkOnMainThreadException$4;->d:Lo/NetworkOnMainThreadException;

    iget-object v0, v0, Lo/NetworkOnMainThreadException;->d:Lo/Message$Activity;

    invoke-virtual {p1, v0}, Lo/Message;->b(Lo/Message$Activity;)V

    :goto_0
    return-void
.end method
