.class public final Lo/UU$ClipData;
.super Lo/UU;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClipData"
.end annotation


# instance fields
.field private final a:I

.field private final d:Z

.field private final e:Z


# direct methods
.method public constructor <init>(ZIZ)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, v0}, Lo/UU;-><init>(Lo/amc;)V

    iput-boolean p1, p0, Lo/UU$ClipData;->e:Z

    iput p2, p0, Lo/UU$ClipData;->a:I

    iput-boolean p3, p0, Lo/UU$ClipData;->d:Z

    return-void
.end method


# virtual methods
.method public final c()I
    .locals 1

    .line 33
    iget v0, p0, Lo/UU$ClipData;->a:I

    return v0
.end method

.method public final d()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lo/UU$ClipData;->d:Z

    return v0
.end method

.method public final e()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lo/UU$ClipData;->e:Z

    return v0
.end method
