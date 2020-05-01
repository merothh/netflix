.class Lo/SimpleClock$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/SimpleClock$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/SimpleClock;->c(Lo/SimpleClock$Activity;)Lo/SimpleClock$Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/SimpleClock;

.field final synthetic e:Lo/SimpleClock$Activity;


# direct methods
.method constructor <init>(Lo/SimpleClock;Lo/SimpleClock$Activity;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lo/SimpleClock$3;->d:Lo/SimpleClock;

    iput-object p2, p0, Lo/SimpleClock$3;->e:Lo/SimpleClock$Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo/SystemVibrator;)V
    .locals 2

    .line 390
    iget-object v0, p0, Lo/SimpleClock$3;->d:Lo/SimpleClock;

    invoke-virtual {v0}, Lo/SimpleClock;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 391
    iget-object v0, p0, Lo/SimpleClock$3;->e:Lo/SimpleClock$Activity;

    invoke-interface {v0, p1}, Lo/SimpleClock$Activity;->a(Lo/SystemVibrator;)V

    return-void
.end method

.method public c(Lo/SystemVibrator;Z)V
    .locals 1

    .line 380
    iget-object v0, p0, Lo/SimpleClock$3;->e:Lo/SimpleClock$Activity;

    invoke-interface {v0, p1, p2}, Lo/SimpleClock$Activity;->c(Lo/SystemVibrator;Z)V

    return-void
.end method

.method public d(F)V
    .locals 1

    .line 396
    iget-object v0, p0, Lo/SimpleClock$3;->e:Lo/SimpleClock$Activity;

    invoke-interface {v0, p1}, Lo/SimpleClock$Activity;->d(F)V

    return-void
.end method

.method public d(Lo/SystemVibrator;I)V
    .locals 1

    .line 385
    iget-object v0, p0, Lo/SimpleClock$3;->e:Lo/SimpleClock$Activity;

    invoke-interface {v0, p1, p2}, Lo/SimpleClock$Activity;->d(Lo/SystemVibrator;I)V

    return-void
.end method
