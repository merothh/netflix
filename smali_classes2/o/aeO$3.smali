.class Lo/aeO$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/aeO;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lo/aeL$StateListAnimator;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lo/aeO;


# direct methods
.method constructor <init>(Lo/aeO;)V
    .locals 0

    .line 485
    iput-object p1, p0, Lo/aeO$3;->d:Lo/aeO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lo/aeL$StateListAnimator;Lo/aeL$StateListAnimator;)I
    .locals 5

    .line 488
    invoke-interface {p1}, Lo/aeL$StateListAnimator;->c()J

    move-result-wide v0

    invoke-interface {p2}, Lo/aeL$StateListAnimator;->c()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, 0x0

    return p1

    .line 490
    :cond_0
    invoke-interface {p1}, Lo/aeL$StateListAnimator;->c()J

    move-result-wide v0

    invoke-interface {p2}, Lo/aeL$StateListAnimator;->c()J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-gez v2, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 485
    check-cast p1, Lo/aeL$StateListAnimator;

    check-cast p2, Lo/aeL$StateListAnimator;

    invoke-virtual {p0, p1, p2}, Lo/aeO$3;->c(Lo/aeL$StateListAnimator;Lo/aeL$StateListAnimator;)I

    move-result p1

    return p1
.end method
