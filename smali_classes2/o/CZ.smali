.class public Lo/CZ;
.super Lo/CS;
.source ""

# interfaces
.implements Lo/IntToLongFunction;
.implements Lo/CV;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/CS;",
        "Lo/IntToLongFunction<",
        "Lo/CS$StateListAnimator;",
        ">;",
        "Lo/CV;"
    }
.end annotation


# instance fields
.field private a:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/CZ;",
            "Lo/CS$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/CZ;",
            "Lo/CS$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/CZ;",
            "Lo/CS$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/CZ;",
            "Lo/CS$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lo/CS;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lo/CZ;->e(I)Lo/CZ;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 20
    check-cast p2, Lo/CS$StateListAnimator;

    invoke-virtual {p0, p1, p2, p3}, Lo/CZ;->e(Lo/Consumer;Lo/CS$StateListAnimator;I)V

    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lo/CZ;->c(J)Lo/CZ;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Ljava/lang/CharSequence;)Lo/CV;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lo/CZ;->d(Ljava/lang/CharSequence;)Lo/CZ;

    move-result-object p1

    return-object p1
.end method

.method public b(Lo/BiConsumer$Activity;)Lo/CZ;
    .locals 0

    .line 180
    invoke-super {p0, p1}, Lo/CS;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public b(FFIILo/CS$StateListAnimator;)V
    .locals 7

    .line 104
    iget-object v0, p0, Lo/CZ;->g:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 105
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 107
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/CS;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public bridge synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p2, Lo/CS$StateListAnimator;

    invoke-virtual {p0, p1, p2}, Lo/CZ;->b(ILo/CS$StateListAnimator;)V

    return-void
.end method

.method public b(ILo/CS$StateListAnimator;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lo/CZ;->b:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 83
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 85
    :cond_0
    invoke-super {p0, p1, p2}, Lo/CS;->c(ILo/TimeUnit;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 20
    check-cast p1, Lo/CS$StateListAnimator;

    invoke-virtual {p0, p1, p2}, Lo/CZ;->d(Lo/CS$StateListAnimator;I)V

    return-void
.end method

.method public b(Lo/CS$StateListAnimator;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Lo/CS;->e(Lo/TimeUnit;)V

    .line 61
    iget-object v0, p0, Lo/CZ;->a:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 62
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lo/CZ;->d(Ljava/lang/CharSequence;)Lo/CZ;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lo/CZ;->b(Lo/BiConsumer$Activity;)Lo/CZ;

    move-result-object p1

    return-object p1
.end method

.method public c(J)Lo/CZ;
    .locals 0

    .line 136
    invoke-super {p0, p1, p2}, Lo/CS;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic c(FFIILo/TimeUnit;)V
    .locals 6

    .line 20
    move-object v5, p5

    check-cast v5, Lo/CS$StateListAnimator;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/CZ;->b(FFIILo/CS$StateListAnimator;)V

    return-void
.end method

.method public synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 20
    check-cast p2, Lo/CS$StateListAnimator;

    invoke-virtual {p0, p1, p2}, Lo/CZ;->b(ILo/CS$StateListAnimator;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, Lo/CS$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/CZ;->b(Lo/CS$StateListAnimator;)V

    return-void
.end method

.method public d(Ljava/lang/CharSequence;)Lo/CZ;
    .locals 0

    .line 154
    invoke-super {p0, p1}, Lo/CS;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 20
    move-object v5, p5

    check-cast v5, Lo/CS$StateListAnimator;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/CZ;->b(FFIILo/CS$StateListAnimator;)V

    return-void
.end method

.method public d(Lo/CS$StateListAnimator;I)V
    .locals 1

    .line 40
    iget-object v0, p0, Lo/CZ;->c:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 41
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public e(I)Lo/CZ;
    .locals 0

    .line 173
    invoke-super {p0, p1}, Lo/CS;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public e(Lo/Consumer;Lo/CS$StateListAnimator;I)V
    .locals 0

    return-void
.end method

.method public synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 20
    check-cast p1, Lo/CS$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/CZ;->b(Lo/CS$StateListAnimator;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 218
    :cond_0
    instance-of v1, p1, Lo/CZ;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 221
    :cond_1
    invoke-super {p0, p1}, Lo/CS;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 224
    :cond_2
    check-cast p1, Lo/CZ;

    .line 225
    iget-object v1, p0, Lo/CZ;->c:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/CZ;->c:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 228
    :cond_5
    iget-object v1, p0, Lo/CZ;->a:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/CZ;->a:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 231
    :cond_8
    iget-object v1, p0, Lo/CZ;->b:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/CZ;->b:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 234
    :cond_b
    iget-object v1, p0, Lo/CZ;->g:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/CZ;->g:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 237
    :cond_e
    invoke-virtual {p0}, Lo/CZ;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lo/CZ;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/CZ;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_8

    :cond_f
    invoke-virtual {p1}, Lo/CZ;->h()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_10

    :goto_8
    return v2

    :cond_10
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 245
    invoke-super {p0}, Lo/CS;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 246
    iget-object v1, p0, Lo/CZ;->c:Lo/AEADBadTagException;

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

    .line 247
    iget-object v1, p0, Lo/CZ;->a:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 248
    iget-object v1, p0, Lo/CZ;->b:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 249
    iget-object v1, p0, Lo/CZ;->g:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 250
    invoke-virtual {p0}, Lo/CZ;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lo/CZ;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    :cond_4
    add-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoadingModel_{label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {p0}, Lo/CZ;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-super {p0}, Lo/CS;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
