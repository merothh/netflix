.class public Lo/RequestHolder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/LegacyResultMapper;


# static fields
.field public static final a:Lo/LegacyResultMapper;


# instance fields
.field c:I

.field d:Z

.field e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    const v1, 0x7fffffff

    .line 15
    invoke-static {v1, v0, v0}, Lo/RequestHolder;->d(IZZ)Lo/LegacyResultMapper;

    move-result-object v0

    sput-object v0, Lo/RequestHolder;->a:Lo/LegacyResultMapper;

    return-void
.end method

.method private constructor <init>(IZZ)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lo/RequestHolder;->c:I

    .line 26
    iput-boolean p2, p0, Lo/RequestHolder;->e:Z

    .line 27
    iput-boolean p3, p0, Lo/RequestHolder;->d:Z

    return-void
.end method

.method public static d(IZZ)Lo/LegacyResultMapper;
    .locals 1

    .line 68
    new-instance v0, Lo/RequestHolder;

    invoke-direct {v0, p0, p1, p2}, Lo/RequestHolder;-><init>(IZZ)V

    return-object v0
.end method


# virtual methods
.method public c()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lo/RequestHolder;->d:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lo/RequestHolder;->e:Z

    return v0
.end method

.method public e()I
    .locals 1

    .line 32
    iget v0, p0, Lo/RequestHolder;->c:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 55
    :cond_0
    instance-of v1, p1, Lo/RequestHolder;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 58
    :cond_1
    check-cast p1, Lo/RequestHolder;

    .line 59
    iget v1, p0, Lo/RequestHolder;->c:I

    iget v3, p1, Lo/RequestHolder;->c:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lo/RequestHolder;->e:Z

    iget-boolean v3, p1, Lo/RequestHolder;->e:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lo/RequestHolder;->d:Z

    iget-boolean p1, p1, Lo/RequestHolder;->d:Z

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 47
    iget v0, p0, Lo/RequestHolder;->c:I

    iget-boolean v1, p0, Lo/RequestHolder;->e:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/high16 v1, 0x400000

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    xor-int/2addr v0, v1

    iget-boolean v1, p0, Lo/RequestHolder;->d:Z

    if-eqz v1, :cond_1

    const/high16 v2, 0x800000

    :cond_1
    xor-int/2addr v0, v2

    return v0
.end method
