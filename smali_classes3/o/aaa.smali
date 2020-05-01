.class public Lo/aaa;
.super Lo/ZV;
.source ""

# interfaces
.implements Lo/IntToLongFunction;
.implements Lo/ZW;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/ZV;",
        "Lo/IntToLongFunction<",
        "Lo/ZV$Activity;",
        ">;",
        "Lo/ZW;"
    }
.end annotation


# instance fields
.field private b:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/aaa;",
            "Lo/ZV$Activity;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/aaa;",
            "Lo/ZV$Activity;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/aaa;",
            "Lo/ZV$Activity;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/aaa;",
            "Lo/ZV$Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lo/ZV;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lo/aaa;->d(I)Lo/aaa;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/lang/String;)Lo/ZW;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lo/aaa;->b(Ljava/lang/String;)Lo/aaa;

    move-result-object p1

    return-object p1
.end method

.method public a(FFIILo/ZV$Activity;)V
    .locals 7

    .line 116
    iget-object v0, p0, Lo/aaa;->g:Lo/EncryptedPrivateKeyInfo;

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
    invoke-super/range {p0 .. p5}, Lo/ZV;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public a(ILo/ZV$Activity;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lo/aaa;->f:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 97
    :cond_0
    invoke-super {p0, p1, p2}, Lo/ZV;->c(ILo/TimeUnit;)V

    return-void
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 22
    check-cast p2, Lo/ZV$Activity;

    invoke-virtual {p0, p1, p2, p3}, Lo/aaa;->d(Lo/Consumer;Lo/ZV$Activity;I)V

    return-void
.end method

.method public a(Lo/OfPrimitive;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lo/ZV;->a(Lo/OfPrimitive;)V

    .line 38
    invoke-virtual {p0, p1}, Lo/aaa;->e(Lo/OfPrimitive;)V

    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lo/aaa;->e(J)Lo/aaa;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/CharSequence;)Lo/aaa;
    .locals 0

    .line 177
    invoke-super {p0, p1}, Lo/ZV;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lo/aaa;
    .locals 0

    .line 136
    invoke-virtual {p0}, Lo/aaa;->i()V

    .line 137
    iput-object p1, p0, Lo/ZV;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b(Lo/BiConsumer$Activity;)Lo/aaa;
    .locals 0

    .line 203
    invoke-super {p0, p1}, Lo/ZV;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p2, Lo/ZV$Activity;

    invoke-virtual {p0, p1, p2}, Lo/aaa;->a(ILo/ZV$Activity;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 22
    check-cast p1, Lo/ZV$Activity;

    invoke-virtual {p0, p1, p2}, Lo/aaa;->d(Lo/ZV$Activity;I)V

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lo/aaa;->b(Ljava/lang/CharSequence;)Lo/aaa;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lo/aaa;->b(Lo/BiConsumer$Activity;)Lo/aaa;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(FFIILo/TimeUnit;)V
    .locals 6

    .line 22
    move-object v5, p5

    check-cast v5, Lo/ZV$Activity;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/aaa;->a(FFIILo/ZV$Activity;)V

    return-void
.end method

.method public synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 22
    check-cast p2, Lo/ZV$Activity;

    invoke-virtual {p0, p1, p2}, Lo/aaa;->a(ILo/ZV$Activity;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p1, Lo/ZV$Activity;

    invoke-virtual {p0, p1}, Lo/aaa;->d(Lo/ZV$Activity;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/CharSequence;)Lo/ZW;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lo/aaa;->b(Ljava/lang/CharSequence;)Lo/aaa;

    move-result-object p1

    return-object p1
.end method

.method public d(I)Lo/aaa;
    .locals 0

    .line 196
    invoke-super {p0, p1}, Lo/ZV;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lo/aaa;
    .locals 0

    .line 147
    invoke-virtual {p0}, Lo/aaa;->i()V

    .line 148
    invoke-super {p0, p1}, Lo/ZV;->i_(Ljava/lang/String;)V

    return-object p0
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 22
    move-object v5, p5

    check-cast v5, Lo/ZV$Activity;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/aaa;->a(FFIILo/ZV$Activity;)V

    return-void
.end method

.method public d(Lo/Consumer;Lo/ZV$Activity;I)V
    .locals 0

    const-string p1, "The model was changed between being added to the controller and being bound."

    .line 44
    invoke-virtual {p0, p1, p3}, Lo/aaa;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public d(Lo/ZV$Activity;)V
    .locals 1

    .line 71
    invoke-super {p0, p1}, Lo/ZV;->e(Lo/TimeUnit;)V

    .line 72
    iget-object v0, p0, Lo/aaa;->c:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public d(Lo/ZV$Activity;I)V
    .locals 1

    .line 49
    iget-object v0, p0, Lo/aaa;->b:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 50
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    const-string p1, "The model was changed during the bind call."

    .line 52
    invoke-virtual {p0, p1, p2}, Lo/aaa;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic e(Ljava/lang/String;)Lo/ZW;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lo/aaa;->d(Ljava/lang/String;)Lo/aaa;

    move-result-object p1

    return-object p1
.end method

.method public e(J)Lo/aaa;
    .locals 0

    .line 159
    invoke-super {p0, p1, p2}, Lo/ZV;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 22
    check-cast p1, Lo/ZV$Activity;

    invoke-virtual {p0, p1}, Lo/aaa;->d(Lo/ZV$Activity;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 247
    :cond_0
    instance-of v1, p1, Lo/aaa;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 250
    :cond_1
    invoke-super {p0, p1}, Lo/ZV;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 253
    :cond_2
    check-cast p1, Lo/aaa;

    .line 254
    iget-object v1, p0, Lo/aaa;->b:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/aaa;->b:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 257
    :cond_5
    iget-object v1, p0, Lo/aaa;->c:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/aaa;->c:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 260
    :cond_8
    iget-object v1, p0, Lo/aaa;->f:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/aaa;->f:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 263
    :cond_b
    iget-object v1, p0, Lo/aaa;->g:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/aaa;->g:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 266
    :cond_e
    iget-object v1, p0, Lo/aaa;->a:Ljava/lang/String;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lo/aaa;->a:Ljava/lang/String;

    iget-object v3, p1, Lo/aaa;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_8

    :cond_f
    iget-object v1, p1, Lo/aaa;->a:Ljava/lang/String;

    if-eqz v1, :cond_10

    :goto_8
    return v2

    .line 269
    :cond_10
    invoke-virtual {p0}, Lo/aaa;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lo/aaa;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/aaa;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_9

    :cond_11
    invoke-virtual {p1}, Lo/aaa;->h()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_12

    :goto_9
    return v2

    :cond_12
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 277
    invoke-super {p0}, Lo/ZV;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 278
    iget-object v1, p0, Lo/aaa;->b:Lo/AEADBadTagException;

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

    .line 279
    iget-object v1, p0, Lo/aaa;->c:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 280
    iget-object v1, p0, Lo/aaa;->f:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 281
    iget-object v1, p0, Lo/aaa;->g:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 282
    iget-object v1, p0, Lo/aaa;->a:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lo/aaa;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 283
    invoke-virtual {p0}, Lo/aaa;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lo/aaa;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    :cond_5
    add-int/2addr v0, v3

    return v0
.end method

.method protected l()Lo/ZV$Activity;
    .locals 1

    .line 227
    new-instance v0, Lo/ZV$Activity;

    invoke-direct {v0}, Lo/ZV$Activity;-><init>()V

    return-object v0
.end method

.method protected synthetic n()Lo/TimeUnit;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lo/aaa;->l()Lo/ZV$Activity;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HeaderViewModel_{title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/aaa;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", queryKind="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {p0}, Lo/aaa;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-super {p0}, Lo/ZV;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
