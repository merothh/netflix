.class public final Lo/aay;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/aay$ActionBar;
    }
.end annotation


# static fields
.field public static final a:Lo/aay$ActionBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/aay$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/aay$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/aay;->a:Lo/aay$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lo/aay;->d()Lo/aaz;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public d()Lo/aaz;
    .locals 1

    .line 21
    sget-object v0, Lo/eo;->e:Lo/eo$ActionBar;

    invoke-virtual {v0}, Lo/eo$ActionBar;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    sget-object v0, Lo/aat;->k:Lo/aat$Activity;

    invoke-virtual {v0}, Lo/aat$Activity;->b()Lo/aat;

    move-result-object v0

    check-cast v0, Lo/aaz;

    goto :goto_0

    .line 24
    :cond_0
    sget-object v0, Lo/aaz;->q:Lo/aaz$ActionBar;

    invoke-virtual {v0}, Lo/aaz$ActionBar;->a()Lo/aaz;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public e()I
    .locals 1

    .line 18
    sget v0, Lo/aax$TaskDescription;->d:I

    return v0
.end method
