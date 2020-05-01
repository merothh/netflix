.class public abstract Lo/Hr;
.super Lo/IntBinaryOperator;
.source ""

# interfaces
.implements Lo/Hl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Hr$Activity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/IntBinaryOperator<",
        "Lo/Hr$Activity;",
        ">;",
        "Lo/Hl;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lo/IntBinaryOperator;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()I
    .locals 1

    .line 15
    sget v0, Lo/GS$FragmentManager;->i:I

    return v0
.end method

.method protected h()Lo/Hr$Activity;
    .locals 1

    .line 17
    new-instance v0, Lo/Hr$Activity;

    invoke-direct {v0}, Lo/Hr$Activity;-><init>()V

    return-object v0
.end method

.method public synthetic n()Lo/TimeUnit;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lo/Hr;->h()Lo/Hr$Activity;

    move-result-object v0

    check-cast v0, Lo/TimeUnit;

    return-object v0
.end method
