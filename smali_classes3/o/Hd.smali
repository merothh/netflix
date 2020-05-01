.class public Lo/Hd;
.super Lo/Hc;
.source ""

# interfaces
.implements Lo/IntToLongFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Hc;",
        "Lo/IntToLongFunction<",
        "Lo/Hc$ActionBar;",
        ">;"
    }
.end annotation


# instance fields
.field private f:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/Hd;",
            "Lo/Hc$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/Hd;",
            "Lo/Hc$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/Hd;",
            "Lo/Hc$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/Hd;",
            "Lo/Hc$ActionBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lo/Hc;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lo/Hd;->g(I)Lo/Hd;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 25
    check-cast p2, Lo/Hc$ActionBar;

    invoke-virtual {p0, p1, p2, p3}, Lo/Hd;->d(Lo/Consumer;Lo/Hc$ActionBar;I)V

    return-void
.end method

.method public a(Lo/Hc$ActionBar;)V
    .locals 1

    .line 73
    invoke-super {p0, p1}, Lo/Hc;->e(Lo/TimeUnit;)V

    .line 74
    iget-object v0, p0, Lo/Hd;->i:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 75
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Lo/OfPrimitive;)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lo/Hc;->a(Lo/OfPrimitive;)V

    .line 41
    invoke-virtual {p0, p1}, Lo/Hd;->e(Lo/OfPrimitive;)V

    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lo/Hd;->d(J)Lo/Hd;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Lo/Hd;
    .locals 0

    .line 136
    invoke-virtual {p0}, Lo/Hd;->i()V

    .line 137
    invoke-super {p0, p1}, Lo/Hc;->c(I)V

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Lo/Hd;
    .locals 0

    .line 203
    invoke-super {p0, p1}, Lo/Hc;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p2, Lo/Hc$ActionBar;

    invoke-virtual {p0, p1, p2}, Lo/Hd;->e(ILo/Hc$ActionBar;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 25
    check-cast p1, Lo/Hc$ActionBar;

    invoke-virtual {p0, p1, p2}, Lo/Hd;->c(Lo/Hc$ActionBar;I)V

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lo/Hd;->b(Ljava/lang/CharSequence;)Lo/Hd;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lo/Hd;->e(Lo/BiConsumer$Activity;)Lo/Hd;

    move-result-object p1

    return-object p1
.end method

.method public c(FFIILo/Hc$ActionBar;)V
    .locals 7

    .line 116
    iget-object v0, p0, Lo/Hd;->j:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 117
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 119
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/Hc;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public bridge synthetic c(FFIILo/TimeUnit;)V
    .locals 0

    .line 25
    check-cast p5, Lo/Hc$ActionBar;

    invoke-virtual/range {p0 .. p5}, Lo/Hd;->c(FFIILo/Hc$ActionBar;)V

    return-void
.end method

.method public synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 25
    check-cast p2, Lo/Hc$ActionBar;

    invoke-virtual {p0, p1, p2}, Lo/Hd;->e(ILo/Hc$ActionBar;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lo/Hc$ActionBar;

    invoke-virtual {p0, p1}, Lo/Hd;->a(Lo/Hc$ActionBar;)V

    return-void
.end method

.method public c(Lo/Hc$ActionBar;I)V
    .locals 1

    .line 52
    iget-object v0, p0, Lo/Hd;->f:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 53
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    const-string p1, "The model was changed during the bind call."

    .line 55
    invoke-virtual {p0, p1, p2}, Lo/Hd;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public d(J)Lo/Hd;
    .locals 0

    .line 185
    invoke-super {p0, p1, p2}, Lo/Hc;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 25
    move-object v5, p5

    check-cast v5, Lo/Hc$ActionBar;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/Hd;->c(FFIILo/Hc$ActionBar;)V

    return-void
.end method

.method public d(Lo/Consumer;Lo/Hc$ActionBar;I)V
    .locals 0

    const-string p1, "The model was changed between being added to the controller and being bound."

    .line 47
    invoke-virtual {p0, p1, p3}, Lo/Hd;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public e(Ljava/lang/Integer;)Lo/Hd;
    .locals 0

    .line 159
    invoke-virtual {p0}, Lo/Hd;->i()V

    .line 160
    invoke-super {p0, p1}, Lo/Hc;->a(Ljava/lang/Integer;)V

    return-object p0
.end method

.method public e(Lo/BiConsumer$Activity;)Lo/Hd;
    .locals 0

    .line 229
    invoke-super {p0, p1}, Lo/Hc;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public e(ILo/Hc$ActionBar;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lo/Hd;->h:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 97
    :cond_0
    invoke-super {p0, p1, p2}, Lo/Hc;->c(ILo/TimeUnit;)V

    return-void
.end method

.method public synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 25
    check-cast p1, Lo/Hc$ActionBar;

    invoke-virtual {p0, p1}, Lo/Hd;->a(Lo/Hc$ActionBar;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 270
    :cond_0
    instance-of v1, p1, Lo/Hd;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 273
    :cond_1
    invoke-super {p0, p1}, Lo/Hc;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 276
    :cond_2
    check-cast p1, Lo/Hd;

    .line 277
    iget-object v1, p0, Lo/Hd;->f:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/Hd;->f:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 280
    :cond_5
    iget-object v1, p0, Lo/Hd;->i:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/Hd;->i:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 283
    :cond_8
    iget-object v1, p0, Lo/Hd;->h:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/Hd;->h:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 286
    :cond_b
    iget-object v1, p0, Lo/Hd;->j:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/Hd;->j:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 289
    :cond_e
    invoke-virtual {p0}, Lo/Hd;->q()I

    move-result v1

    invoke-virtual {p1}, Lo/Hd;->q()I

    move-result v3

    if-eq v1, v3, :cond_f

    return v2

    .line 292
    :cond_f
    invoke-virtual {p0}, Lo/Hd;->r()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {p0}, Lo/Hd;->r()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lo/Hd;->r()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_8

    :cond_10
    invoke-virtual {p1}, Lo/Hd;->r()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_11

    :goto_8
    return v2

    .line 295
    :cond_11
    invoke-virtual {p0}, Lo/Hd;->p()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {p0}, Lo/Hd;->p()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lo/Hd;->p()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_9

    :cond_12
    invoke-virtual {p1}, Lo/Hd;->p()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_13

    :goto_9
    return v2

    .line 298
    :cond_13
    invoke-virtual {p0}, Lo/Hd;->l()I

    move-result v1

    invoke-virtual {p1}, Lo/Hd;->l()I

    move-result p1

    if-eq v1, p1, :cond_14

    return v2

    :cond_14
    return v0
.end method

.method public g(I)Lo/Hd;
    .locals 0

    .line 222
    invoke-super {p0, p1}, Lo/Hc;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 306
    invoke-super {p0}, Lo/Hc;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 307
    iget-object v1, p0, Lo/Hd;->f:Lo/AEADBadTagException;

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

    .line 308
    iget-object v1, p0, Lo/Hd;->i:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 309
    iget-object v1, p0, Lo/Hd;->h:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 310
    iget-object v1, p0, Lo/Hd;->j:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 311
    invoke-virtual {p0}, Lo/Hd;->q()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 312
    invoke-virtual {p0}, Lo/Hd;->r()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lo/Hd;->r()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 313
    invoke-virtual {p0}, Lo/Hd;->p()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lo/Hd;->p()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    :cond_5
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 314
    invoke-virtual {p0}, Lo/Hd;->l()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EmptyModel_{height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {p0}, Lo/Hd;->q()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundResource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {p0}, Lo/Hd;->r()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundAttribute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {p0}, Lo/Hd;->p()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bottomSpacing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {p0}, Lo/Hd;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-super {p0}, Lo/Hc;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
