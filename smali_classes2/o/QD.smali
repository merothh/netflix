.class public Lo/QD;
.super Lo/QB;
.source ""

# interfaces
.implements Lo/IntToLongFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/QB;",
        "Lo/IntToLongFunction<",
        "Lo/QB$Activity;",
        ">;"
    }
.end annotation


# instance fields
.field private k:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/QD;",
            "Lo/QB$Activity;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/QD;",
            "Lo/QB$Activity;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/QD;",
            "Lo/QB$Activity;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/QD;",
            "Lo/QB$Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lo/QB;-><init>()V

    return-void
.end method


# virtual methods
.method public B()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;
    .locals 1

    .line 264
    invoke-super {p0}, Lo/QB;->s()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v0

    return-object v0
.end method

.method protected E()Lo/QB$Activity;
    .locals 1

    .line 484
    new-instance v0, Lo/QB$Activity;

    invoke-direct {v0}, Lo/QB$Activity;-><init>()V

    return-object v0
.end method

.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lo/QD;->g(I)Lo/QD;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/CharSequence;)Lo/QD;
    .locals 0

    .line 383
    invoke-virtual {p0}, Lo/QD;->i()V

    .line 384
    iput-object p1, p0, Lo/QB;->i:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a(Ljava/lang/Integer;)Lo/QD;
    .locals 0

    .line 181
    invoke-virtual {p0}, Lo/QD;->i()V

    .line 182
    invoke-super {p0, p1}, Lo/QB;->b(Ljava/lang/Integer;)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lo/QD;
    .locals 0

    .line 246
    invoke-virtual {p0}, Lo/QD;->i()V

    .line 247
    iput-object p1, p0, Lo/QB;->g:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lo/QD;
    .locals 0

    .line 298
    invoke-virtual {p0}, Lo/QD;->i()V

    .line 299
    invoke-super {p0, p1}, Lo/QB;->e(Z)V

    return-object p0
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 31
    check-cast p2, Lo/QB$Activity;

    invoke-virtual {p0, p1, p2, p3}, Lo/QD;->c(Lo/Consumer;Lo/QB$Activity;I)V

    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2}, Lo/QD;->c(J)Lo/QD;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/CharSequence;)Lo/QD;
    .locals 0

    .line 434
    invoke-super {p0, p1}, Lo/QB;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lo/QD;
    .locals 0

    .line 394
    invoke-virtual {p0}, Lo/QD;->i()V

    .line 395
    invoke-super {p0, p1}, Lo/QB;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public b(FFIILo/QB$Activity;)V
    .locals 7

    .line 117
    iget-object v0, p0, Lo/QD;->k:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 118
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 120
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/QB;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p2, Lo/QB$Activity;

    invoke-virtual {p0, p1, p2}, Lo/QD;->c(ILo/QB$Activity;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 31
    check-cast p1, Lo/QB$Activity;

    invoke-virtual {p0, p1, p2}, Lo/QD;->c(Lo/QB$Activity;I)V

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lo/QD;->b(Ljava/lang/CharSequence;)Lo/QD;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lo/QD;->d(Lo/BiConsumer$Activity;)Lo/QD;

    move-result-object p1

    return-object p1
.end method

.method public c(J)Lo/QD;
    .locals 0

    .line 416
    invoke-super {p0, p1, p2}, Lo/QB;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public c(Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;)Lo/QD;
    .locals 0

    .line 202
    invoke-virtual {p0}, Lo/QD;->i()V

    .line 203
    iput-object p1, p0, Lo/QB;->j:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    return-object p0
.end method

.method public c(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;)Lo/QD;
    .locals 0

    .line 235
    invoke-virtual {p0}, Lo/QD;->i()V

    .line 236
    iput-object p1, p0, Lo/QB;->f:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    return-object p0
.end method

.method public c(Lo/EncryptedPrivateKeyInfo;)Lo/QD;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/QD;",
            "Lo/QB$Activity;",
            ">;)",
            "Lo/QD;"
        }
    .end annotation

    .line 131
    invoke-virtual {p0}, Lo/QD;->i()V

    .line 132
    iput-object p1, p0, Lo/QD;->k:Lo/EncryptedPrivateKeyInfo;

    return-object p0
.end method

.method public synthetic c(FFIILo/TimeUnit;)V
    .locals 6

    .line 31
    move-object v5, p5

    check-cast v5, Lo/QB$Activity;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/QD;->b(FFIILo/QB$Activity;)V

    return-void
.end method

.method public c(ILo/QB$Activity;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lo/QD;->n:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 96
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 98
    :cond_0
    invoke-super {p0, p1, p2}, Lo/QB;->c(ILo/TimeUnit;)V

    return-void
.end method

.method public bridge synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 31
    check-cast p2, Lo/QB$Activity;

    invoke-virtual {p0, p1, p2}, Lo/QD;->c(ILo/QB$Activity;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p1, Lo/QB$Activity;

    invoke-virtual {p0, p1}, Lo/QD;->c(Lo/QB$Activity;)V

    return-void
.end method

.method public c(Lo/Consumer;Lo/QB$Activity;I)V
    .locals 0

    return-void
.end method

.method public c(Lo/QB$Activity;)V
    .locals 1

    .line 72
    invoke-super {p0, p1}, Lo/QB;->e(Lo/TimeUnit;)V

    .line 73
    iget-object v0, p0, Lo/QD;->m:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 74
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public c(Lo/QB$Activity;I)V
    .locals 1

    .line 51
    iget-object v0, p0, Lo/QD;->l:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 52
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public d(J)Lo/QD;
    .locals 0

    .line 192
    invoke-virtual {p0}, Lo/QD;->i()V

    .line 193
    invoke-super {p0, p1, p2}, Lo/QB;->a(J)V

    return-object p0
.end method

.method public d(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)Lo/QD;
    .locals 0

    .line 213
    invoke-virtual {p0}, Lo/QD;->i()V

    .line 214
    invoke-super {p0, p1}, Lo/QB;->b(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    return-object p0
.end method

.method public d(Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;)Lo/QD;
    .locals 0

    .line 170
    invoke-virtual {p0}, Lo/QD;->i()V

    .line 171
    iput-object p1, p0, Lo/QB;->c:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    return-object p0
.end method

.method public d(Ljava/lang/CharSequence;)Lo/QD;
    .locals 0

    .line 159
    invoke-virtual {p0}, Lo/QD;->i()V

    .line 160
    invoke-super {p0, p1}, Lo/QB;->e(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lo/QD;
    .locals 0

    .line 137
    invoke-virtual {p0}, Lo/QD;->i()V

    .line 138
    iput-object p1, p0, Lo/QB;->a:Ljava/lang/String;

    return-object p0
.end method

.method public d(Lo/BiConsumer$Activity;)Lo/QD;
    .locals 0

    .line 460
    invoke-super {p0, p1}, Lo/QB;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public d(Lo/Stream;)Lo/QD;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Stream<",
            "Lo/QD;",
            "Lo/QB$Activity;",
            ">;)",
            "Lo/QD;"
        }
    .end annotation

    .line 336
    invoke-virtual {p0}, Lo/QD;->i()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 338
    invoke-super {p0, p1}, Lo/QB;->b(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    .line 341
    :cond_0
    new-instance v0, Lo/ExemptionMechanismException;

    invoke-direct {v0, p1}, Lo/ExemptionMechanismException;-><init>(Lo/Stream;)V

    invoke-super {p0, v0}, Lo/QB;->b(Landroid/view/View$OnLongClickListener;)V

    :goto_0
    return-object p0
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 31
    move-object v5, p5

    check-cast v5, Lo/QB$Activity;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/QD;->b(FFIILo/QB$Activity;)V

    return-void
.end method

.method public e(J)Lo/QD;
    .locals 0

    .line 405
    invoke-virtual {p0}, Lo/QD;->i()V

    .line 406
    invoke-super {p0, p1, p2}, Lo/QB;->h(J)V

    return-object p0
.end method

.method public e(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)Lo/QD;
    .locals 0

    .line 148
    invoke-virtual {p0}, Lo/QD;->i()V

    .line 149
    iput-object p1, p0, Lo/QB;->b:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-object p0
.end method

.method public e(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)Lo/QD;
    .locals 0

    .line 257
    invoke-virtual {p0}, Lo/QD;->i()V

    .line 258
    invoke-super {p0, p1}, Lo/QB;->a(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    return-object p0
.end method

.method public e(Lo/LongStream;)Lo/QD;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/LongStream<",
            "Lo/QD;",
            "Lo/QB$Activity;",
            ">;)",
            "Lo/QD;"
        }
    .end annotation

    .line 311
    invoke-virtual {p0}, Lo/QD;->i()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 313
    invoke-super {p0, p1}, Lo/QB;->c(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 316
    :cond_0
    new-instance v0, Lo/ExemptionMechanismException;

    invoke-direct {v0, p1}, Lo/ExemptionMechanismException;-><init>(Lo/LongStream;)V

    invoke-super {p0, v0}, Lo/QB;->c(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-object p0
.end method

.method public synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 31
    check-cast p1, Lo/QB$Activity;

    invoke-virtual {p0, p1}, Lo/QD;->c(Lo/QB$Activity;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 525
    :cond_0
    instance-of v1, p1, Lo/QD;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 528
    :cond_1
    invoke-super {p0, p1}, Lo/QB;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 531
    :cond_2
    check-cast p1, Lo/QD;

    .line 532
    iget-object v1, p0, Lo/QD;->l:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/QD;->l:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 535
    :cond_5
    iget-object v1, p0, Lo/QD;->m:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/QD;->m:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 538
    :cond_8
    iget-object v1, p0, Lo/QD;->n:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/QD;->n:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 541
    :cond_b
    iget-object v1, p0, Lo/QD;->k:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/QD;->k:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 544
    :cond_e
    iget-object v1, p0, Lo/QD;->a:Ljava/lang/String;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lo/QD;->a:Ljava/lang/String;

    iget-object v3, p1, Lo/QD;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_8

    :cond_f
    iget-object v1, p1, Lo/QD;->a:Ljava/lang/String;

    if-eqz v1, :cond_10

    :goto_8
    return v2

    .line 547
    :cond_10
    iget-object v1, p0, Lo/QD;->b:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lo/QD;->b:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iget-object v3, p1, Lo/QD;->b:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_9

    :cond_11
    iget-object v1, p1, Lo/QD;->b:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-eqz v1, :cond_12

    :goto_9
    return v2

    .line 550
    :cond_12
    invoke-virtual {p0}, Lo/QD;->k()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lo/QD;->k()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1}, Lo/QD;->k()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_a

    :cond_13
    invoke-virtual {p1}, Lo/QD;->k()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_14

    :goto_a
    return v2

    .line 553
    :cond_14
    iget-object v1, p0, Lo/QD;->c:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lo/QD;->c:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    iget-object v3, p1, Lo/QD;->c:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_b

    :cond_15
    iget-object v1, p1, Lo/QD;->c:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    if-eqz v1, :cond_16

    :goto_b
    return v2

    .line 556
    :cond_16
    invoke-virtual {p0}, Lo/QD;->o()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {p0}, Lo/QD;->o()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lo/QD;->o()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_c

    :cond_17
    invoke-virtual {p1}, Lo/QD;->o()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_18

    :goto_c
    return v2

    .line 559
    :cond_18
    invoke-virtual {p0}, Lo/QD;->l()J

    move-result-wide v3

    invoke-virtual {p1}, Lo/QD;->l()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_19

    return v2

    .line 562
    :cond_19
    iget-object v1, p0, Lo/QD;->j:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lo/QD;->j:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    iget-object v3, p1, Lo/QD;->j:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_d

    :cond_1a
    iget-object v1, p1, Lo/QD;->j:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-eqz v1, :cond_1b

    :goto_d
    return v2

    .line 565
    :cond_1b
    invoke-virtual {p0}, Lo/QD;->m()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {p0}, Lo/QD;->m()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    move-result-object v1

    invoke-virtual {p1}, Lo/QD;->m()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_e

    :cond_1c
    invoke-virtual {p1}, Lo/QD;->m()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    move-result-object v1

    if-eqz v1, :cond_1d

    :goto_e
    return v2

    .line 568
    :cond_1d
    invoke-virtual {p0}, Lo/QD;->p()I

    move-result v1

    invoke-virtual {p1}, Lo/QD;->p()I

    move-result v3

    if-eq v1, v3, :cond_1e

    return v2

    .line 571
    :cond_1e
    iget-object v1, p0, Lo/QD;->f:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lo/QD;->f:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    iget-object v3, p1, Lo/QD;->f:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    goto :goto_f

    :cond_1f
    iget-object v1, p1, Lo/QD;->f:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    if-eqz v1, :cond_20

    :goto_f
    return v2

    .line 574
    :cond_20
    iget-object v1, p0, Lo/QD;->g:Ljava/lang/String;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lo/QD;->g:Ljava/lang/String;

    iget-object v3, p1, Lo/QD;->g:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    goto :goto_10

    :cond_21
    iget-object v1, p1, Lo/QD;->g:Ljava/lang/String;

    if-eqz v1, :cond_22

    :goto_10
    return v2

    .line 577
    :cond_22
    invoke-virtual {p0}, Lo/QD;->s()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-virtual {p0}, Lo/QD;->s()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v1

    invoke-virtual {p1}, Lo/QD;->s()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    goto :goto_11

    :cond_23
    invoke-virtual {p1}, Lo/QD;->s()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v1

    if-eqz v1, :cond_24

    :goto_11
    return v2

    .line 580
    :cond_24
    invoke-virtual {p0}, Lo/QD;->r()I

    move-result v1

    invoke-virtual {p1}, Lo/QD;->r()I

    move-result v3

    if-eq v1, v3, :cond_25

    return v2

    .line 583
    :cond_25
    invoke-virtual {p0}, Lo/QD;->t()I

    move-result v1

    invoke-virtual {p1}, Lo/QD;->t()I

    move-result v3

    if-eq v1, v3, :cond_26

    return v2

    .line 586
    :cond_26
    invoke-virtual {p0}, Lo/QD;->q()I

    move-result v1

    invoke-virtual {p1}, Lo/QD;->q()I

    move-result v3

    if-eq v1, v3, :cond_27

    return v2

    .line 589
    :cond_27
    invoke-virtual {p0}, Lo/QD;->y()Z

    move-result v1

    invoke-virtual {p1}, Lo/QD;->y()Z

    move-result v3

    if-eq v1, v3, :cond_28

    return v2

    .line 592
    :cond_28
    invoke-virtual {p0}, Lo/QD;->v()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-nez v1, :cond_29

    const/4 v1, 0x1

    goto :goto_12

    :cond_29
    const/4 v1, 0x0

    :goto_12
    invoke-virtual {p1}, Lo/QD;->v()Landroid/view/View$OnClickListener;

    move-result-object v3

    if-nez v3, :cond_2a

    const/4 v3, 0x1

    goto :goto_13

    :cond_2a
    const/4 v3, 0x0

    :goto_13
    if-eq v1, v3, :cond_2b

    return v2

    .line 595
    :cond_2b
    invoke-virtual {p0}, Lo/QD;->u()Landroid/view/View$OnLongClickListener;

    move-result-object v1

    if-nez v1, :cond_2c

    const/4 v1, 0x1

    goto :goto_14

    :cond_2c
    const/4 v1, 0x0

    :goto_14
    invoke-virtual {p1}, Lo/QD;->u()Landroid/view/View$OnLongClickListener;

    move-result-object v3

    if-nez v3, :cond_2d

    const/4 v3, 0x1

    goto :goto_15

    :cond_2d
    const/4 v3, 0x0

    :goto_15
    if-eq v1, v3, :cond_2e

    return v2

    .line 598
    :cond_2e
    invoke-virtual {p0}, Lo/QD;->I()Z

    move-result v1

    invoke-virtual {p1}, Lo/QD;->I()Z

    move-result v3

    if-eq v1, v3, :cond_2f

    return v2

    .line 601
    :cond_2f
    invoke-virtual {p0}, Lo/QD;->F()Z

    move-result v1

    invoke-virtual {p1}, Lo/QD;->F()Z

    move-result v3

    if-eq v1, v3, :cond_30

    return v2

    .line 604
    :cond_30
    iget-object v1, p0, Lo/QD;->i:Ljava/lang/CharSequence;

    if-eqz v1, :cond_31

    iget-object v1, p0, Lo/QD;->i:Ljava/lang/CharSequence;

    iget-object v3, p1, Lo/QD;->i:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    goto :goto_16

    :cond_31
    iget-object v1, p1, Lo/QD;->i:Ljava/lang/CharSequence;

    if-eqz v1, :cond_32

    :goto_16
    return v2

    .line 607
    :cond_32
    invoke-virtual {p0}, Lo/QD;->D()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_33

    invoke-virtual {p0}, Lo/QD;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/QD;->D()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    goto :goto_17

    :cond_33
    invoke-virtual {p1}, Lo/QD;->D()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_34

    :goto_17
    return v2

    .line 610
    :cond_34
    invoke-virtual {p0}, Lo/QD;->C()J

    move-result-wide v3

    invoke-virtual {p1}, Lo/QD;->C()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-eqz p1, :cond_35

    return v2

    :cond_35
    return v0
.end method

.method public f(I)Lo/QD;
    .locals 0

    .line 288
    invoke-virtual {p0}, Lo/QD;->i()V

    .line 289
    invoke-super {p0, p1}, Lo/QB;->c(I)V

    return-object p0
.end method

.method public g(I)Lo/QD;
    .locals 0

    .line 453
    invoke-super {p0, p1}, Lo/QB;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public h(I)Lo/QD;
    .locals 0

    .line 224
    invoke-virtual {p0}, Lo/QD;->i()V

    .line 225
    invoke-super {p0, p1}, Lo/QB;->b(I)V

    return-object p0
.end method

.method public hashCode()I
    .locals 8

    .line 618
    invoke-super {p0}, Lo/QB;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 619
    iget-object v1, p0, Lo/QD;->l:Lo/AEADBadTagException;

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

    .line 620
    iget-object v1, p0, Lo/QD;->m:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 621
    iget-object v1, p0, Lo/QD;->n:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 622
    iget-object v1, p0, Lo/QD;->k:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 623
    iget-object v1, p0, Lo/QD;->a:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lo/QD;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 624
    iget-object v1, p0, Lo/QD;->b:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lo/QD;->b:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 625
    invoke-virtual {p0}, Lo/QD;->k()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lo/QD;->k()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 626
    iget-object v1, p0, Lo/QD;->c:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lo/QD;->c:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 627
    invoke-virtual {p0}, Lo/QD;->o()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lo/QD;->o()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_8
    const/4 v1, 0x0

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 628
    invoke-virtual {p0}, Lo/QD;->l()J

    move-result-wide v4

    invoke-virtual {p0}, Lo/QD;->l()J

    move-result-wide v6

    const/16 v1, 0x20

    ushr-long/2addr v6, v1

    xor-long/2addr v4, v6

    long-to-int v5, v4

    add-int/2addr v0, v5

    mul-int/lit8 v0, v0, 0x1f

    .line 629
    iget-object v4, p0, Lo/QD;->j:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lo/QD;->j:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->hashCode()I

    move-result v4

    goto :goto_9

    :cond_9
    const/4 v4, 0x0

    :goto_9
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    .line 630
    invoke-virtual {p0}, Lo/QD;->m()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {p0}, Lo/QD;->m()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->hashCode()I

    move-result v4

    goto :goto_a

    :cond_a
    const/4 v4, 0x0

    :goto_a
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    .line 631
    invoke-virtual {p0}, Lo/QD;->p()I

    move-result v4

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    .line 632
    iget-object v4, p0, Lo/QD;->f:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lo/QD;->f:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->hashCode()I

    move-result v4

    goto :goto_b

    :cond_b
    const/4 v4, 0x0

    :goto_b
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    .line 633
    iget-object v4, p0, Lo/QD;->g:Ljava/lang/String;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lo/QD;->g:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto :goto_c

    :cond_c
    const/4 v4, 0x0

    :goto_c
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    .line 634
    invoke-virtual {p0}, Lo/QD;->s()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual {p0}, Lo/QD;->s()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->hashCode()I

    move-result v4

    goto :goto_d

    :cond_d
    const/4 v4, 0x0

    :goto_d
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    .line 635
    invoke-virtual {p0}, Lo/QD;->r()I

    move-result v4

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    .line 636
    invoke-virtual {p0}, Lo/QD;->t()I

    move-result v4

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    .line 637
    invoke-virtual {p0}, Lo/QD;->q()I

    move-result v4

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    .line 638
    invoke-virtual {p0}, Lo/QD;->y()Z

    move-result v4

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    .line 639
    invoke-virtual {p0}, Lo/QD;->v()Landroid/view/View$OnClickListener;

    move-result-object v4

    if-eqz v4, :cond_e

    const/4 v4, 0x1

    goto :goto_e

    :cond_e
    const/4 v4, 0x0

    :goto_e
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    .line 640
    invoke-virtual {p0}, Lo/QD;->u()Landroid/view/View$OnLongClickListener;

    move-result-object v4

    if-eqz v4, :cond_f

    goto :goto_f

    :cond_f
    const/4 v2, 0x0

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 641
    invoke-virtual {p0}, Lo/QD;->I()Z

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 642
    invoke-virtual {p0}, Lo/QD;->F()Z

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 643
    iget-object v2, p0, Lo/QD;->i:Ljava/lang/CharSequence;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lo/QD;->i:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_10

    :cond_10
    const/4 v2, 0x0

    :goto_10
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 644
    invoke-virtual {p0}, Lo/QD;->D()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {p0}, Lo/QD;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :cond_11
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 645
    invoke-virtual {p0}, Lo/QD;->C()J

    move-result-wide v2

    invoke-virtual {p0}, Lo/QD;->C()J

    move-result-wide v4

    ushr-long/2addr v4, v1

    xor-long v1, v2, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.method public i(I)Lo/QD;
    .locals 0

    .line 268
    invoke-virtual {p0}, Lo/QD;->i()V

    .line 269
    invoke-super {p0, p1}, Lo/QB;->d(I)V

    return-object p0
.end method

.method public j(I)Lo/QD;
    .locals 0

    .line 278
    invoke-virtual {p0}, Lo/QD;->i()V

    .line 279
    invoke-super {p0, p1}, Lo/QB;->e(I)V

    return-object p0
.end method

.method protected synthetic n()Lo/TimeUnit;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lo/QD;->E()Lo/QB$Activity;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadedVideoModel_{playableId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/QD;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", videoType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/QD;->b:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", certification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    invoke-virtual {p0}, Lo/QD;->k()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", watchState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/QD;->c:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", watchProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    invoke-virtual {p0}, Lo/QD;->o()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", expiringInMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    invoke-virtual {p0}, Lo/QD;->l()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", downloadState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/QD;->j:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", stopReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    invoke-virtual {p0}, Lo/QD;->m()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", downloadProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    invoke-virtual {p0}, Lo/QD;->p()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", downloadButtonState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/QD;->f:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", profileId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/QD;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", trackingInfoHolder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    invoke-virtual {p0}, Lo/QD;->s()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", runtime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    invoke-virtual {p0}, Lo/QD;->r()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", seasonId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    invoke-virtual {p0}, Lo/QD;->t()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", episodeNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    invoke-virtual {p0}, Lo/QD;->q()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hideEpisodeNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    invoke-virtual {p0}, Lo/QD;->y()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", clickListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    invoke-virtual {p0}, Lo/QD;->v()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", longClickListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    invoke-virtual {p0}, Lo/QD;->u()Landroid/view/View$OnLongClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", selectable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    invoke-virtual {p0}, Lo/QD;->I()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", selected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    invoke-virtual {p0}, Lo/QD;->F()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/QD;->i:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", boxShotUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    invoke-virtual {p0}, Lo/QD;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", currentSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    invoke-virtual {p0}, Lo/QD;->C()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    invoke-super {p0}, Lo/QB;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .line 155
    iget-object v0, p0, Lo/QD;->b:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-object v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lo/QD;->a:Ljava/lang/String;

    return-object v0
.end method

.method public z()Z
    .locals 1

    .line 367
    invoke-super {p0}, Lo/QB;->I()Z

    move-result v0

    return v0
.end method
