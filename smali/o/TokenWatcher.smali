.class public Lo/TokenWatcher;
.super Lo/TransactionTooLargeException;
.source ""

# interfaces
.implements Lo/IntToLongFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/TransactionTooLargeException;",
        "Lo/IntToLongFunction<",
        "Lo/FU;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/TokenWatcher;",
            "Lo/FU;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/TokenWatcher;",
            "Lo/FU;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/TokenWatcher;",
            "Lo/FU;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/TokenWatcher;",
            "Lo/FU;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lo/TransactionTooLargeException;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lo/TokenWatcher;->c(I)Lo/TokenWatcher;

    move-result-object p1

    return-object p1
.end method

.method public a(J)Lo/TokenWatcher;
    .locals 0

    .line 165
    invoke-super {p0, p1, p2}, Lo/TransactionTooLargeException;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 25
    check-cast p2, Lo/FU;

    invoke-virtual {p0, p1, p2, p3}, Lo/TokenWatcher;->b(Lo/Consumer;Lo/FU;I)V

    return-void
.end method

.method public a(Lo/FU;)V
    .locals 1

    .line 65
    invoke-super {p0, p1}, Lo/TransactionTooLargeException;->e(Lo/TimeUnit;)V

    .line 66
    iget-object v0, p0, Lo/TokenWatcher;->b:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 67
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lo/TokenWatcher;->a(J)Lo/TokenWatcher;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/view/View$OnClickListener;)Lo/TokenWatcher;
    .locals 0

    .line 153
    invoke-virtual {p0}, Lo/TokenWatcher;->i()V

    .line 154
    invoke-super {p0, p1}, Lo/TransactionTooLargeException;->c(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p2, Lo/FU;

    invoke-virtual {p0, p1, p2}, Lo/TokenWatcher;->d(ILo/FU;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 25
    check-cast p1, Lo/FU;

    invoke-virtual {p0, p1, p2}, Lo/TokenWatcher;->d(Lo/FU;I)V

    return-void
.end method

.method public b(Lo/Consumer;Lo/FU;I)V
    .locals 0

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lo/TokenWatcher;->e(Ljava/lang/CharSequence;)Lo/TokenWatcher;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lo/TokenWatcher;->e(Lo/BiConsumer$Activity;)Lo/TokenWatcher;

    move-result-object p1

    return-object p1
.end method

.method public c(I)Lo/TokenWatcher;
    .locals 0

    .line 202
    invoke-super {p0, p1}, Lo/TransactionTooLargeException;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic c(FFIILo/TimeUnit;)V
    .locals 6

    .line 25
    move-object v5, p5

    check-cast v5, Lo/FU;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/TokenWatcher;->d(FFIILo/FU;)V

    return-void
.end method

.method public synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 25
    check-cast p2, Lo/FU;

    invoke-virtual {p0, p1, p2}, Lo/TokenWatcher;->d(ILo/FU;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lo/FU;

    invoke-virtual {p0, p1}, Lo/TokenWatcher;->a(Lo/FU;)V

    return-void
.end method

.method public d(I)Lo/TokenWatcher;
    .locals 0

    .line 128
    invoke-virtual {p0}, Lo/TokenWatcher;->i()V

    .line 129
    invoke-super {p0, p1}, Lo/TransactionTooLargeException;->b(I)V

    return-object p0
.end method

.method public bridge synthetic d(FFIILjava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p5, Lo/FU;

    invoke-virtual/range {p0 .. p5}, Lo/TokenWatcher;->d(FFIILo/FU;)V

    return-void
.end method

.method public d(FFIILo/FU;)V
    .locals 7

    .line 108
    iget-object v0, p0, Lo/TokenWatcher;->i:Lo/EncryptedPrivateKeyInfo;

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
    invoke-super/range {p0 .. p5}, Lo/TransactionTooLargeException;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public d(ILo/FU;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lo/TokenWatcher;->c:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 87
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 89
    :cond_0
    invoke-super {p0, p1, p2}, Lo/TransactionTooLargeException;->c(ILo/TimeUnit;)V

    return-void
.end method

.method public d(Lo/FU;I)V
    .locals 1

    .line 45
    iget-object v0, p0, Lo/TokenWatcher;->a:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 46
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/CharSequence;)Lo/TokenWatcher;
    .locals 0

    .line 183
    invoke-super {p0, p1}, Lo/TransactionTooLargeException;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public e(Lo/BiConsumer$Activity;)Lo/TokenWatcher;
    .locals 0

    .line 209
    invoke-super {p0, p1}, Lo/TransactionTooLargeException;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 25
    check-cast p1, Lo/FU;

    invoke-virtual {p0, p1}, Lo/TokenWatcher;->a(Lo/FU;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 248
    :cond_0
    instance-of v1, p1, Lo/TokenWatcher;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 251
    :cond_1
    invoke-super {p0, p1}, Lo/TransactionTooLargeException;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 254
    :cond_2
    check-cast p1, Lo/TokenWatcher;

    .line 255
    iget-object v1, p0, Lo/TokenWatcher;->a:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/TokenWatcher;->a:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 258
    :cond_5
    iget-object v1, p0, Lo/TokenWatcher;->b:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/TokenWatcher;->b:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 261
    :cond_8
    iget-object v1, p0, Lo/TokenWatcher;->c:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/TokenWatcher;->c:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 264
    :cond_b
    iget-object v1, p0, Lo/TokenWatcher;->i:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/TokenWatcher;->i:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 267
    :cond_e
    invoke-virtual {p0}, Lo/TokenWatcher;->h()I

    move-result v1

    invoke-virtual {p1}, Lo/TokenWatcher;->h()I

    move-result v3

    if-eq v1, v3, :cond_f

    return v2

    .line 270
    :cond_f
    invoke-virtual {p0}, Lo/TokenWatcher;->k()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-nez v1, :cond_10

    const/4 v1, 0x1

    goto :goto_8

    :cond_10
    const/4 v1, 0x0

    :goto_8
    invoke-virtual {p1}, Lo/TokenWatcher;->k()Landroid/view/View$OnClickListener;

    move-result-object p1

    if-nez p1, :cond_11

    const/4 p1, 0x1

    goto :goto_9

    :cond_11
    const/4 p1, 0x0

    :goto_9
    if-eq v1, p1, :cond_12

    return v2

    :cond_12
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 278
    invoke-super {p0}, Lo/TransactionTooLargeException;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 279
    iget-object v1, p0, Lo/TokenWatcher;->a:Lo/AEADBadTagException;

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

    .line 280
    iget-object v1, p0, Lo/TokenWatcher;->b:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 281
    iget-object v1, p0, Lo/TokenWatcher;->c:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 282
    iget-object v1, p0, Lo/TokenWatcher;->i:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 283
    invoke-virtual {p0}, Lo/TokenWatcher;->h()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 284
    invoke-virtual {p0}, Lo/TokenWatcher;->k()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpacerModel_{height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {p0}, Lo/TokenWatcher;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", clickListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {p0}, Lo/TokenWatcher;->k()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-super {p0}, Lo/TransactionTooLargeException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
