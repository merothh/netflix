.class public abstract Lo/pg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/sV;


# instance fields
.field private final a:Lo/Ah;

.field private b:I

.field private c:I

.field private final d:Lo/cz;

.field private final e:Landroid/content/Context;

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/cz;Lo/Ah;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lo/pg;->c:I

    .line 26
    iput v0, p0, Lo/pg;->b:I

    .line 27
    iput v0, p0, Lo/pg;->i:I

    .line 32
    iput-object p1, p0, Lo/pg;->e:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lo/pg;->d:Lo/cz;

    .line 34
    iput-object p3, p0, Lo/pg;->a:Lo/Ah;

    return-void
.end method

.method private b(Lo/zJ;II)V
    .locals 0

    .line 83
    invoke-interface {p1, p2, p3}, Lo/zJ;->d(II)V

    return-void
.end method

.method private b()Z
    .locals 1

    .line 79
    iget v0, p0, Lo/pg;->i:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private c()Z
    .locals 1

    .line 75
    iget v0, p0, Lo/pg;->b:I

    if-lez v0, :cond_0

    iget v0, p0, Lo/pg;->c:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public abstract b(I)V
.end method

.method public c(Lo/zJ;Lcom/netflix/mediaclient/service/player/StreamProfileType;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 64
    :cond_0
    invoke-direct {p0}, Lo/pg;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget p2, p0, Lo/pg;->b:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lo/pg;->e:Landroid/content/Context;

    iget-object v1, p0, Lo/pg;->d:Lo/cz;

    invoke-interface {v1, p2}, Lo/cz;->a(Lcom/netflix/mediaclient/service/player/StreamProfileType;)Lcom/netflix/mediaclient/service/webclient/model/leafs/BwCap;

    move-result-object p2

    invoke-static {v0, p2}, Lo/x;->c(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/BwCap;)I

    move-result p2

    .line 65
    :goto_0
    invoke-direct {p0}, Lo/pg;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lo/pg;->c:I

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 66
    :goto_1
    invoke-direct {p0, p1, v0, p2}, Lo/pg;->b(Lo/zJ;II)V

    .line 68
    invoke-direct {p0}, Lo/pg;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lo/pg;->i:I

    goto :goto_2

    :cond_3
    const/16 p1, 0x4e20

    if-ge p2, p1, :cond_4

    const p1, 0x249f0

    goto :goto_2

    :cond_4
    const p1, 0x493e0

    .line 71
    :goto_2
    invoke-virtual {p0, p1}, Lo/pg;->b(I)V

    return-void
.end method
