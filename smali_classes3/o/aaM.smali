.class public Lo/aaM;
.super Lo/BiConsumer;
.source ""

# interfaces
.implements Lo/IntToLongFunction;
.implements Lo/aaH;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/BiConsumer<",
        "Lo/aaI;",
        ">;",
        "Lo/IntToLongFunction<",
        "Lo/aaI;",
        ">;",
        "Lo/aaH;"
    }
.end annotation


# instance fields
.field private a:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/aaM;",
            "Lo/aaI;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/aaM;",
            "Lo/aaI;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/BitSet;

.field private f:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/aaM;",
            "Lo/aaI;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/aaM;",
            "Lo/aaI;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lo/Cipher;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Lo/BiConsumer;-><init>()V

    .line 28
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lo/aaM;->c:Ljava/util/BitSet;

    .line 40
    new-instance v0, Lo/Cipher;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-direct {v0, v1}, Lo/Cipher;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lo/aaM;->i:Lo/Cipher;

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lo/aaM;->d(I)Lo/aaM;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/CharSequence;)Lo/aaM;
    .locals 0

    .line 241
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 27
    check-cast p2, Lo/aaI;

    invoke-virtual {p0, p1, p2, p3}, Lo/aaM;->e(Lo/Consumer;Lo/aaI;I)V

    return-void
.end method

.method public a(Lo/OfPrimitive;)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Lo/BiConsumer;->a(Lo/OfPrimitive;)V

    .line 45
    invoke-virtual {p0, p1}, Lo/aaM;->e(Lo/OfPrimitive;)V

    return-void
.end method

.method protected b()I
    .locals 1

    .line 291
    sget v0, Lo/aax$TaskDescription;->h:I

    return v0
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lo/aaM;->c(J)Lo/aaM;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Ljava/lang/CharSequence;)Lo/aaH;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lo/aaM;->a(Ljava/lang/CharSequence;)Lo/aaM;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p2, Lo/aaI;

    invoke-virtual {p0, p1, p2}, Lo/aaM;->c(ILo/aaI;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 27
    check-cast p1, Lo/aaI;

    invoke-virtual {p0, p1, p2}, Lo/aaM;->c(Lo/aaI;I)V

    return-void
.end method

.method public b(Lo/aaI;)V
    .locals 1

    .line 98
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Ljava/lang/Object;)V

    .line 99
    iget-object v0, p0, Lo/aaM;->b:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 100
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lo/aaM;->a(Ljava/lang/CharSequence;)Lo/aaM;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lo/aaM;->e(Lo/BiConsumer$Activity;)Lo/aaM;

    move-result-object p1

    return-object p1
.end method

.method public c(J)Lo/aaM;
    .locals 0

    .line 223
    invoke-super {p0, p1, p2}, Lo/BiConsumer;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public c(FFIILo/aaI;)V
    .locals 7

    .line 142
    iget-object v0, p0, Lo/aaM;->f:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 143
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 145
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/BiConsumer;->d(FFIILjava/lang/Object;)V

    return-void
.end method

.method public c(ILo/aaI;)V
    .locals 1

    .line 120
    iget-object v0, p0, Lo/aaM;->g:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 121
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 123
    :cond_0
    invoke-super {p0, p1, p2}, Lo/BiConsumer;->b(ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Lo/aaI;

    invoke-virtual {p0, p1}, Lo/aaM;->b(Lo/aaI;)V

    return-void
.end method

.method public c(Lo/aaI;I)V
    .locals 1

    .line 76
    iget-object v0, p0, Lo/aaM;->a:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 77
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    const-string p1, "The model was changed during the bind call."

    .line 79
    invoke-virtual {p0, p1, p2}, Lo/aaM;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic d(Ljava/lang/CharSequence;)Lo/aaH;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lo/aaM;->e(Ljava/lang/CharSequence;)Lo/aaM;

    move-result-object p1

    return-object p1
.end method

.method public d(I)Lo/aaM;
    .locals 0

    .line 259
    invoke-super {p0, p1}, Lo/BiConsumer;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 27
    move-object v5, p5

    check-cast v5, Lo/aaI;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/aaM;->c(FFIILo/aaI;)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Lo/aaI;

    invoke-virtual {p0, p1}, Lo/aaM;->d(Lo/aaI;)V

    return-void
.end method

.method public d(Lo/aaI;)V
    .locals 2

    .line 56
    invoke-super {p0, p1}, Lo/BiConsumer;->d(Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lo/aaM;->i:Lo/Cipher;

    invoke-virtual {p1}, Lo/aaI;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/Cipher;->e(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/aaI;->setLabel(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public d(Lo/aaI;Lo/BiConsumer;)V
    .locals 1

    .line 62
    instance-of v0, p2, Lo/aaM;

    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p0, p1}, Lo/aaM;->d(Lo/aaI;)V

    return-void

    .line 66
    :cond_0
    check-cast p2, Lo/aaM;

    .line 67
    invoke-super {p0, p1}, Lo/BiConsumer;->d(Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lo/aaM;->i:Lo/Cipher;

    iget-object p2, p2, Lo/aaM;->i:Lo/Cipher;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lo/Cipher;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 70
    :goto_0
    iget-object p2, p0, Lo/aaM;->i:Lo/Cipher;

    invoke-virtual {p1}, Lo/aaI;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lo/Cipher;->e(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/aaI;->setLabel(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public e(III)I
    .locals 0

    return p1
.end method

.method public e(Ljava/lang/CharSequence;)Lo/aaM;
    .locals 2

    .line 172
    invoke-virtual {p0}, Lo/aaM;->i()V

    .line 173
    iget-object v0, p0, Lo/aaM;->c:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 174
    iget-object v0, p0, Lo/aaM;->i:Lo/Cipher;

    invoke-virtual {v0, p1}, Lo/Cipher;->e(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public e(Lo/BiConsumer$Activity;)Lo/aaM;
    .locals 0

    .line 266
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic e(Ljava/lang/Object;Lo/BiConsumer;)V
    .locals 0

    .line 27
    check-cast p1, Lo/aaI;

    invoke-virtual {p0, p1, p2}, Lo/aaM;->d(Lo/aaI;Lo/BiConsumer;)V

    return-void
.end method

.method public e(Lo/Consumer;Lo/aaI;I)V
    .locals 0

    const-string p1, "The model was changed between being added to the controller and being bound."

    .line 51
    invoke-virtual {p0, p1, p3}, Lo/aaM;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 311
    :cond_0
    instance-of v1, p1, Lo/aaM;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 314
    :cond_1
    invoke-super {p0, p1}, Lo/BiConsumer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 317
    :cond_2
    check-cast p1, Lo/aaM;

    .line 318
    iget-object v1, p0, Lo/aaM;->a:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/aaM;->a:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 321
    :cond_5
    iget-object v1, p0, Lo/aaM;->b:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/aaM;->b:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 324
    :cond_8
    iget-object v1, p0, Lo/aaM;->g:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/aaM;->g:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 327
    :cond_b
    iget-object v1, p0, Lo/aaM;->f:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/aaM;->f:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 330
    :cond_e
    iget-object v1, p0, Lo/aaM;->i:Lo/Cipher;

    iget-object p1, p1, Lo/aaM;->i:Lo/Cipher;

    if-eqz v1, :cond_f

    invoke-virtual {v1, p1}, Lo/Cipher;->equals(Ljava/lang/Object;)Z

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

    .line 338
    invoke-super {p0}, Lo/BiConsumer;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 339
    iget-object v1, p0, Lo/aaM;->a:Lo/AEADBadTagException;

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

    .line 340
    iget-object v1, p0, Lo/aaM;->b:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 341
    iget-object v1, p0, Lo/aaM;->g:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 342
    iget-object v1, p0, Lo/aaM;->f:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 343
    iget-object v1, p0, Lo/aaM;->i:Lo/Cipher;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lo/Cipher;->hashCode()I

    move-result v3

    :cond_4
    add-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchResultsHeaderModel_{label_StringAttributeData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/aaM;->i:Lo/Cipher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-super {p0}, Lo/BiConsumer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
