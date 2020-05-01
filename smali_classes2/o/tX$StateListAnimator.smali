.class Lo/tX$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/tX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StateListAnimator"
.end annotation


# instance fields
.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/tJ$ActionBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/tJ$ActionBar;)V
    .locals 1

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lo/tX$StateListAnimator;->e:Ljava/util/List;

    .line 323
    invoke-virtual {p0, p1}, Lo/tX$StateListAnimator;->b(Lo/tJ$ActionBar;)V

    return-void
.end method


# virtual methods
.method public b(Lo/tJ$ActionBar;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 328
    iget-object v0, p0, Lo/tX$StateListAnimator;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lo/tF;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 333
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    iget-object v0, p0, Lo/tX$StateListAnimator;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/tJ$ActionBar;

    .line 335
    invoke-interface {v1, p1, p2}, Lo/tJ$ActionBar;->d(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 338
    :cond_0
    iget-object p2, p0, Lo/tX$StateListAnimator;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/tJ$ActionBar;

    .line 339
    invoke-interface {v0, p1}, Lo/tJ$ActionBar;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method
