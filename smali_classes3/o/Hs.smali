.class public Lo/Hs;
.super Lo/Hr;
.source ""

# interfaces
.implements Lo/IntToLongFunction;
.implements Lo/Hp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Hr;",
        "Lo/IntToLongFunction<",
        "Lo/Hr$Activity;",
        ">;",
        "Lo/Hp;"
    }
.end annotation


# instance fields
.field private a:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/Hs;",
            "Lo/Hr$Activity;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/Hs;",
            "Lo/Hr$Activity;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/Hs;",
            "Lo/Hr$Activity;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/Hs;",
            "Lo/Hr$Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lo/Hr;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lo/Hs;->c(I)Lo/Hs;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 21
    check-cast p2, Lo/Hr$Activity;

    invoke-virtual {p0, p1, p2, p3}, Lo/Hs;->b(Lo/Consumer;Lo/Hr$Activity;I)V

    return-void
.end method

.method public a(Lo/OfPrimitive;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lo/Hr;->a(Lo/OfPrimitive;)V

    .line 37
    invoke-virtual {p0, p1}, Lo/Hs;->e(Lo/OfPrimitive;)V

    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lo/Hs;->e(J)Lo/Hs;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p2, Lo/Hr$Activity;

    invoke-virtual {p0, p1, p2}, Lo/Hs;->c(ILo/Hr$Activity;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 21
    check-cast p1, Lo/Hr$Activity;

    invoke-virtual {p0, p1, p2}, Lo/Hs;->d(Lo/Hr$Activity;I)V

    return-void
.end method

.method public b(Lo/Consumer;Lo/Hr$Activity;I)V
    .locals 0

    const-string p1, "The model was changed between being added to the controller and being bound."

    .line 43
    invoke-virtual {p0, p1, p3}, Lo/Hs;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lo/Hs;->d(Ljava/lang/CharSequence;)Lo/Hs;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lo/Hs;->d(Lo/BiConsumer$Activity;)Lo/Hs;

    move-result-object p1

    return-object p1
.end method

.method public c(I)Lo/Hs;
    .locals 0

    .line 172
    invoke-super {p0, p1}, Lo/Hr;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic c(FFIILo/TimeUnit;)V
    .locals 6

    .line 21
    move-object v5, p5

    check-cast v5, Lo/Hr$Activity;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/Hs;->d(FFIILo/Hr$Activity;)V

    return-void
.end method

.method public c(ILo/Hr$Activity;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lo/Hs;->b:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 94
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 96
    :cond_0
    invoke-super {p0, p1, p2}, Lo/Hr;->c(ILo/TimeUnit;)V

    return-void
.end method

.method public bridge synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 21
    check-cast p2, Lo/Hr$Activity;

    invoke-virtual {p0, p1, p2}, Lo/Hs;->c(ILo/Hr$Activity;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p1, Lo/Hr$Activity;

    invoke-virtual {p0, p1}, Lo/Hs;->d(Lo/Hr$Activity;)V

    return-void
.end method

.method public synthetic d(Lo/AEADBadTagException;)Lo/Hp;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lo/Hs;->e(Lo/AEADBadTagException;)Lo/Hs;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/CharSequence;)Lo/Hs;
    .locals 0

    .line 154
    invoke-super {p0, p1}, Lo/Hr;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public d(Lo/BiConsumer$Activity;)Lo/Hs;
    .locals 0

    .line 178
    invoke-super {p0, p1}, Lo/Hr;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public bridge synthetic d(FFIILjava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p5, Lo/Hr$Activity;

    invoke-virtual/range {p0 .. p5}, Lo/Hs;->d(FFIILo/Hr$Activity;)V

    return-void
.end method

.method public d(FFIILo/Hr$Activity;)V
    .locals 7

    .line 115
    iget-object v0, p0, Lo/Hs;->h:Lo/EncryptedPrivateKeyInfo;

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
    invoke-super/range {p0 .. p5}, Lo/Hr;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public d(Lo/Hr$Activity;)V
    .locals 1

    .line 70
    invoke-super {p0, p1}, Lo/Hr;->e(Lo/TimeUnit;)V

    .line 71
    iget-object v0, p0, Lo/Hs;->a:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 72
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public d(Lo/Hr$Activity;I)V
    .locals 1

    .line 48
    iget-object v0, p0, Lo/Hs;->c:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 49
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    const-string p1, "The model was changed during the bind call."

    .line 51
    invoke-virtual {p0, p1, p2}, Lo/Hs;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic e(Ljava/lang/CharSequence;)Lo/Hp;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lo/Hs;->d(Ljava/lang/CharSequence;)Lo/Hs;

    move-result-object p1

    return-object p1
.end method

.method public e(J)Lo/Hs;
    .locals 0

    .line 136
    invoke-super {p0, p1, p2}, Lo/Hr;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public e(Lo/AEADBadTagException;)Lo/Hs;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AEADBadTagException<",
            "Lo/Hs;",
            "Lo/Hr$Activity;",
            ">;)",
            "Lo/Hs;"
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lo/Hs;->i()V

    .line 64
    iput-object p1, p0, Lo/Hs;->c:Lo/AEADBadTagException;

    return-object p0
.end method

.method public synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 21
    check-cast p1, Lo/Hr$Activity;

    invoke-virtual {p0, p1}, Lo/Hs;->d(Lo/Hr$Activity;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 215
    :cond_0
    instance-of v1, p1, Lo/Hs;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 218
    :cond_1
    invoke-super {p0, p1}, Lo/Hr;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 221
    :cond_2
    check-cast p1, Lo/Hs;

    .line 222
    iget-object v1, p0, Lo/Hs;->c:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/Hs;->c:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 225
    :cond_5
    iget-object v1, p0, Lo/Hs;->a:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/Hs;->a:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 228
    :cond_8
    iget-object v1, p0, Lo/Hs;->b:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/Hs;->b:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 231
    :cond_b
    iget-object v1, p0, Lo/Hs;->h:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object p1, p1, Lo/Hs;->h:Lo/EncryptedPrivateKeyInfo;

    if-nez p1, :cond_d

    const/4 p1, 0x1

    goto :goto_7

    :cond_d
    const/4 p1, 0x0

    :goto_7
    if-eq v1, p1, :cond_e

    return v2

    :cond_e
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 239
    invoke-super {p0}, Lo/Hr;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 240
    iget-object v1, p0, Lo/Hs;->c:Lo/AEADBadTagException;

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

    .line 241
    iget-object v1, p0, Lo/Hs;->a:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 242
    iget-object v1, p0, Lo/Hs;->b:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 243
    iget-object v1, p0, Lo/Hs;->h:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoadingSpinnerModel_{}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-super {p0}, Lo/Hr;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
