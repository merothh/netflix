.class public Lo/HM;
.super Lo/HI;
.source ""

# interfaces
.implements Lo/IntToLongFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/HI;",
        "Lo/IntToLongFunction<",
        "Lo/Hz;",
        ">;"
    }
.end annotation


# instance fields
.field private f:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/HM;",
            "Lo/Hz;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/HM;",
            "Lo/Hz;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/HM;",
            "Lo/Hz;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/HM;",
            "Lo/Hz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lo/HI;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lo/HM;->b(I)Lo/HM;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/CharSequence;)Lo/HM;
    .locals 0

    .line 177
    invoke-super {p0, p1}, Lo/HI;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public a(FFIILo/Hz;)V
    .locals 7

    .line 115
    iget-object v0, p0, Lo/HM;->j:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 116
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 118
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/HI;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 22
    check-cast p2, Lo/Hz;

    invoke-virtual {p0, p1, p2, p3}, Lo/HM;->d(Lo/Consumer;Lo/Hz;I)V

    return-void
.end method

.method public a(Lo/Hz;)V
    .locals 1

    .line 71
    invoke-super {p0, p1}, Lo/HI;->e(Lo/TimeUnit;)V

    .line 72
    iget-object v0, p0, Lo/HM;->i:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Lo/OfPrimitive;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lo/HI;->a(Lo/OfPrimitive;)V

    .line 38
    invoke-virtual {p0, p1}, Lo/HM;->e(Lo/OfPrimitive;)V

    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lo/HM;->d(J)Lo/HM;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Lo/HM;
    .locals 0

    .line 195
    invoke-super {p0, p1}, Lo/HI;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public b(Lo/BiConsumer$Activity;)Lo/HM;
    .locals 0

    .line 201
    invoke-super {p0, p1}, Lo/HI;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p2, Lo/Hz;

    invoke-virtual {p0, p1, p2}, Lo/HM;->d(ILo/Hz;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 22
    check-cast p1, Lo/Hz;

    invoke-virtual {p0, p1, p2}, Lo/HM;->e(Lo/Hz;I)V

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lo/HM;->a(Ljava/lang/CharSequence;)Lo/HM;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lo/HM;->b(Lo/BiConsumer$Activity;)Lo/HM;

    move-result-object p1

    return-object p1
.end method

.method public c(Z)Lo/HM;
    .locals 0

    .line 135
    invoke-virtual {p0}, Lo/HM;->i()V

    .line 136
    invoke-super {p0, p1}, Lo/HI;->b(Z)V

    return-object p0
.end method

.method public synthetic c(FFIILo/TimeUnit;)V
    .locals 6

    .line 22
    move-object v5, p5

    check-cast v5, Lo/Hz;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/HM;->a(FFIILo/Hz;)V

    return-void
.end method

.method public synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 22
    check-cast p2, Lo/Hz;

    invoke-virtual {p0, p1, p2}, Lo/HM;->d(ILo/Hz;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p1, Lo/Hz;

    invoke-virtual {p0, p1}, Lo/HM;->a(Lo/Hz;)V

    return-void
.end method

.method public d(J)Lo/HM;
    .locals 0

    .line 159
    invoke-super {p0, p1, p2}, Lo/HI;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 22
    move-object v5, p5

    check-cast v5, Lo/Hz;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/HM;->a(FFIILo/Hz;)V

    return-void
.end method

.method public d(ILo/Hz;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lo/HM;->g:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 94
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 96
    :cond_0
    invoke-super {p0, p1, p2}, Lo/HI;->c(ILo/TimeUnit;)V

    return-void
.end method

.method public d(Lo/Consumer;Lo/Hz;I)V
    .locals 0

    const-string p1, "The model was changed between being added to the controller and being bound."

    .line 44
    invoke-virtual {p0, p1, p3}, Lo/HM;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public e(Lo/Hz;I)V
    .locals 1

    .line 49
    iget-object v0, p0, Lo/HM;->f:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 50
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    const-string p1, "The model was changed during the bind call."

    .line 52
    invoke-virtual {p0, p1, p2}, Lo/HM;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 22
    check-cast p1, Lo/Hz;

    invoke-virtual {p0, p1}, Lo/HM;->a(Lo/Hz;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 240
    :cond_0
    instance-of v1, p1, Lo/HM;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 243
    :cond_1
    invoke-super {p0, p1}, Lo/HI;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 246
    :cond_2
    check-cast p1, Lo/HM;

    .line 247
    iget-object v1, p0, Lo/HM;->f:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/HM;->f:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 250
    :cond_5
    iget-object v1, p0, Lo/HM;->i:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/HM;->i:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 253
    :cond_8
    iget-object v1, p0, Lo/HM;->g:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/HM;->g:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 256
    :cond_b
    iget-object v1, p0, Lo/HM;->j:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/HM;->j:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 259
    :cond_e
    invoke-virtual {p0}, Lo/HM;->q()Z

    move-result v1

    invoke-virtual {p1}, Lo/HM;->q()Z

    move-result v3

    if-eq v1, v3, :cond_f

    return v2

    .line 262
    :cond_f
    invoke-virtual {p0}, Lo/HM;->l()I

    move-result v1

    invoke-virtual {p1}, Lo/HM;->l()I

    move-result p1

    if-eq v1, p1, :cond_10

    return v2

    :cond_10
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 270
    invoke-super {p0}, Lo/HI;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 271
    iget-object v1, p0, Lo/HM;->f:Lo/AEADBadTagException;

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

    .line 272
    iget-object v1, p0, Lo/HM;->i:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 273
    iget-object v1, p0, Lo/HM;->g:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 274
    iget-object v1, p0, Lo/HM;->j:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 275
    invoke-virtual {p0}, Lo/HM;->q()Z

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 276
    invoke-virtual {p0}, Lo/HM;->l()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShareButtonModel_{displayButtonLabels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {p0}, Lo/HM;->q()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", bottomSpacing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {p0}, Lo/HM;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-super {p0}, Lo/HI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
