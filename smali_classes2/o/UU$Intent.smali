.class public final Lo/UU$Intent;
.super Lo/UU;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intent"
.end annotation


# instance fields
.field private final b:I

.field private final c:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 121
    invoke-direct {p0, v0}, Lo/UU;-><init>(Lo/amc;)V

    iput p1, p0, Lo/UU$Intent;->b:I

    iput-boolean p2, p0, Lo/UU$Intent;->c:Z

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lo/UU$Intent;->c:Z

    return v0
.end method

.method public final c()I
    .locals 1

    .line 119
    iget v0, p0, Lo/UU$Intent;->b:I

    return v0
.end method
