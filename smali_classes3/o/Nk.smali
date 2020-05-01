.class public Lo/Nk;
.super Lo/Nf;
.source ""

# interfaces
.implements Lo/IntToLongFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Nf;",
        "Lo/IntToLongFunction<",
        "Lo/Nf$ActionBar;",
        ">;"
    }
.end annotation


# instance fields
.field private f:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/Nk;",
            "Lo/Nf$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/Nk;",
            "Lo/Nf$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/Nk;",
            "Lo/Nf$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/Nk;",
            "Lo/Nf$ActionBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lo/Nf;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lo/Nk;->d(I)Lo/Nk;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lo/Nk;
    .locals 0

    .line 128
    invoke-virtual {p0}, Lo/Nk;->i()V

    .line 129
    invoke-super {p0, p1}, Lo/Nf;->d(Ljava/lang/String;)V

    return-object p0
.end method

.method public a(Lo/EncryptedPrivateKeyInfo;)Lo/Nk;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/Nk;",
            "Lo/Nf$ActionBar;",
            ">;)",
            "Lo/Nk;"
        }
    .end annotation

    .line 122
    invoke-virtual {p0}, Lo/Nk;->i()V

    .line 123
    iput-object p1, p0, Lo/Nk;->f:Lo/EncryptedPrivateKeyInfo;

    return-object p0
.end method

.method public a(FFIILo/Nf$ActionBar;)V
    .locals 7

    .line 108
    iget-object v0, p0, Lo/Nk;->f:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 109
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 111
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/Nf;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 22
    check-cast p2, Lo/Nf$ActionBar;

    invoke-virtual {p0, p1, p2, p3}, Lo/Nk;->b(Lo/Consumer;Lo/Nf$ActionBar;I)V

    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lo/Nk;->c(J)Lo/Nk;

    move-result-object p1

    return-object p1
.end method

.method public b(Lo/BiConsumer$Activity;)Lo/Nk;
    .locals 0

    .line 196
    invoke-super {p0, p1}, Lo/Nf;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p2, Lo/Nf$ActionBar;

    invoke-virtual {p0, p1, p2}, Lo/Nk;->e(ILo/Nf$ActionBar;)V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 22
    check-cast p1, Lo/Nf$ActionBar;

    invoke-virtual {p0, p1, p2}, Lo/Nk;->b(Lo/Nf$ActionBar;I)V

    return-void
.end method

.method public b(Lo/Consumer;Lo/Nf$ActionBar;I)V
    .locals 0

    return-void
.end method

.method public b(Lo/Nf$ActionBar;I)V
    .locals 1

    .line 42
    iget-object v0, p0, Lo/Nk;->i:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 43
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lo/Nk;->e(Ljava/lang/CharSequence;)Lo/Nk;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lo/Nk;->b(Lo/BiConsumer$Activity;)Lo/Nk;

    move-result-object p1

    return-object p1
.end method

.method public c(J)Lo/Nk;
    .locals 0

    .line 152
    invoke-super {p0, p1, p2}, Lo/Nf;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic c(FFIILo/TimeUnit;)V
    .locals 6

    .line 22
    move-object v5, p5

    check-cast v5, Lo/Nf$ActionBar;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/Nk;->a(FFIILo/Nf$ActionBar;)V

    return-void
.end method

.method public synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 22
    check-cast p2, Lo/Nf$ActionBar;

    invoke-virtual {p0, p1, p2}, Lo/Nk;->e(ILo/Nf$ActionBar;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p1, Lo/Nf$ActionBar;

    invoke-virtual {p0, p1}, Lo/Nk;->c(Lo/Nf$ActionBar;)V

    return-void
.end method

.method public c(Lo/Nf$ActionBar;)V
    .locals 1

    .line 63
    invoke-super {p0, p1}, Lo/Nf;->c(Lo/Nf$ActionBar;)V

    .line 64
    iget-object v0, p0, Lo/Nk;->j:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 65
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public d(I)Lo/Nk;
    .locals 0

    .line 189
    invoke-super {p0, p1}, Lo/Nf;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public d(Lo/CipherSpi;)Lo/Nk;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CipherSpi<",
            "Lo/Nk;",
            "Lo/Nf$ActionBar;",
            ">;)",
            "Lo/Nk;"
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lo/Nk;->i()V

    .line 101
    iput-object p1, p0, Lo/Nk;->g:Lo/CipherSpi;

    return-object p0
.end method

.method public d(Lo/UE;)Lo/Nk;
    .locals 0

    .line 140
    invoke-virtual {p0}, Lo/Nk;->i()V

    .line 141
    iput-object p1, p0, Lo/Nf;->b:Lo/UE;

    return-object p0
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 22
    move-object v5, p5

    check-cast v5, Lo/Nf$ActionBar;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/Nk;->a(FFIILo/Nf$ActionBar;)V

    return-void
.end method

.method public e(Ljava/lang/CharSequence;)Lo/Nk;
    .locals 0

    .line 170
    invoke-super {p0, p1}, Lo/Nf;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public e(ILo/Nf$ActionBar;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lo/Nk;->g:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 87
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 89
    :cond_0
    invoke-super {p0, p1, p2}, Lo/Nf;->c(ILo/TimeUnit;)V

    return-void
.end method

.method public synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 22
    check-cast p1, Lo/Nf$ActionBar;

    invoke-virtual {p0, p1}, Lo/Nk;->c(Lo/Nf$ActionBar;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 235
    :cond_0
    instance-of v1, p1, Lo/Nk;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 238
    :cond_1
    invoke-super {p0, p1}, Lo/Nf;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 241
    :cond_2
    check-cast p1, Lo/Nk;

    .line 242
    iget-object v1, p0, Lo/Nk;->i:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/Nk;->i:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 245
    :cond_5
    iget-object v1, p0, Lo/Nk;->j:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/Nk;->j:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 248
    :cond_8
    iget-object v1, p0, Lo/Nk;->g:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/Nk;->g:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 251
    :cond_b
    iget-object v1, p0, Lo/Nk;->f:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/Nk;->f:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 254
    :cond_e
    invoke-virtual {p0}, Lo/Nk;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lo/Nk;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/Nk;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_8

    :cond_f
    invoke-virtual {p1}, Lo/Nk;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    :goto_8
    return v2

    .line 257
    :cond_10
    iget-object v1, p0, Lo/Nk;->b:Lo/UE;

    if-nez v1, :cond_11

    const/4 v1, 0x1

    goto :goto_9

    :cond_11
    const/4 v1, 0x0

    :goto_9
    iget-object p1, p1, Lo/Nk;->b:Lo/UE;

    if-nez p1, :cond_12

    const/4 p1, 0x1

    goto :goto_a

    :cond_12
    const/4 p1, 0x0

    :goto_a
    if-eq v1, p1, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 265
    invoke-super {p0}, Lo/Nf;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 266
    iget-object v1, p0, Lo/Nk;->i:Lo/AEADBadTagException;

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

    .line 267
    iget-object v1, p0, Lo/Nk;->j:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 268
    iget-object v1, p0, Lo/Nk;->g:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 269
    iget-object v1, p0, Lo/Nk;->f:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 270
    invoke-virtual {p0}, Lo/Nk;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lo/Nk;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 271
    iget-object v1, p0, Lo/Nk;->b:Lo/UE;

    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MiniPlayerEpoxyModel_{playableId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {p0}, Lo/Nk;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", playbablesFeedViewModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Nk;->b:Lo/UE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-super {p0}, Lo/Nf;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
