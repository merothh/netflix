.class public abstract Lo/apD$StateListAnimator;
.super Lo/apA;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/apD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StateListAnimator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/apA<",
        "Lo/apD;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Lo/apD;

.field public final d:Lo/apD;


# direct methods
.method public constructor <init>(Lo/apD;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lo/apA;-><init>()V

    iput-object p1, p0, Lo/apD$StateListAnimator;->d:Lo/apD;

    return-void
.end method


# virtual methods
.method public bridge synthetic e(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 69
    check-cast p1, Lo/apD;

    invoke-virtual {p0, p1, p2}, Lo/apD$StateListAnimator;->e(Lo/apD;Ljava/lang/Object;)V

    return-void
.end method

.method public e(Lo/apD;Ljava/lang/Object;)V
    .locals 2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 76
    iget-object v0, p0, Lo/apD$StateListAnimator;->d:Lo/apD;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lo/apD$StateListAnimator;->c:Lo/apD;

    :goto_1
    if-eqz v0, :cond_3

    .line 77
    sget-object v1, Lo/apD;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 79
    iget-object p1, p0, Lo/apD$StateListAnimator;->d:Lo/apD;

    iget-object p2, p0, Lo/apD$StateListAnimator;->c:Lo/apD;

    if-nez p2, :cond_2

    invoke-static {}, Lo/amh;->c()V

    :cond_2
    invoke-static {p1, p2}, Lo/apD;->a(Lo/apD;Lo/apD;)V

    :cond_3
    return-void
.end method
