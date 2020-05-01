.class public abstract Lo/Hu;
.super Lo/GR;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Hu$ActionBar;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/GR<",
        "Lo/Hu$ActionBar;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lo/GR;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()I
    .locals 1

    .line 14
    sget v0, Lo/GS$FragmentManager;->g:I

    return v0
.end method

.method public synthetic n()Lo/TimeUnit;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lo/Hu;->q()Lo/Hu$ActionBar;

    move-result-object v0

    check-cast v0, Lo/TimeUnit;

    return-object v0
.end method

.method protected q()Lo/Hu$ActionBar;
    .locals 1

    .line 16
    new-instance v0, Lo/Hu$ActionBar;

    invoke-direct {v0}, Lo/Hu$ActionBar;-><init>()V

    return-object v0
.end method
