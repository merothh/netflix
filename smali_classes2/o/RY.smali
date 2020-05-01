.class public Lo/RY;
.super Lo/Sa;
.source ""

# interfaces
.implements Lo/IntToLongFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Sa;",
        "Lo/IntToLongFunction<",
        "Lo/Sa$ActionBar;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/RY;",
            "Lo/Sa$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/RY;",
            "Lo/Sa$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/RY;",
            "Lo/Sa$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/RY;",
            "Lo/Sa$ActionBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lo/Sa;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lo/RY;->d(I)Lo/RY;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/CharSequence;)Lo/RY;
    .locals 0

    .line 126
    invoke-virtual {p0}, Lo/RY;->i()V

    .line 127
    iput-object p1, p0, Lo/Sa;->b:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public bridge synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 21
    check-cast p2, Lo/Sa$ActionBar;

    invoke-virtual {p0, p1, p2, p3}, Lo/RY;->a(Lo/Consumer;Lo/Sa$ActionBar;I)V

    return-void
.end method

.method public a(Lo/Consumer;Lo/Sa$ActionBar;I)V
    .locals 0

    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lo/RY;->e(J)Lo/RY;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/CharSequence;)Lo/RY;
    .locals 0

    .line 156
    invoke-super {p0, p1}, Lo/Sa;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p2, Lo/Sa$ActionBar;

    invoke-virtual {p0, p1, p2}, Lo/RY;->c(ILo/Sa$ActionBar;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 21
    check-cast p1, Lo/Sa$ActionBar;

    invoke-virtual {p0, p1, p2}, Lo/RY;->e(Lo/Sa$ActionBar;I)V

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lo/RY;->b(Ljava/lang/CharSequence;)Lo/RY;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lo/RY;->d(Lo/BiConsumer$Activity;)Lo/RY;

    move-result-object p1

    return-object p1
.end method

.method public c(FFIILo/Sa$ActionBar;)V
    .locals 7

    .line 106
    iget-object v0, p0, Lo/RY;->j:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 107
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 109
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/Sa;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public bridge synthetic c(FFIILo/TimeUnit;)V
    .locals 0

    .line 21
    check-cast p5, Lo/Sa$ActionBar;

    invoke-virtual/range {p0 .. p5}, Lo/RY;->c(FFIILo/Sa$ActionBar;)V

    return-void
.end method

.method public c(ILo/Sa$ActionBar;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lo/RY;->i:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 85
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 87
    :cond_0
    invoke-super {p0, p1, p2}, Lo/Sa;->c(ILo/TimeUnit;)V

    return-void
.end method

.method public bridge synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 21
    check-cast p2, Lo/Sa$ActionBar;

    invoke-virtual {p0, p1, p2}, Lo/RY;->c(ILo/Sa$ActionBar;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p1, Lo/Sa$ActionBar;

    invoke-virtual {p0, p1}, Lo/RY;->e(Lo/Sa$ActionBar;)V

    return-void
.end method

.method public d(I)Lo/RY;
    .locals 0

    .line 174
    invoke-super {p0, p1}, Lo/Sa;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public d(Lo/BiConsumer$Activity;)Lo/RY;
    .locals 0

    .line 180
    invoke-super {p0, p1}, Lo/Sa;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 21
    move-object v5, p5

    check-cast v5, Lo/Sa$ActionBar;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/RY;->c(FFIILo/Sa$ActionBar;)V

    return-void
.end method

.method public e(J)Lo/RY;
    .locals 0

    .line 138
    invoke-super {p0, p1, p2}, Lo/Sa;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public e(Lo/Sa$ActionBar;)V
    .locals 1

    .line 62
    invoke-super {p0, p1}, Lo/Sa;->e(Lo/TimeUnit;)V

    .line 63
    iget-object v0, p0, Lo/RY;->a:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 64
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public e(Lo/Sa$ActionBar;I)V
    .locals 1

    .line 41
    iget-object v0, p0, Lo/RY;->c:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 42
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 21
    check-cast p1, Lo/Sa$ActionBar;

    invoke-virtual {p0, p1}, Lo/RY;->e(Lo/Sa$ActionBar;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 223
    :cond_0
    instance-of v1, p1, Lo/RY;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 226
    :cond_1
    invoke-super {p0, p1}, Lo/Sa;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 229
    :cond_2
    check-cast p1, Lo/RY;

    .line 230
    iget-object v1, p0, Lo/RY;->c:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/RY;->c:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 233
    :cond_5
    iget-object v1, p0, Lo/RY;->a:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/RY;->a:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 236
    :cond_8
    iget-object v1, p0, Lo/RY;->i:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/RY;->i:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 239
    :cond_b
    iget-object v1, p0, Lo/RY;->j:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/RY;->j:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 242
    :cond_e
    iget-object v1, p0, Lo/RY;->b:Ljava/lang/CharSequence;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lo/RY;->b:Ljava/lang/CharSequence;

    iget-object p1, p1, Lo/RY;->b:Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_8

    :cond_f
    iget-object p1, p1, Lo/RY;->b:Ljava/lang/CharSequence;

    if-eqz p1, :cond_10

    :goto_8
    return v2

    :cond_10
    return v0
.end method

.method protected h()Lo/Sa$ActionBar;
    .locals 1

    .line 204
    new-instance v0, Lo/Sa$ActionBar;

    invoke-direct {v0}, Lo/Sa$ActionBar;-><init>()V

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 250
    invoke-super {p0}, Lo/Sa;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 251
    iget-object v1, p0, Lo/RY;->c:Lo/AEADBadTagException;

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

    .line 252
    iget-object v1, p0, Lo/RY;->a:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 253
    iget-object v1, p0, Lo/RY;->i:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 254
    iget-object v1, p0, Lo/RY;->j:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 255
    iget-object v1, p0, Lo/RY;->b:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lo/RY;->b:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :cond_4
    add-int/2addr v0, v3

    return v0
.end method

.method protected synthetic n()Lo/TimeUnit;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lo/RY;->h()Lo/Sa$ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SeasonLabelModel_{text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/RY;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-super {p0}, Lo/Sa;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
