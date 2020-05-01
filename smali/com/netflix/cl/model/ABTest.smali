.class public final Lcom/netflix/cl/model/ABTest;
.super Ljava/lang/Object;
.source ""


# instance fields
.field cell:I

.field testId:Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 18
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/netflix/cl/model/ABTest;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/netflix/cl/model/ABTest;->testId:Ljava/lang/String;

    .line 14
    iput p2, p0, Lcom/netflix/cl/model/ABTest;->cell:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 39
    :cond_0
    instance-of v1, p1, Lcom/netflix/cl/model/ABTest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 44
    :cond_1
    check-cast p1, Lcom/netflix/cl/model/ABTest;

    .line 47
    iget-object v1, p0, Lcom/netflix/cl/model/ABTest;->testId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netflix/cl/model/ABTest;->getTestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/netflix/cl/model/ABTest;->cell:I

    .line 48
    invoke-virtual {p1}, Lcom/netflix/cl/model/ABTest;->getCell()I

    move-result p1

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCell()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/netflix/cl/model/ABTest;->cell:I

    return v0
.end method

.method public getTestId()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/netflix/cl/model/ABTest;->testId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/netflix/cl/model/ABTest;->testId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcom/netflix/cl/model/ABTest;->cell:I

    add-int/2addr v0, v1

    return v0
.end method
