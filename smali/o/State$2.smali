.class final Lo/State$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lo/State$FragmentManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 84
    check-cast p1, Lo/State$FragmentManager;

    check-cast p2, Lo/State$FragmentManager;

    invoke-virtual {p0, p1, p2}, Lo/State$2;->e(Lo/State$FragmentManager;Lo/State$FragmentManager;)I

    move-result p1

    return p1
.end method

.method public e(Lo/State$FragmentManager;Lo/State$FragmentManager;)I
    .locals 2

    .line 87
    iget v0, p1, Lo/State$FragmentManager;->b:I

    iget v1, p2, Lo/State$FragmentManager;->b:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 88
    iget p1, p1, Lo/State$FragmentManager;->c:I

    iget p2, p2, Lo/State$FragmentManager;->c:I

    sub-int v0, p1, p2

    :cond_0
    return v0
.end method