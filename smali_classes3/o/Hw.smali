.class public Lo/Hw;
.super Lo/Hu;
.source ""

# interfaces
.implements Lo/IntToLongFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Hu;",
        "Lo/IntToLongFunction<",
        "Lo/Hu$ActionBar;",
        ">;"
    }
.end annotation


# instance fields
.field private f:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/Hw;",
            "Lo/Hu$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/Hw;",
            "Lo/Hu$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/Hw;",
            "Lo/Hu$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/Hw;",
            "Lo/Hu$ActionBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lo/Hu;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lo/Hw;->b(I)Lo/Hw;

    move-result-object p1

    return-object p1
.end method

.method public a(J)Lo/Hw;
    .locals 0

    .line 150
    invoke-super {p0, p1, p2}, Lo/Hu;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lo/Hw;
    .locals 0

    .line 168
    invoke-super {p0, p1}, Lo/Hu;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 22
    check-cast p2, Lo/Hu$ActionBar;

    invoke-virtual {p0, p1, p2, p3}, Lo/Hw;->d(Lo/Consumer;Lo/Hu$ActionBar;I)V

    return-void
.end method

.method public a(Lo/OfPrimitive;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lo/Hu;->a(Lo/OfPrimitive;)V

    .line 38
    invoke-virtual {p0, p1}, Lo/Hw;->e(Lo/OfPrimitive;)V

    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lo/Hw;->a(J)Lo/Hw;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Lo/Hw;
    .locals 0

    .line 186
    invoke-super {p0, p1}, Lo/Hu;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public b(Lo/BiConsumer$Activity;)Lo/Hw;
    .locals 0

    .line 192
    invoke-super {p0, p1}, Lo/Hu;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public bridge synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p2, Lo/Hu$ActionBar;

    invoke-virtual {p0, p1, p2}, Lo/Hw;->b(ILo/Hu$ActionBar;)V

    return-void
.end method

.method public b(ILo/Hu$ActionBar;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lo/Hw;->f:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 97
    :cond_0
    invoke-super {p0, p1, p2}, Lo/Hu;->c(ILo/TimeUnit;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 22
    check-cast p1, Lo/Hu$ActionBar;

    invoke-virtual {p0, p1, p2}, Lo/Hw;->d(Lo/Hu$ActionBar;I)V

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lo/Hw;->a(Ljava/lang/CharSequence;)Lo/Hw;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lo/Hw;->b(Lo/BiConsumer$Activity;)Lo/Hw;

    move-result-object p1

    return-object p1
.end method

.method public c(FFIILo/Hu$ActionBar;)V
    .locals 7

    .line 116
    iget-object v0, p0, Lo/Hw;->j:Lo/EncryptedPrivateKeyInfo;

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
    invoke-super/range {p0 .. p5}, Lo/Hu;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public bridge synthetic c(FFIILo/TimeUnit;)V
    .locals 0

    .line 22
    check-cast p5, Lo/Hu$ActionBar;

    invoke-virtual/range {p0 .. p5}, Lo/Hw;->c(FFIILo/Hu$ActionBar;)V

    return-void
.end method

.method public synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 22
    check-cast p2, Lo/Hu$ActionBar;

    invoke-virtual {p0, p1, p2}, Lo/Hw;->b(ILo/Hu$ActionBar;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p1, Lo/Hu$ActionBar;

    invoke-virtual {p0, p1}, Lo/Hw;->c(Lo/Hu$ActionBar;)V

    return-void
.end method

.method public c(Lo/Hu$ActionBar;)V
    .locals 1

    .line 71
    invoke-super {p0, p1}, Lo/Hu;->e(Lo/TimeUnit;)V

    .line 72
    iget-object v0, p0, Lo/Hw;->h:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 22
    move-object v5, p5

    check-cast v5, Lo/Hu$ActionBar;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/Hw;->c(FFIILo/Hu$ActionBar;)V

    return-void
.end method

.method public d(Lo/Consumer;Lo/Hu$ActionBar;I)V
    .locals 0

    const-string p1, "The model was changed between being added to the controller and being bound."

    .line 44
    invoke-virtual {p0, p1, p3}, Lo/Hw;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public d(Lo/Hu$ActionBar;I)V
    .locals 1

    .line 49
    iget-object v0, p0, Lo/Hw;->i:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 50
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    const-string p1, "The model was changed during the bind call."

    .line 52
    invoke-virtual {p0, p1, p2}, Lo/Hw;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 22
    check-cast p1, Lo/Hu$ActionBar;

    invoke-virtual {p0, p1}, Lo/Hw;->c(Lo/Hu$ActionBar;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 230
    :cond_0
    instance-of v1, p1, Lo/Hw;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 233
    :cond_1
    invoke-super {p0, p1}, Lo/Hu;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 236
    :cond_2
    check-cast p1, Lo/Hw;

    .line 237
    iget-object v1, p0, Lo/Hw;->i:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/Hw;->i:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 240
    :cond_5
    iget-object v1, p0, Lo/Hw;->h:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/Hw;->h:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 243
    :cond_8
    iget-object v1, p0, Lo/Hw;->f:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/Hw;->f:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 246
    :cond_b
    iget-object v1, p0, Lo/Hw;->j:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/Hw;->j:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 249
    :cond_e
    invoke-virtual {p0}, Lo/Hw;->l()I

    move-result v1

    invoke-virtual {p1}, Lo/Hw;->l()I

    move-result p1

    if-eq v1, p1, :cond_f

    return v2

    :cond_f
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 257
    invoke-super {p0}, Lo/Hu;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 258
    iget-object v1, p0, Lo/Hw;->i:Lo/AEADBadTagException;

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

    .line 259
    iget-object v1, p0, Lo/Hw;->h:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 260
    iget-object v1, p0, Lo/Hw;->f:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 261
    iget-object v1, p0, Lo/Hw;->j:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 262
    invoke-virtual {p0}, Lo/Hw;->l()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MinusoneHeaderModel_{bottomSpacing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {p0}, Lo/Hw;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-super {p0}, Lo/Hu;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
