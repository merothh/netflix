.class public Lo/SB;
.super Lo/Sy;
.source ""

# interfaces
.implements Lo/IntToLongFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Sy;",
        "Lo/IntToLongFunction<",
        "Lo/Sy$Activity;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/SB;",
            "Lo/Sy$Activity;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/SB;",
            "Lo/Sy$Activity;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/SB;",
            "Lo/Sy$Activity;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/SB;",
            "Lo/Sy$Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lo/Sy;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lo/SB;->b(I)Lo/SB;

    move-result-object p1

    return-object p1
.end method

.method public a(Lo/Bb;)Lo/SB;
    .locals 0

    .line 140
    invoke-virtual {p0}, Lo/SB;->i()V

    .line 141
    iput-object p1, p0, Lo/Sy;->a:Lo/Bb;

    return-object p0
.end method

.method public a(FFIILo/Sy$Activity;)V
    .locals 7

    .line 109
    iget-object v0, p0, Lo/SB;->h:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 110
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 112
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/Sy;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 23
    check-cast p2, Lo/Sy$Activity;

    invoke-virtual {p0, p1, p2, p3}, Lo/SB;->e(Lo/Consumer;Lo/Sy$Activity;I)V

    return-void
.end method

.method public a(Lo/Sy$Activity;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Lo/Sy;->e(Lo/TimeUnit;)V

    .line 65
    iget-object v0, p0, Lo/SB;->f:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lo/SB;->d(J)Lo/SB;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Lo/SB;
    .locals 0

    .line 188
    invoke-super {p0, p1}, Lo/Sy;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public bridge synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p2, Lo/Sy$Activity;

    invoke-virtual {p0, p1, p2}, Lo/SB;->b(ILo/Sy$Activity;)V

    return-void
.end method

.method public b(ILo/Sy$Activity;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lo/SB;->j:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 88
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 90
    :cond_0
    invoke-super {p0, p1, p2}, Lo/Sy;->c(ILo/TimeUnit;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 23
    check-cast p1, Lo/Sy$Activity;

    invoke-virtual {p0, p1, p2}, Lo/SB;->d(Lo/Sy$Activity;I)V

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lo/SB;->d(Ljava/lang/CharSequence;)Lo/SB;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lo/SB;->d(Lo/BiConsumer$Activity;)Lo/SB;

    move-result-object p1

    return-object p1
.end method

.method public c(Lo/AEADBadTagException;)Lo/SB;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AEADBadTagException<",
            "Lo/SB;",
            "Lo/Sy$Activity;",
            ">;)",
            "Lo/SB;"
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Lo/SB;->i()V

    .line 58
    iput-object p1, p0, Lo/SB;->c:Lo/AEADBadTagException;

    return-object p0
.end method

.method public c(Lo/AS;)Lo/SB;
    .locals 0

    .line 129
    invoke-virtual {p0}, Lo/SB;->i()V

    .line 130
    iput-object p1, p0, Lo/Sy;->b:Lo/AS;

    return-object p0
.end method

.method public synthetic c(FFIILo/TimeUnit;)V
    .locals 6

    .line 23
    move-object v5, p5

    check-cast v5, Lo/Sy$Activity;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/SB;->a(FFIILo/Sy$Activity;)V

    return-void
.end method

.method public synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 23
    check-cast p2, Lo/Sy$Activity;

    invoke-virtual {p0, p1, p2}, Lo/SB;->b(ILo/Sy$Activity;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lo/Sy$Activity;

    invoke-virtual {p0, p1}, Lo/SB;->a(Lo/Sy$Activity;)V

    return-void
.end method

.method public d(J)Lo/SB;
    .locals 0

    .line 152
    invoke-super {p0, p1, p2}, Lo/Sy;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public d(Ljava/lang/CharSequence;)Lo/SB;
    .locals 0

    .line 170
    invoke-super {p0, p1}, Lo/Sy;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public d(Lo/BiConsumer$Activity;)Lo/SB;
    .locals 0

    .line 195
    invoke-super {p0, p1}, Lo/Sy;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 23
    move-object v5, p5

    check-cast v5, Lo/Sy$Activity;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/SB;->a(FFIILo/Sy$Activity;)V

    return-void
.end method

.method public d(Lo/Sy$Activity;I)V
    .locals 1

    .line 43
    iget-object v0, p0, Lo/SB;->c:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 44
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public e(Lo/Consumer;Lo/Sy$Activity;I)V
    .locals 0

    return-void
.end method

.method public synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 23
    check-cast p1, Lo/Sy$Activity;

    invoke-virtual {p0, p1}, Lo/SB;->a(Lo/Sy$Activity;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 239
    :cond_0
    instance-of v1, p1, Lo/SB;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 242
    :cond_1
    invoke-super {p0, p1}, Lo/Sy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 245
    :cond_2
    check-cast p1, Lo/SB;

    .line 246
    iget-object v1, p0, Lo/SB;->c:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/SB;->c:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 249
    :cond_5
    iget-object v1, p0, Lo/SB;->f:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/SB;->f:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 252
    :cond_8
    iget-object v1, p0, Lo/SB;->j:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/SB;->j:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 255
    :cond_b
    iget-object v1, p0, Lo/SB;->h:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/SB;->h:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 258
    :cond_e
    iget-object v1, p0, Lo/SB;->b:Lo/AS;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lo/SB;->b:Lo/AS;

    iget-object v3, p1, Lo/SB;->b:Lo/AS;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_8

    :cond_f
    iget-object v1, p1, Lo/SB;->b:Lo/AS;

    if-eqz v1, :cond_10

    :goto_8
    return v2

    .line 261
    :cond_10
    iget-object v1, p0, Lo/SB;->a:Lo/Bb;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lo/SB;->a:Lo/Bb;

    iget-object p1, p1, Lo/SB;->a:Lo/Bb;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_9

    :cond_11
    iget-object p1, p1, Lo/SB;->a:Lo/Bb;

    if-eqz p1, :cond_12

    :goto_9
    return v2

    :cond_12
    return v0
.end method

.method protected h()Lo/Sy$Activity;
    .locals 1

    .line 219
    new-instance v0, Lo/Sy$Activity;

    invoke-direct {v0}, Lo/Sy$Activity;-><init>()V

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 269
    invoke-super {p0}, Lo/Sy;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 270
    iget-object v1, p0, Lo/SB;->c:Lo/AEADBadTagException;

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

    .line 271
    iget-object v1, p0, Lo/SB;->f:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 272
    iget-object v1, p0, Lo/SB;->j:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 273
    iget-object v1, p0, Lo/SB;->h:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 274
    iget-object v1, p0, Lo/SB;->b:Lo/AS;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lo/SB;->b:Lo/AS;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 275
    iget-object v1, p0, Lo/SB;->a:Lo/Bb;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lo/SB;->a:Lo/Bb;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :cond_5
    add-int/2addr v0, v3

    return v0
.end method

.method protected synthetic n()Lo/TimeUnit;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lo/SB;->h()Lo/Sy$Activity;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadableEpisodeModel_{episodeDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/SB;->b:Lo/AS;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", showDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/SB;->a:Lo/Bb;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-super {p0}, Lo/Sy;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
