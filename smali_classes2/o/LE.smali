.class public Lo/LE;
.super Lo/LA;
.source ""

# interfaces
.implements Lo/IntToLongFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/LA;",
        "Lo/IntToLongFunction<",
        "Lo/LA$ActionBar;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/LE;",
            "Lo/LA$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/LE;",
            "Lo/LA$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/LE;",
            "Lo/LA$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/LE;",
            "Lo/LA$ActionBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lo/LA;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lo/LE;->e(I)Lo/LE;

    move-result-object p1

    return-object p1
.end method

.method public a(ILo/LA$ActionBar;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lo/LE;->b:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 90
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 92
    :cond_0
    invoke-super {p0, p1, p2}, Lo/LA;->c(ILo/TimeUnit;)V

    return-void
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 25
    check-cast p2, Lo/LA$ActionBar;

    invoke-virtual {p0, p1, p2, p3}, Lo/LE;->c(Lo/Consumer;Lo/LA$ActionBar;I)V

    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lo/LE;->e(J)Lo/LE;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p2, Lo/LA$ActionBar;

    invoke-virtual {p0, p1, p2}, Lo/LE;->a(ILo/LA$ActionBar;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 25
    check-cast p1, Lo/LA$ActionBar;

    invoke-virtual {p0, p1, p2}, Lo/LE;->c(Lo/LA$ActionBar;I)V

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lo/LE;->d(Ljava/lang/CharSequence;)Lo/LE;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lo/LE;->d(Lo/BiConsumer$Activity;)Lo/LE;

    move-result-object p1

    return-object p1
.end method

.method public c(FFIILo/LA$ActionBar;)V
    .locals 7

    .line 111
    iget-object v0, p0, Lo/LE;->h:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 112
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 114
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/LA;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public bridge synthetic c(FFIILo/TimeUnit;)V
    .locals 0

    .line 25
    check-cast p5, Lo/LA$ActionBar;

    invoke-virtual/range {p0 .. p5}, Lo/LE;->c(FFIILo/LA$ActionBar;)V

    return-void
.end method

.method public synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 25
    check-cast p2, Lo/LA$ActionBar;

    invoke-virtual {p0, p1, p2}, Lo/LE;->a(ILo/LA$ActionBar;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lo/LA$ActionBar;

    invoke-virtual {p0, p1}, Lo/LE;->c(Lo/LA$ActionBar;)V

    return-void
.end method

.method public c(Lo/Consumer;Lo/LA$ActionBar;I)V
    .locals 0

    return-void
.end method

.method public c(Lo/LA$ActionBar;)V
    .locals 1

    .line 66
    invoke-super {p0, p1}, Lo/LA;->e(Lo/TimeUnit;)V

    .line 67
    iget-object v0, p0, Lo/LE;->a:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 68
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public c(Lo/LA$ActionBar;I)V
    .locals 1

    .line 45
    iget-object v0, p0, Lo/LE;->c:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 46
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public d(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)Lo/LE;
    .locals 0

    .line 142
    invoke-virtual {p0}, Lo/LE;->i()V

    .line 143
    invoke-super {p0, p1}, Lo/LA;->b(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    return-object p0
.end method

.method public d(Ljava/lang/CharSequence;)Lo/LE;
    .locals 0

    .line 197
    invoke-super {p0, p1}, Lo/LA;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public d(Ljava/lang/Integer;)Lo/LE;
    .locals 0

    .line 154
    invoke-virtual {p0}, Lo/LE;->i()V

    .line 155
    invoke-super {p0, p1}, Lo/LA;->c(Ljava/lang/Integer;)V

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lo/LE;
    .locals 0

    .line 131
    invoke-virtual {p0}, Lo/LE;->i()V

    .line 132
    invoke-super {p0, p1}, Lo/LA;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public d(Lo/BiConsumer$Activity;)Lo/LE;
    .locals 0

    .line 223
    invoke-super {p0, p1}, Lo/LA;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 25
    move-object v5, p5

    check-cast v5, Lo/LA$ActionBar;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/LE;->c(FFIILo/LA$ActionBar;)V

    return-void
.end method

.method public e(I)Lo/LE;
    .locals 0

    .line 216
    invoke-super {p0, p1}, Lo/LA;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public e(J)Lo/LE;
    .locals 0

    .line 179
    invoke-super {p0, p1, p2}, Lo/LA;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public e(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)Lo/LE;
    .locals 0

    .line 167
    invoke-virtual {p0}, Lo/LE;->i()V

    .line 168
    invoke-super {p0, p1}, Lo/LA;->b(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    return-object p0
.end method

.method public synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 25
    check-cast p1, Lo/LA$ActionBar;

    invoke-virtual {p0, p1}, Lo/LE;->c(Lo/LA$ActionBar;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 264
    :cond_0
    instance-of v1, p1, Lo/LE;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 267
    :cond_1
    invoke-super {p0, p1}, Lo/LA;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 270
    :cond_2
    check-cast p1, Lo/LE;

    .line 271
    iget-object v1, p0, Lo/LE;->c:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/LE;->c:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 274
    :cond_5
    iget-object v1, p0, Lo/LE;->a:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/LE;->a:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 277
    :cond_8
    iget-object v1, p0, Lo/LE;->b:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/LE;->b:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 280
    :cond_b
    iget-object v1, p0, Lo/LE;->h:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/LE;->h:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 283
    :cond_e
    invoke-virtual {p0}, Lo/LE;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lo/LE;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/LE;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_8

    :cond_f
    invoke-virtual {p1}, Lo/LE;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    :goto_8
    return v2

    .line 286
    :cond_10
    invoke-virtual {p0}, Lo/LE;->l()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lo/LE;->l()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {p1}, Lo/LE;->l()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_9

    :cond_11
    invoke-virtual {p1}, Lo/LE;->l()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    if-eqz v1, :cond_12

    :goto_9
    return v2

    .line 289
    :cond_12
    invoke-virtual {p0}, Lo/LE;->o()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lo/LE;->o()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lo/LE;->o()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_a

    :cond_13
    invoke-virtual {p1}, Lo/LE;->o()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_14

    :goto_a
    return v2

    .line 292
    :cond_14
    invoke-virtual {p0}, Lo/LE;->m()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {p0}, Lo/LE;->m()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v1

    invoke-virtual {p1}, Lo/LE;->m()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    goto :goto_b

    :cond_15
    invoke-virtual {p1}, Lo/LE;->m()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object p1

    if-eqz p1, :cond_16

    :goto_b
    return v2

    :cond_16
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 300
    invoke-super {p0}, Lo/LA;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 301
    iget-object v1, p0, Lo/LE;->c:Lo/AEADBadTagException;

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

    .line 302
    iget-object v1, p0, Lo/LE;->a:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 303
    iget-object v1, p0, Lo/LE;->b:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 304
    iget-object v1, p0, Lo/LE;->h:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 305
    invoke-virtual {p0}, Lo/LE;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lo/LE;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 306
    invoke-virtual {p0}, Lo/LE;->l()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lo/LE;->l()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 307
    invoke-virtual {p0}, Lo/LE;->o()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lo/LE;->o()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 308
    invoke-virtual {p0}, Lo/LE;->m()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lo/LE;->m()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->hashCode()I

    move-result v3

    :cond_7
    add-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CwDialogDownloadRowModel_{playableIdForDownload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {p0}, Lo/LE;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", downloadVideoType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {p0}, Lo/LE;->l()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", buttonTextStringId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {p0}, Lo/LE;->o()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", trackingInfoHolder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {p0}, Lo/LE;->m()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-super {p0}, Lo/LA;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
