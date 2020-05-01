.class public Lo/NI;
.super Lo/BiConsumer;
.source ""

# interfaces
.implements Lo/IntToLongFunction;
.implements Lo/NH;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/BiConsumer<",
        "Lo/NG;",
        ">;",
        "Lo/IntToLongFunction<",
        "Lo/NG;",
        ">;",
        "Lo/NH;"
    }
.end annotation


# instance fields
.field private a:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/NI;",
            "Lo/NG;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/BitSet;

.field private c:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/NI;",
            "Lo/NG;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/NI;",
            "Lo/NG;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/NI;",
            "Lo/NG;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Lo/BiConsumer;-><init>()V

    .line 27
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lo/NI;->b:Ljava/util/BitSet;

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/NI;->e(I)Lo/NI;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lo/NI;
    .locals 2

    if-eqz p1, :cond_0

    .line 208
    iget-object v0, p0, Lo/NI;->b:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 209
    invoke-virtual {p0}, Lo/NI;->i()V

    .line 210
    iput-object p1, p0, Lo/NI;->g:Ljava/lang/String;

    return-object p0

    .line 206
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "duration cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 26
    check-cast p2, Lo/NG;

    invoke-virtual {p0, p1, p2, p3}, Lo/NI;->e(Lo/Consumer;Lo/NG;I)V

    return-void
.end method

.method public a(Lo/OfPrimitive;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Lo/BiConsumer;->a(Lo/OfPrimitive;)V

    .line 50
    invoke-virtual {p0, p1}, Lo/NI;->e(Lo/OfPrimitive;)V

    .line 51
    iget-object p1, p0, Lo/NI;->b:Ljava/util/BitSet;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 54
    iget-object p1, p0, Lo/NI;->b:Ljava/util/BitSet;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 55
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "A value is required for setPrice"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "A value is required for setDuration"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected b()I
    .locals 1

    .line 290
    sget v0, Lo/NB$ActionBar;->a:I

    return v0
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Lo/NI;->e(J)Lo/NI;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Ljava/lang/CharSequence;)Lo/NH;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/NI;->e(Ljava/lang/CharSequence;)Lo/NI;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Ljava/lang/String;)Lo/NH;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/NI;->e(Ljava/lang/String;)Lo/NI;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p2, Lo/NG;

    invoke-virtual {p0, p1, p2}, Lo/NI;->e(ILo/NG;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 26
    check-cast p1, Lo/NG;

    invoke-virtual {p0, p1, p2}, Lo/NI;->c(Lo/NG;I)V

    return-void
.end method

.method public b(Lo/NG;)V
    .locals 1

    .line 115
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Ljava/lang/Object;)V

    .line 116
    iget-object v0, p0, Lo/NI;->a:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 117
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/NI;->e(Ljava/lang/CharSequence;)Lo/NI;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/NI;->d(Lo/BiConsumer$Activity;)Lo/NI;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Ljava/lang/String;)Lo/NH;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/NI;->a(Ljava/lang/String;)Lo/NI;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Lo/NG;

    invoke-virtual {p0, p1}, Lo/NI;->b(Lo/NG;)V

    return-void
.end method

.method public c(Lo/NG;I)V
    .locals 1

    .line 92
    iget-object v0, p0, Lo/NI;->c:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 93
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    const-string v0, "The model was changed during the bind call."

    .line 95
    invoke-virtual {p0, v0, p2}, Lo/NI;->d(Ljava/lang/String;I)V

    .line 96
    invoke-virtual {p1}, Lo/NG;->setLabel()V

    return-void
.end method

.method public d(Lo/BiConsumer$Activity;)Lo/NI;
    .locals 0

    .line 265
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 26
    move-object v5, p5

    check-cast v5, Lo/NG;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/NI;->e(FFIILo/NG;)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Lo/NG;

    invoke-virtual {p0, p1}, Lo/NI;->d(Lo/NG;)V

    return-void
.end method

.method public d(Lo/NG;)V
    .locals 1

    .line 67
    invoke-super {p0, p1}, Lo/BiConsumer;->d(Ljava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lo/NI;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo/NG;->setDuration(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lo/NI;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo/NG;->setPrice(Ljava/lang/String;)V

    return-void
.end method

.method public d(Lo/NG;Lo/BiConsumer;)V
    .locals 2

    .line 74
    instance-of v0, p2, Lo/NI;

    if-nez v0, :cond_0

    .line 75
    invoke-virtual {p0, p1}, Lo/NI;->d(Lo/NG;)V

    return-void

    .line 78
    :cond_0
    check-cast p2, Lo/NI;

    .line 79
    invoke-super {p0, p1}, Lo/BiConsumer;->d(Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lo/NI;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p2, Lo/NI;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_1
    iget-object v0, p2, Lo/NI;->g:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 82
    :goto_0
    iget-object v0, p0, Lo/NI;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo/NG;->setDuration(Ljava/lang/String;)V

    .line 85
    :cond_2
    iget-object v0, p0, Lo/NI;->j:Ljava/lang/String;

    iget-object p2, p2, Lo/NI;->j:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    .line 86
    :goto_1
    iget-object p2, p0, Lo/NI;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lo/NG;->setPrice(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public e(III)I
    .locals 0

    return p1
.end method

.method public e(I)Lo/NI;
    .locals 0

    .line 258
    invoke-super {p0, p1}, Lo/BiConsumer;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public e(J)Lo/NI;
    .locals 0

    .line 221
    invoke-super {p0, p1, p2}, Lo/BiConsumer;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public e(Ljava/lang/CharSequence;)Lo/NI;
    .locals 0

    .line 239
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lo/NI;
    .locals 2

    if-eqz p1, :cond_0

    .line 188
    iget-object v0, p0, Lo/NI;->b:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 189
    invoke-virtual {p0}, Lo/NI;->i()V

    .line 190
    iput-object p1, p0, Lo/NI;->j:Ljava/lang/String;

    return-object p0

    .line 186
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "price cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(FFIILo/NG;)V
    .locals 7

    .line 160
    iget-object v0, p0, Lo/NI;->f:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 161
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 163
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/BiConsumer;->d(FFIILjava/lang/Object;)V

    return-void
.end method

.method public e(ILo/NG;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lo/NI;->h:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 139
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 141
    :cond_0
    invoke-super {p0, p1, p2}, Lo/BiConsumer;->b(ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic e(Ljava/lang/Object;Lo/BiConsumer;)V
    .locals 0

    .line 26
    check-cast p1, Lo/NG;

    invoke-virtual {p0, p1, p2}, Lo/NI;->d(Lo/NG;Lo/BiConsumer;)V

    return-void
.end method

.method public e(Lo/Consumer;Lo/NG;I)V
    .locals 0

    const-string p1, "The model was changed between being added to the controller and being bound."

    .line 62
    invoke-virtual {p0, p1, p3}, Lo/NI;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 311
    :cond_0
    instance-of v1, p1, Lo/NI;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 314
    :cond_1
    invoke-super {p0, p1}, Lo/BiConsumer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 317
    :cond_2
    check-cast p1, Lo/NI;

    .line 318
    iget-object v1, p0, Lo/NI;->c:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/NI;->c:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 321
    :cond_5
    iget-object v1, p0, Lo/NI;->a:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/NI;->a:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 324
    :cond_8
    iget-object v1, p0, Lo/NI;->h:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/NI;->h:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 327
    :cond_b
    iget-object v1, p0, Lo/NI;->f:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/NI;->f:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 330
    :cond_e
    iget-object v1, p0, Lo/NI;->j:Ljava/lang/String;

    if-eqz v1, :cond_f

    iget-object v3, p1, Lo/NI;->j:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_8

    :cond_f
    iget-object v1, p1, Lo/NI;->j:Ljava/lang/String;

    if-eqz v1, :cond_10

    :goto_8
    return v2

    .line 333
    :cond_10
    iget-object v1, p0, Lo/NI;->g:Ljava/lang/String;

    iget-object p1, p1, Lo/NI;->g:Ljava/lang/String;

    if-eqz v1, :cond_11

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_9

    :cond_11
    if-eqz p1, :cond_12

    :goto_9
    return v2

    :cond_12
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 341
    invoke-super {p0}, Lo/BiConsumer;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 342
    iget-object v1, p0, Lo/NI;->c:Lo/AEADBadTagException;

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

    .line 343
    iget-object v1, p0, Lo/NI;->a:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 344
    iget-object v1, p0, Lo/NI;->h:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 345
    iget-object v1, p0, Lo/NI;->f:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 346
    iget-object v1, p0, Lo/NI;->j:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 347
    iget-object v1, p0, Lo/NI;->g:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    :cond_5
    add-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultiMonthAnnualDiscountPriceTextViewModel_{price_String="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/NI;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", duration_String="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/NI;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-super {p0}, Lo/BiConsumer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
