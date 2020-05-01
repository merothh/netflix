.class public Lo/NC;
.super Lo/BiConsumer;
.source ""

# interfaces
.implements Lo/IntToLongFunction;
.implements Lo/NE;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/BiConsumer<",
        "Lo/NF;",
        ">;",
        "Lo/IntToLongFunction<",
        "Lo/NF;",
        ">;",
        "Lo/NE;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/BitSet;

.field private b:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/NC;",
            "Lo/NF;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/NC;",
            "Lo/NF;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private i:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/NC;",
            "Lo/NF;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/NC;",
            "Lo/NF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Lo/BiConsumer;-><init>()V

    .line 27
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lo/NC;->a:Ljava/util/BitSet;

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/NC;->c(I)Lo/NC;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/lang/CharSequence;)Lo/NE;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/NC;->b(Ljava/lang/CharSequence;)Lo/NC;

    move-result-object p1

    return-object p1
.end method

.method public a(ILo/NF;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lo/NC;->j:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 126
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 128
    :cond_0
    invoke-super {p0, p1, p2}, Lo/BiConsumer;->b(ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 26
    check-cast p2, Lo/NF;

    invoke-virtual {p0, p1, p2, p3}, Lo/NC;->b(Lo/Consumer;Lo/NF;I)V

    return-void
.end method

.method public a(Lo/NF;)V
    .locals 1

    .line 102
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Ljava/lang/Object;)V

    .line 103
    iget-object v0, p0, Lo/NC;->b:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 104
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Lo/OfPrimitive;)V
    .locals 1

    .line 44
    invoke-super {p0, p1}, Lo/BiConsumer;->a(Lo/OfPrimitive;)V

    .line 45
    invoke-virtual {p0, p1}, Lo/NC;->e(Lo/OfPrimitive;)V

    .line 46
    iget-object p1, p0, Lo/NC;->a:Ljava/util/BitSet;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 47
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "A value is required for setDuration"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected b()I
    .locals 1

    .line 257
    sget v0, Lo/NB$ActionBar;->e:I

    return v0
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Lo/NC;->c(J)Lo/NC;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/CharSequence;)Lo/NC;
    .locals 0

    .line 206
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public b(FFIILo/NF;)V
    .locals 7

    .line 147
    iget-object v0, p0, Lo/NC;->i:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 148
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 150
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/BiConsumer;->d(FFIILjava/lang/Object;)V

    return-void
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p2, Lo/NF;

    invoke-virtual {p0, p1, p2}, Lo/NC;->a(ILo/NF;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 26
    check-cast p1, Lo/NF;

    invoke-virtual {p0, p1, p2}, Lo/NC;->d(Lo/NF;I)V

    return-void
.end method

.method public b(Lo/Consumer;Lo/NF;I)V
    .locals 0

    const-string p1, "The model was changed between being added to the controller and being bound."

    .line 54
    invoke-virtual {p0, p1, p3}, Lo/NC;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public b(Lo/NF;Lo/BiConsumer;)V
    .locals 1

    .line 66
    instance-of v0, p2, Lo/NC;

    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p0, p1}, Lo/NC;->c(Lo/NF;)V

    return-void

    .line 70
    :cond_0
    check-cast p2, Lo/NC;

    .line 71
    invoke-super {p0, p1}, Lo/BiConsumer;->d(Ljava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lo/NC;->f:Ljava/lang/String;

    iget-object p2, p2, Lo/NC;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 74
    :goto_0
    iget-object p2, p0, Lo/NC;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lo/NF;->setDuration(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/NC;->b(Ljava/lang/CharSequence;)Lo/NC;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/NC;->e(Lo/BiConsumer$Activity;)Lo/NC;

    move-result-object p1

    return-object p1
.end method

.method public c(I)Lo/NC;
    .locals 0

    .line 225
    invoke-super {p0, p1}, Lo/BiConsumer;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public c(J)Lo/NC;
    .locals 0

    .line 188
    invoke-super {p0, p1, p2}, Lo/BiConsumer;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lo/NC;
    .locals 2

    if-eqz p1, :cond_0

    .line 175
    iget-object v0, p0, Lo/NC;->a:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 176
    invoke-virtual {p0}, Lo/NC;->i()V

    .line 177
    iput-object p1, p0, Lo/NC;->f:Ljava/lang/String;

    return-object p0

    .line 173
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "duration cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Lo/NF;

    invoke-virtual {p0, p1}, Lo/NC;->a(Lo/NF;)V

    return-void
.end method

.method public c(Lo/NF;)V
    .locals 1

    .line 59
    invoke-super {p0, p1}, Lo/BiConsumer;->d(Ljava/lang/Object;)V

    .line 60
    iget-object v0, p0, Lo/NC;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo/NF;->setDuration(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/String;)Lo/NE;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/NC;->c(Ljava/lang/String;)Lo/NC;

    move-result-object p1

    return-object p1
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 26
    move-object v5, p5

    check-cast v5, Lo/NF;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/NC;->b(FFIILo/NF;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Lo/NF;

    invoke-virtual {p0, p1}, Lo/NC;->c(Lo/NF;)V

    return-void
.end method

.method public d(Lo/NF;I)V
    .locals 1

    .line 80
    iget-object v0, p0, Lo/NC;->c:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 81
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    const-string p1, "The model was changed during the bind call."

    .line 83
    invoke-virtual {p0, p1, p2}, Lo/NC;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public e(III)I
    .locals 0

    return p1
.end method

.method public e(Lo/BiConsumer$Activity;)Lo/NC;
    .locals 0

    .line 232
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic e(Ljava/lang/Object;Lo/BiConsumer;)V
    .locals 0

    .line 26
    check-cast p1, Lo/NF;

    invoke-virtual {p0, p1, p2}, Lo/NC;->b(Lo/NF;Lo/BiConsumer;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 277
    :cond_0
    instance-of v1, p1, Lo/NC;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 280
    :cond_1
    invoke-super {p0, p1}, Lo/BiConsumer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 283
    :cond_2
    check-cast p1, Lo/NC;

    .line 284
    iget-object v1, p0, Lo/NC;->c:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/NC;->c:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 287
    :cond_5
    iget-object v1, p0, Lo/NC;->b:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/NC;->b:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 290
    :cond_8
    iget-object v1, p0, Lo/NC;->j:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/NC;->j:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 293
    :cond_b
    iget-object v1, p0, Lo/NC;->i:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/NC;->i:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 296
    :cond_e
    iget-object v1, p0, Lo/NC;->f:Ljava/lang/String;

    iget-object p1, p1, Lo/NC;->f:Ljava/lang/String;

    if-eqz v1, :cond_f

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_8

    :cond_f
    if-eqz p1, :cond_10

    :goto_8
    return v2

    :cond_10
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 304
    invoke-super {p0}, Lo/BiConsumer;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 305
    iget-object v1, p0, Lo/NC;->c:Lo/AEADBadTagException;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 306
    iget-object v1, p0, Lo/NC;->b:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 307
    iget-object v1, p0, Lo/NC;->j:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 308
    iget-object v1, p0, Lo/NC;->i:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 309
    iget-object v1, p0, Lo/NC;->f:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    :cond_4
    add-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultiMonthAnnualDiscountDurationTextViewModel_{duration_String="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/NC;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-super {p0}, Lo/BiConsumer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
