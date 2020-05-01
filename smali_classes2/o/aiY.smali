.class public Lo/aiY;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final b:Lo/aiY;

.field public static final e:Lo/aiY;


# instance fields
.field private a:I

.field private c:I

.field private d:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 25
    new-instance v0, Lo/aiY;

    const/16 v1, 0x7d0

    const/4 v2, 0x3

    const/16 v3, 0x3a98

    invoke-direct {v0, v1, v2, v3, v2}, Lo/aiY;-><init>(IIII)V

    sput-object v0, Lo/aiY;->e:Lo/aiY;

    .line 29
    new-instance v0, Lo/aiY;

    const/16 v3, 0xbb8

    invoke-direct {v0, v1, v2, v3, v2}, Lo/aiY;-><init>(IIII)V

    sput-object v0, Lo/aiY;->b:Lo/aiY;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    .line 45
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v0, 0x1388

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lo/aiY;->c:I

    .line 46
    iput p2, p0, Lo/aiY;->d:I

    .line 47
    iput p3, p0, Lo/aiY;->a:I

    .line 48
    iput p4, p0, Lo/aiY;->i:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 56
    iget v0, p0, Lo/aiY;->c:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 80
    iget v0, p0, Lo/aiY;->i:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 64
    iget v0, p0, Lo/aiY;->d:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 72
    iget v0, p0, Lo/aiY;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 89
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 90
    invoke-virtual {p0}, Lo/aiY;->a()I

    move-result v1

    const-string v2, "searchTimeoutMs"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 91
    invoke-virtual {p0}, Lo/aiY;->c()I

    move-result v1

    const-string v2, "discoveryAttemptsPerInterval"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 92
    invoke-virtual {p0}, Lo/aiY;->d()I

    move-result v1

    const-string v2, "discoveryIntervalMs"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 93
    invoke-virtual {p0}, Lo/aiY;->b()I

    move-result v1

    const-string v2, "attemptsBeforeLost"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
