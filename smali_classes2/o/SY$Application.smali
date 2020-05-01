.class public final Lo/SY$Application;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/SY;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# instance fields
.field private final a:I

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lo/SY$Application;-><init>(IIIILo/amc;)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo/SY$Application;->a:I

    iput p2, p0, Lo/SY$Application;->c:I

    iput p3, p0, Lo/SY$Application;->d:I

    return-void
.end method

.method public synthetic constructor <init>(IIIILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 56
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->mB:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 57
    sget p3, Lcom/netflix/mediaclient/ui/R$AssistContent;->mw:I

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lo/SY$Application;-><init>(III)V

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    .line 56
    iget v0, p0, Lo/SY$Application;->c:I

    return v0
.end method

.method public final c()I
    .locals 1

    .line 55
    iget v0, p0, Lo/SY$Application;->a:I

    return v0
.end method

.method public final e()I
    .locals 1

    .line 57
    iget v0, p0, Lo/SY$Application;->d:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/SY$Application;

    if-eqz v0, :cond_0

    check-cast p1, Lo/SY$Application;

    iget v0, p0, Lo/SY$Application;->a:I

    iget v1, p1, Lo/SY$Application;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lo/SY$Application;->c:I

    iget v1, p1, Lo/SY$Application;->c:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lo/SY$Application;->d:I

    iget p1, p1, Lo/SY$Application;->d:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lo/SY$Application;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lo/SY$Application;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lo/SY$Application;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ErrorData(supportId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/SY$Application;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", titleId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/SY$Application;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", messageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/SY$Application;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
