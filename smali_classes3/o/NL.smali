.class public Lo/NL;
.super Lo/BiConsumer;
.source ""

# interfaces
.implements Lo/IntToLongFunction;
.implements Lo/NM;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/BiConsumer<",
        "Lo/NN;",
        ">;",
        "Lo/IntToLongFunction<",
        "Lo/NN;",
        ">;",
        "Lo/NM;"
    }
.end annotation


# instance fields
.field private a:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/NL;",
            "Lo/NN;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/NL;",
            "Lo/NN;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/BitSet;

.field private h:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/NL;",
            "Lo/NN;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/NL;",
            "Lo/NN;",
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

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lo/NL;->c:Ljava/util/BitSet;

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/NL;->c(I)Lo/NL;

    move-result-object p1

    return-object p1
.end method

.method public a(J)Lo/NL;
    .locals 0

    .line 188
    invoke-super {p0, p1, p2}, Lo/BiConsumer;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic a(Ljava/lang/CharSequence;)Lo/NM;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/NL;->b(Ljava/lang/CharSequence;)Lo/NL;

    move-result-object p1

    return-object p1
.end method

.method public a(ILo/NN;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lo/NL;->i:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 125
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 127
    :cond_0
    invoke-super {p0, p1, p2}, Lo/BiConsumer;->b(ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 26
    check-cast p2, Lo/NN;

    invoke-virtual {p0, p1, p2, p3}, Lo/NL;->e(Lo/Consumer;Lo/NN;I)V

    return-void
.end method

.method public a(Lo/OfPrimitive;)V
    .locals 1

    .line 44
    invoke-super {p0, p1}, Lo/BiConsumer;->a(Lo/OfPrimitive;)V

    .line 45
    invoke-virtual {p0, p1}, Lo/NL;->e(Lo/OfPrimitive;)V

    .line 46
    iget-object p1, p0, Lo/NL;->c:Ljava/util/BitSet;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 47
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "A value is required for setDiscountPercentage"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected b()I
    .locals 1

    .line 257
    sget v0, Lo/NB$ActionBar;->d:I

    return v0
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Lo/NL;->a(J)Lo/NL;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/CharSequence;)Lo/NL;
    .locals 0

    .line 206
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public b(Lo/BiConsumer$Activity;)Lo/NL;
    .locals 0

    .line 232
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p2, Lo/NN;

    invoke-virtual {p0, p1, p2}, Lo/NL;->a(ILo/NN;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 26
    check-cast p1, Lo/NN;

    invoke-virtual {p0, p1, p2}, Lo/NL;->d(Lo/NN;I)V

    return-void
.end method

.method public b(Lo/NN;)V
    .locals 1

    .line 59
    invoke-super {p0, p1}, Lo/BiConsumer;->d(Ljava/lang/Object;)V

    .line 60
    iget-object v0, p0, Lo/NL;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo/NN;->setDiscountPercentage(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/NL;->b(Ljava/lang/CharSequence;)Lo/NL;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/NL;->b(Lo/BiConsumer$Activity;)Lo/NL;

    move-result-object p1

    return-object p1
.end method

.method public c(I)Lo/NL;
    .locals 0

    .line 225
    invoke-super {p0, p1}, Lo/BiConsumer;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Lo/NN;

    invoke-virtual {p0, p1}, Lo/NL;->d(Lo/NN;)V

    return-void
.end method

.method public d(Ljava/lang/String;)Lo/NL;
    .locals 2

    if-eqz p1, :cond_0

    .line 175
    iget-object v0, p0, Lo/NL;->c:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 176
    invoke-virtual {p0}, Lo/NL;->i()V

    .line 177
    iput-object p1, p0, Lo/NL;->j:Ljava/lang/String;

    return-object p0

    .line 173
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "discountPercentage cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic d(FFIILjava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p5, Lo/NN;

    invoke-virtual/range {p0 .. p5}, Lo/NL;->d(FFIILo/NN;)V

    return-void
.end method

.method public d(FFIILo/NN;)V
    .locals 7

    .line 146
    iget-object v0, p0, Lo/NL;->h:Lo/EncryptedPrivateKeyInfo;

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

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Lo/NN;

    invoke-virtual {p0, p1}, Lo/NL;->b(Lo/NN;)V

    return-void
.end method

.method public d(Lo/NN;)V
    .locals 1

    .line 101
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Ljava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lo/NL;->b:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 103
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public d(Lo/NN;I)V
    .locals 1

    .line 79
    iget-object v0, p0, Lo/NL;->a:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 80
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    const-string p1, "The model was changed during the bind call."

    .line 82
    invoke-virtual {p0, p1, p2}, Lo/NL;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public d(Lo/NN;Lo/BiConsumer;)V
    .locals 1

    .line 65
    instance-of v0, p2, Lo/NL;

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p0, p1}, Lo/NL;->b(Lo/NN;)V

    return-void

    .line 69
    :cond_0
    check-cast p2, Lo/NL;

    .line 70
    invoke-super {p0, p1}, Lo/BiConsumer;->d(Ljava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lo/NL;->j:Ljava/lang/String;

    iget-object p2, p2, Lo/NL;->j:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 73
    :goto_0
    iget-object p2, p0, Lo/NL;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lo/NN;->setDiscountPercentage(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public e(III)I
    .locals 0

    return p1
.end method

.method public synthetic e(Ljava/lang/String;)Lo/NM;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/NL;->d(Ljava/lang/String;)Lo/NL;

    move-result-object p1

    return-object p1
.end method

.method public synthetic e(Ljava/lang/Object;Lo/BiConsumer;)V
    .locals 0

    .line 26
    check-cast p1, Lo/NN;

    invoke-virtual {p0, p1, p2}, Lo/NL;->d(Lo/NN;Lo/BiConsumer;)V

    return-void
.end method

.method public e(Lo/Consumer;Lo/NN;I)V
    .locals 0

    const-string p1, "The model was changed between being added to the controller and being bound."

    .line 54
    invoke-virtual {p0, p1, p3}, Lo/NL;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 277
    :cond_0
    instance-of v1, p1, Lo/NL;

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
    check-cast p1, Lo/NL;

    .line 284
    iget-object v1, p0, Lo/NL;->a:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/NL;->a:Lo/AEADBadTagException;

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
    iget-object v1, p0, Lo/NL;->b:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/NL;->b:Lo/CipherInputStream;

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
    iget-object v1, p0, Lo/NL;->i:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/NL;->i:Lo/CipherSpi;

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
    iget-object v1, p0, Lo/NL;->h:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/NL;->h:Lo/EncryptedPrivateKeyInfo;

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
    iget-object v1, p0, Lo/NL;->j:Ljava/lang/String;

    iget-object p1, p1, Lo/NL;->j:Ljava/lang/String;

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
    iget-object v1, p0, Lo/NL;->a:Lo/AEADBadTagException;

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
    iget-object v1, p0, Lo/NL;->b:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 307
    iget-object v1, p0, Lo/NL;->i:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 308
    iget-object v1, p0, Lo/NL;->h:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 309
    iget-object v1, p0, Lo/NL;->j:Ljava/lang/String;

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

    const-string v1, "MultiMonthAnnualSaveDiscountTextViewModel_{discountPercentage_String="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/NL;->j:Ljava/lang/String;

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
