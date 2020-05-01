.class public Lo/Yc;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-direct {p0}, Lo/Yc;->d()V

    return-void
.end method

.method private d()V
    .locals 2

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lo/Yc;->a:Z

    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lo/Yc;->a:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lo/Yc;->a:Z

    return v0
.end method
