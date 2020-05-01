.class public final Lo/FP$ActionBar;
.super Lo/FP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# instance fields
.field private final d:Z

.field private final e:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, v0}, Lo/FP;-><init>(Lo/amc;)V

    iput p1, p0, Lo/FP$ActionBar;->e:I

    iput-boolean p2, p0, Lo/FP$ActionBar;->d:Z

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    .line 39
    iget v0, p0, Lo/FP$ActionBar;->e:I

    return v0
.end method

.method public final d()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lo/FP$ActionBar;->d:Z

    return v0
.end method
