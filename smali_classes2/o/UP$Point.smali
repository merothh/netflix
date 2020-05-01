.class public final Lo/UP$Point;
.super Lo/UP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Point"
.end annotation


# instance fields
.field private final a:Z

.field private final c:I

.field private final e:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, v0}, Lo/UP;-><init>(Lo/amc;)V

    iput p1, p0, Lo/UP$Point;->e:I

    iput p2, p0, Lo/UP$Point;->c:I

    iput-boolean p3, p0, Lo/UP$Point;->a:Z

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lo/UP$Point;->a:Z

    return v0
.end method

.method public final c()I
    .locals 1

    .line 71
    iget v0, p0, Lo/UP$Point;->c:I

    return v0
.end method

.method public final d()I
    .locals 1

    .line 71
    iget v0, p0, Lo/UP$Point;->e:I

    return v0
.end method
