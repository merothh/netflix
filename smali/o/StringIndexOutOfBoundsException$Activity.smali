.class public Lo/StringIndexOutOfBoundsException$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/StringIndexOutOfBoundsException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Activity"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/Object;

.field public e:I


# direct methods
.method constructor <init>(IIILjava/lang/Object;)V
    .locals 0

    .line 651
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 652
    iput p1, p0, Lo/StringIndexOutOfBoundsException$Activity;->b:I

    .line 653
    iput p2, p0, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    .line 654
    iput p3, p0, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    .line 655
    iput-object p4, p0, Lo/StringIndexOutOfBoundsException$Activity;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method b()Ljava/lang/String;
    .locals 2

    .line 659
    iget v0, p0, Lo/StringIndexOutOfBoundsException$Activity;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const-string v0, "??"

    return-object v0

    :cond_0
    const-string v0, "mv"

    return-object v0

    :cond_1
    const-string v0, "up"

    return-object v0

    :cond_2
    const-string v0, "rm"

    return-object v0

    :cond_3
    const-string v0, "add"

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    .line 684
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 688
    :cond_1
    check-cast p1, Lo/StringIndexOutOfBoundsException$Activity;

    .line 690
    iget v2, p0, Lo/StringIndexOutOfBoundsException$Activity;->b:I

    iget v3, p1, Lo/StringIndexOutOfBoundsException$Activity;->b:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    .line 693
    iget v2, p0, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    iget v3, p0, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ne v2, v0, :cond_3

    .line 695
    iget v2, p0, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    iget v3, p1, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    iget v3, p1, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    if-ne v2, v3, :cond_3

    return v0

    .line 699
    :cond_3
    iget v2, p0, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    iget v3, p1, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    if-eq v2, v3, :cond_4

    return v1

    .line 702
    :cond_4
    iget v2, p0, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    iget v3, p1, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    if-eq v2, v3, :cond_5

    return v1

    .line 705
    :cond_5
    iget-object v2, p0, Lo/StringIndexOutOfBoundsException$Activity;->c:Ljava/lang/Object;

    if-eqz v2, :cond_6

    .line 706
    iget-object p1, p1, Lo/StringIndexOutOfBoundsException$Activity;->c:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v1

    .line 709
    :cond_6
    iget-object p1, p1, Lo/StringIndexOutOfBoundsException$Activity;->c:Ljava/lang/Object;

    if-eqz p1, :cond_7

    return v1

    :cond_7
    return v0

    :cond_8
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 718
    iget v0, p0, Lo/StringIndexOutOfBoundsException$Activity;->b:I

    mul-int/lit8 v0, v0, 0x1f

    .line 719
    iget v1, p0, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 720
    iget v1, p0, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    invoke-virtual {p0}, Lo/StringIndexOutOfBoundsException$Activity;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "c:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",p:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/StringIndexOutOfBoundsException$Activity;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
