.class public Lo/aoV;
.super Lo/apb;
.source ""

# interfaces
.implements Lo/anZ;


# instance fields
.field private final c:Z


# direct methods
.method public constructor <init>(Lo/aoU;)V
    .locals 1

    const/4 v0, 0x1

    .line 1312
    invoke-direct {p0, v0}, Lo/apb;-><init>(Z)V

    .line 1313
    invoke-virtual {p0, p1}, Lo/aoV;->e(Lo/aoU;)V

    .line 1325
    invoke-direct {p0}, Lo/aoV;->b()Z

    move-result p1

    iput-boolean p1, p0, Lo/aoV;->c:Z

    return-void
.end method

.method private final b()Z
    .locals 4

    .line 1332
    invoke-virtual {p0}, Lo/aoV;->o()Lo/anW;

    move-result-object v0

    instance-of v1, v0, Lo/anY;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lo/anY;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, v0, Lo/anY;->b:Lo/aoU;

    check-cast v0, Lo/apb;

    if-eqz v0, :cond_3

    .line 1334
    :goto_0
    invoke-virtual {v0}, Lo/apb;->av_()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    return v0

    .line 1335
    :cond_1
    invoke-virtual {v0}, Lo/apb;->o()Lo/anW;

    move-result-object v0

    instance-of v3, v0, Lo/anY;

    if-nez v3, :cond_2

    move-object v0, v2

    :cond_2
    check-cast v0, Lo/anY;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lo/anY;->b:Lo/aoU;

    check-cast v0, Lo/apb;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    return v1
.end method


# virtual methods
.method public at_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public av_()Z
    .locals 1

    .line 1325
    iget-boolean v0, p0, Lo/aoV;->c:Z

    return v0
.end method
