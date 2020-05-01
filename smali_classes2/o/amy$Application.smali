.class public final Lo/amy$Application;
.super Lo/amy;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/amy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 240
    invoke-direct {p0}, Lo/amy;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 240
    invoke-direct {p0}, Lo/amy$Application;-><init>()V

    return-void
.end method


# virtual methods
.method public c(II)I
    .locals 1

    .line 247
    invoke-static {}, Lo/amy;->b()Lo/amy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/amy;->c(II)I

    move-result p1

    return p1
.end method

.method public d()I
    .locals 1

    .line 245
    invoke-static {}, Lo/amy;->b()Lo/amy;

    move-result-object v0

    invoke-virtual {v0}, Lo/amy;->d()I

    move-result v0

    return v0
.end method

.method public d(I)I
    .locals 1

    .line 244
    invoke-static {}, Lo/amy;->b()Lo/amy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/amy;->d(I)I

    move-result p1

    return p1
.end method

.method public e(I)I
    .locals 1

    .line 246
    invoke-static {}, Lo/amy;->b()Lo/amy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/amy;->e(I)I

    move-result p1

    return p1
.end method
