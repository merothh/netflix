.class public Lo/acd;
.super Lo/ace;
.source ""

# interfaces
.implements Lo/IntToLongFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/ace;",
        "Lo/IntToLongFunction<",
        "Lo/ace$TaskDescription;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/acd;",
            "Lo/ace$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/acd;",
            "Lo/ace$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/acd;",
            "Lo/ace$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/acd;",
            "Lo/ace$TaskDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lo/ace;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/acd;->e(I)Lo/acd;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/CharSequence;)Lo/acd;
    .locals 0

    .line 175
    invoke-super {p0, p1}, Lo/ace;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 24
    check-cast p2, Lo/ace$TaskDescription;

    invoke-virtual {p0, p1, p2, p3}, Lo/acd;->e(Lo/Consumer;Lo/ace$TaskDescription;I)V

    return-void
.end method

.method public a(Lo/ace$TaskDescription;)V
    .locals 1

    .line 65
    invoke-super {p0, p1}, Lo/ace;->e(Lo/TimeUnit;)V

    .line 66
    iget-object v0, p0, Lo/acd;->b:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 67
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Lo/ace$TaskDescription;I)V
    .locals 1

    .line 44
    iget-object v0, p0, Lo/acd;->a:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 45
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lo/acd;->d(J)Lo/acd;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/view/View$OnClickListener;)Lo/acd;
    .locals 0

    .line 145
    invoke-virtual {p0}, Lo/acd;->i()V

    .line 146
    iput-object p1, p0, Lo/ace;->c:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public bridge synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p2, Lo/ace$TaskDescription;

    invoke-virtual {p0, p1, p2}, Lo/acd;->b(ILo/ace$TaskDescription;)V

    return-void
.end method

.method public b(ILo/ace$TaskDescription;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lo/acd;->j:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 91
    :cond_0
    invoke-super {p0, p1, p2}, Lo/ace;->c(ILo/TimeUnit;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 24
    check-cast p1, Lo/ace$TaskDescription;

    invoke-virtual {p0, p1, p2}, Lo/acd;->a(Lo/ace$TaskDescription;I)V

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/acd;->a(Ljava/lang/CharSequence;)Lo/acd;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/acd;->d(Lo/BiConsumer$Activity;)Lo/acd;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(FFIILo/TimeUnit;)V
    .locals 0

    .line 24
    check-cast p5, Lo/ace$TaskDescription;

    invoke-virtual/range {p0 .. p5}, Lo/acd;->c(FFIILo/ace$TaskDescription;)V

    return-void
.end method

.method public c(FFIILo/ace$TaskDescription;)V
    .locals 7

    .line 110
    iget-object v0, p0, Lo/acd;->i:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 111
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 113
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/ace;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 24
    check-cast p2, Lo/ace$TaskDescription;

    invoke-virtual {p0, p1, p2}, Lo/acd;->b(ILo/ace$TaskDescription;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lo/ace$TaskDescription;

    invoke-virtual {p0, p1}, Lo/acd;->a(Lo/ace$TaskDescription;)V

    return-void
.end method

.method public d(J)Lo/acd;
    .locals 0

    .line 157
    invoke-super {p0, p1, p2}, Lo/ace;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public d(Lo/BiConsumer$Activity;)Lo/acd;
    .locals 0

    .line 199
    invoke-super {p0, p1}, Lo/ace;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 24
    move-object v5, p5

    check-cast v5, Lo/ace$TaskDescription;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/acd;->c(FFIILo/ace$TaskDescription;)V

    return-void
.end method

.method public e(I)Lo/acd;
    .locals 0

    .line 193
    invoke-super {p0, p1}, Lo/ace;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public e(Lo/Consumer;Lo/ace$TaskDescription;I)V
    .locals 0

    return-void
.end method

.method public synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 24
    check-cast p1, Lo/ace$TaskDescription;

    invoke-virtual {p0, p1}, Lo/acd;->a(Lo/ace$TaskDescription;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 242
    :cond_0
    instance-of v1, p1, Lo/acd;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 245
    :cond_1
    invoke-super {p0, p1}, Lo/ace;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 248
    :cond_2
    check-cast p1, Lo/acd;

    .line 249
    iget-object v1, p0, Lo/acd;->a:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/acd;->a:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 252
    :cond_5
    iget-object v1, p0, Lo/acd;->b:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/acd;->b:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 255
    :cond_8
    iget-object v1, p0, Lo/acd;->j:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/acd;->j:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 258
    :cond_b
    iget-object v1, p0, Lo/acd;->i:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/acd;->i:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 261
    :cond_e
    iget-object v1, p0, Lo/acd;->c:Landroid/view/View$OnClickListener;

    if-nez v1, :cond_f

    const/4 v1, 0x1

    goto :goto_8

    :cond_f
    const/4 v1, 0x0

    :goto_8
    iget-object p1, p1, Lo/acd;->c:Landroid/view/View$OnClickListener;

    if-nez p1, :cond_10

    const/4 p1, 0x1

    goto :goto_9

    :cond_10
    const/4 p1, 0x0

    :goto_9
    if-eq v1, p1, :cond_11

    return v2

    :cond_11
    return v0
.end method

.method protected h()Lo/ace$TaskDescription;
    .locals 1

    .line 223
    new-instance v0, Lo/ace$TaskDescription;

    invoke-direct {v0}, Lo/ace$TaskDescription;-><init>()V

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 269
    invoke-super {p0}, Lo/ace;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 270
    iget-object v1, p0, Lo/acd;->a:Lo/AEADBadTagException;

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
    iget-object v1, p0, Lo/acd;->b:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 272
    iget-object v1, p0, Lo/acd;->j:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 273
    iget-object v1, p0, Lo/acd;->i:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 274
    iget-object v1, p0, Lo/acd;->c:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    return v0
.end method

.method protected synthetic n()Lo/TimeUnit;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lo/acd;->h()Lo/ace$TaskDescription;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConfirmButtonModel_{confirmClickListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/acd;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-super {p0}, Lo/ace;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
