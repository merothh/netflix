.class public Lo/NP;
.super Lo/BiConsumer;
.source ""

# interfaces
.implements Lo/IntToLongFunction;
.implements Lo/NK;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/BiConsumer<",
        "Lo/NJ;",
        ">;",
        "Lo/IntToLongFunction<",
        "Lo/NJ;",
        ">;",
        "Lo/NK;"
    }
.end annotation


# instance fields
.field private a:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/NP;",
            "Lo/NJ;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/BitSet;

.field private c:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/NP;",
            "Lo/NJ;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/NP;",
            "Lo/NJ;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/NP;",
            "Lo/NJ;",
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

    iput-object v0, p0, Lo/NP;->b:Ljava/util/BitSet;

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/NP;->d(I)Lo/NP;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/lang/CharSequence;)Lo/NK;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/NP;->d(Ljava/lang/CharSequence;)Lo/NP;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/lang/String;)Lo/NK;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/NP;->c(Ljava/lang/String;)Lo/NP;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 26
    check-cast p2, Lo/NJ;

    invoke-virtual {p0, p1, p2, p3}, Lo/NP;->a(Lo/Consumer;Lo/NJ;I)V

    return-void
.end method

.method public a(Lo/Consumer;Lo/NJ;I)V
    .locals 0

    const-string p1, "The model was changed between being added to the controller and being bound."

    .line 54
    invoke-virtual {p0, p1, p3}, Lo/NP;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Lo/OfPrimitive;)V
    .locals 1

    .line 44
    invoke-super {p0, p1}, Lo/BiConsumer;->a(Lo/OfPrimitive;)V

    .line 45
    invoke-virtual {p0, p1}, Lo/NP;->e(Lo/OfPrimitive;)V

    .line 46
    iget-object p1, p0, Lo/NP;->b:Ljava/util/BitSet;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 47
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "A value is required for setPrice"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected b()I
    .locals 1

    .line 256
    sget v0, Lo/NB$ActionBar;->c:I

    return v0
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Lo/NP;->c(J)Lo/NP;

    move-result-object p1

    return-object p1
.end method

.method public b(Lo/BiConsumer$Activity;)Lo/NP;
    .locals 0

    .line 231
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p2, Lo/NJ;

    invoke-virtual {p0, p1, p2}, Lo/NP;->c(ILo/NJ;)V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 26
    check-cast p1, Lo/NJ;

    invoke-virtual {p0, p1, p2}, Lo/NP;->b(Lo/NJ;I)V

    return-void
.end method

.method public b(Lo/NJ;I)V
    .locals 1

    .line 79
    iget-object v0, p0, Lo/NP;->c:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 80
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    const-string p1, "The model was changed during the bind call."

    .line 82
    invoke-virtual {p0, p1, p2}, Lo/NP;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/NP;->d(Ljava/lang/CharSequence;)Lo/NP;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/NP;->b(Lo/BiConsumer$Activity;)Lo/NP;

    move-result-object p1

    return-object p1
.end method

.method public c(J)Lo/NP;
    .locals 0

    .line 187
    invoke-super {p0, p1, p2}, Lo/BiConsumer;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lo/NP;
    .locals 2

    if-eqz p1, :cond_0

    .line 174
    iget-object v0, p0, Lo/NP;->b:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 175
    invoke-virtual {p0}, Lo/NP;->i()V

    .line 176
    iput-object p1, p0, Lo/NP;->f:Ljava/lang/String;

    return-object p0

    .line 172
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "price cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(ILo/NJ;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lo/NP;->g:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 125
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 127
    :cond_0
    invoke-super {p0, p1, p2}, Lo/BiConsumer;->b(ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Lo/NJ;

    invoke-virtual {p0, p1}, Lo/NP;->e(Lo/NJ;)V

    return-void
.end method

.method public c(Lo/NJ;)V
    .locals 1

    .line 59
    invoke-super {p0, p1}, Lo/BiConsumer;->d(Ljava/lang/Object;)V

    .line 60
    iget-object v0, p0, Lo/NP;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo/NJ;->setPrice(Ljava/lang/String;)V

    return-void
.end method

.method public d(I)Lo/NP;
    .locals 0

    .line 224
    invoke-super {p0, p1}, Lo/BiConsumer;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public d(Ljava/lang/CharSequence;)Lo/NP;
    .locals 0

    .line 205
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 26
    move-object v5, p5

    check-cast v5, Lo/NJ;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/NP;->e(FFIILo/NJ;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Lo/NJ;

    invoke-virtual {p0, p1}, Lo/NP;->c(Lo/NJ;)V

    return-void
.end method

.method public e(III)I
    .locals 0

    return p1
.end method

.method public e(FFIILo/NJ;)V
    .locals 7

    .line 146
    iget-object v0, p0, Lo/NP;->i:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 147
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 149
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/BiConsumer;->d(FFIILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic e(Ljava/lang/Object;Lo/BiConsumer;)V
    .locals 0

    .line 26
    check-cast p1, Lo/NJ;

    invoke-virtual {p0, p1, p2}, Lo/NP;->e(Lo/NJ;Lo/BiConsumer;)V

    return-void
.end method

.method public e(Lo/NJ;)V
    .locals 1

    .line 101
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Ljava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lo/NP;->a:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 103
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public e(Lo/NJ;Lo/BiConsumer;)V
    .locals 1

    .line 65
    instance-of v0, p2, Lo/NP;

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p0, p1}, Lo/NP;->c(Lo/NJ;)V

    return-void

    .line 69
    :cond_0
    check-cast p2, Lo/NP;

    .line 70
    invoke-super {p0, p1}, Lo/BiConsumer;->d(Ljava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lo/NP;->f:Ljava/lang/String;

    iget-object p2, p2, Lo/NP;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 73
    :goto_0
    iget-object p2, p0, Lo/NP;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lo/NJ;->setPrice(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 276
    :cond_0
    instance-of v1, p1, Lo/NP;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 279
    :cond_1
    invoke-super {p0, p1}, Lo/BiConsumer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 282
    :cond_2
    check-cast p1, Lo/NP;

    .line 283
    iget-object v1, p0, Lo/NP;->c:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/NP;->c:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 286
    :cond_5
    iget-object v1, p0, Lo/NP;->a:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/NP;->a:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 289
    :cond_8
    iget-object v1, p0, Lo/NP;->g:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/NP;->g:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 292
    :cond_b
    iget-object v1, p0, Lo/NP;->i:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/NP;->i:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 295
    :cond_e
    iget-object v1, p0, Lo/NP;->f:Ljava/lang/String;

    iget-object p1, p1, Lo/NP;->f:Ljava/lang/String;

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

    .line 303
    invoke-super {p0}, Lo/BiConsumer;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 304
    iget-object v1, p0, Lo/NP;->c:Lo/AEADBadTagException;

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

    .line 305
    iget-object v1, p0, Lo/NP;->a:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 306
    iget-object v1, p0, Lo/NP;->g:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 307
    iget-object v1, p0, Lo/NP;->i:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 308
    iget-object v1, p0, Lo/NP;->f:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    :cond_4
    add-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultiMonthAnnualFullPriceTextViewModel_{price_String="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/NP;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-super {p0}, Lo/BiConsumer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
