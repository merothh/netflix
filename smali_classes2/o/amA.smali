.class public abstract Lo/amA;
.super Lo/amy;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lo/amy;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/Random;
.end method

.method public d()I
    .locals 1

    .line 41
    invoke-virtual {p0}, Lo/amA;->a()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method

.method public d(I)I
    .locals 1

    .line 39
    invoke-virtual {p0}, Lo/amA;->a()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-static {v0, p1}, Lo/amx;->a(II)I

    move-result p1

    return p1
.end method

.method public e(I)I
    .locals 1

    .line 42
    invoke-virtual {p0}, Lo/amA;->a()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    return p1
.end method
