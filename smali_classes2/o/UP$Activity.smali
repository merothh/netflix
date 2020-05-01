.class public final Lo/UP$Activity;
.super Lo/UP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# instance fields
.field private final a:Z

.field private final b:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v0, v0, v1, v2}, Lo/UP$Activity;-><init>(IZILo/amc;)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 201
    invoke-direct {p0, v0}, Lo/UP;-><init>(Lo/amc;)V

    iput p1, p0, Lo/UP$Activity;->b:I

    iput-boolean p2, p0, Lo/UP$Activity;->a:Z

    return-void
.end method

.method public synthetic constructor <init>(IZILo/amc;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x1

    .line 201
    :cond_1
    invoke-direct {p0, p1, p2}, Lo/UP$Activity;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    .line 201
    iget v0, p0, Lo/UP$Activity;->b:I

    return v0
.end method

.method public final d()Z
    .locals 1

    .line 201
    iget-boolean v0, p0, Lo/UP$Activity;->a:Z

    return v0
.end method
