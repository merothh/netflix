.class public Lo/hX;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/zI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/hX$TaskDescription;
    }
.end annotation


# instance fields
.field private final a:Lo/bI;

.field private final b:Lo/hY;


# direct methods
.method public constructor <init>(Lo/hY;Lo/bI;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lo/hX;->b:Lo/hY;

    .line 81
    iput-object p2, p0, Lo/hX;->a:Lo/bI;

    return-void
.end method

.method private a(Lo/ci;)Lo/ci;
    .locals 1

    .line 735
    new-instance v0, Lo/ch;

    invoke-direct {v0, p1}, Lo/ch;-><init>(Lo/ci;)V

    return-object v0
.end method

.method static synthetic b(Lo/hX;)Lo/bI;
    .locals 0

    .line 73
    iget-object p0, p0, Lo/hX;->a:Lo/bI;

    return-object p0
.end method


# virtual methods
.method public a(IILjava/lang/String;II)V
    .locals 7

    .line 92
    new-instance v0, Lo/hX$TaskDescription;

    invoke-direct {v0, p0, p4, p5}, Lo/hX$TaskDescription;-><init>(Lo/hX;II)V

    .line 94
    iget-object v1, p0, Lo/hX;->b:Lo/hY;

    invoke-direct {p0, v0}, Lo/hX;->a(Lo/ci;)Lo/ci;

    move-result-object v6

    const/4 v5, 0x0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lo/hY;->b(IILjava/lang/String;ZLo/ci;)V

    return-void
.end method

.method public a(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIII)V
    .locals 1

    .line 603
    new-instance v0, Lo/hX$TaskDescription;

    invoke-direct {v0, p0, p4, p5}, Lo/hX$TaskDescription;-><init>(Lo/hX;II)V

    .line 604
    iget-object p4, p0, Lo/hX;->b:Lo/hY;

    invoke-direct {p0, v0}, Lo/hX;->a(Lo/ci;)Lo/ci;

    move-result-object p5

    invoke-virtual {p4, p1, p2, p3, p5}, Lo/hY;->c(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IILo/ci;)V

    return-void
.end method

.method public a(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZII)V
    .locals 8

    .line 147
    new-instance v0, Lo/hX$TaskDescription;

    invoke-direct {v0, p0, p6, p7}, Lo/hX$TaskDescription;-><init>(Lo/hX;II)V

    .line 149
    iget-object v1, p0, Lo/hX;->b:Lo/hY;

    invoke-direct {p0, v0}, Lo/hX;->a(Lo/ci;)Lo/ci;

    move-result-object v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v7}, Lo/hY;->e(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZLo/ci;)V

    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .locals 1

    .line 374
    new-instance v0, Lo/hX$TaskDescription;

    invoke-direct {v0, p0, p2, p3}, Lo/hX$TaskDescription;-><init>(Lo/hX;II)V

    .line 375
    iget-object p2, p0, Lo/hX;->b:Lo/hY;

    invoke-direct {p0, v0}, Lo/hX;->a(Lo/ci;)Lo/ci;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lo/hY;->c(Ljava/lang/String;Lo/ci;)V

    return-void
.end method

.method public a(Ljava/lang/String;IIII)V
    .locals 1

    .line 597
    new-instance v0, Lo/hX$TaskDescription;

    invoke-direct {v0, p0, p4, p5}, Lo/hX$TaskDescription;-><init>(Lo/hX;II)V

    .line 598
    iget-object p4, p0, Lo/hX;->b:Lo/hY;

    invoke-direct {p0, v0}, Lo/hX;->a(Lo/ci;)Lo/ci;

    move-result-object p5

    invoke-virtual {p4, p1, p2, p3, p5}, Lo/hY;->b(Ljava/lang/String;IILo/ci;)V

    return-void
.end method

.method public a(Ljava/lang/String;IIIIZ)V
    .locals 7

    .line 615
    new-instance v0, Lo/hX$TaskDescription;

    invoke-direct {v0, p0, p2, p3}, Lo/hX$TaskDescription;-><init>(Lo/hX;II)V

    .line 616
    iget-object v1, p0, Lo/hX;->b:Lo/hY;

    invoke-direct {p0, v0}, Lo/hX;->a(Lo/ci;)Lo/ci;

    move-result-object v6

    move-object v2, p1

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v1 .. v6}, Lo/hY;->c(Ljava/lang/String;IIZLo/ci;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;II)V
    .locals 1

    .line 514
    new-instance v0, Lo/hX$TaskDescription;

    invoke-direct {v0, p0, p3, p4}, Lo/hX$TaskDescription;-><init>(Lo/hX;II)V

    .line 516
    iget-object p3, p0, Lo/hX;->b:Lo/hY;

    invoke-direct {p0, v0}, Lo/hX;->a(Lo/ci;)Lo/ci;

    move-result-object p4

    invoke-virtual {p3, p1, p2, p4}, Lo/hY;->b(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 1

    .line 683
    iget-object v0, p0, Lo/hX;->b:Lo/hY;

    invoke-virtual {v0, p1, p2}, Lo/hY;->b(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7

    .line 320
    new-instance v0, Lo/hX$TaskDescription;

    invoke-direct {v0, p0, p5, p6}, Lo/hX$TaskDescription;-><init>(Lo/hX;II)V

    .line 322
    iget-object v1, p0, Lo/hX;->b:Lo/hY;

    invoke-direct {p0, v0}, Lo/hX;->a(Lo/ci;)Lo/ci;

    move-result-object v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lo/hY;->c(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lo/ci;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ZII)V
    .locals 7

    .line 427
    new-instance v0, Lo/hX$TaskDescription;

    invoke-direct {v0, p0, p4, p5}, Lo/hX$TaskDescription;-><init>(Lo/hX;II)V

    .line 429
    iget-object v1, p0, Lo/hX;->b:Lo/hY;

    sget-object v5, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    .line 434
    invoke-direct {p0, v0}, Lo/hX;->a(Lo/ci;)Lo/ci;

    move-result-object v6

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    .line 429
    invoke-virtual/range {v1 .. v6}, Lo/hY;->b(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V

    return-void
.end method

.method public a(Ljava/util/List;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/Av;",
            ">;II)V"
        }
    .end annotation

    .line 415
    new-instance v0, Lo/hX$TaskDescription;

    invoke-direct {v0, p0, p2, p3}, Lo/hX$TaskDescription;-><init>(Lo/hX;II)V

    .line 417
    iget-object p2, p0, Lo/hX;->b:Lo/hY;

    invoke-direct {p0, v0}, Lo/hX;->a(Lo/ci;)Lo/ci;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lo/hY;->b(Ljava/util/List;Lo/ci;)V

    return-void
.end method

.method public a(Lo/ConfirmationCallback;II)V
    .locals 1

    .line 86
    new-instance v0, Lo/hX$TaskDescription;

    invoke-direct {v0, p0, p2, p3}, Lo/hX$TaskDescription;-><init>(Lo/hX;II)V

    .line 87
    iget-object p2, p0, Lo/hX;->b:Lo/hY;

    invoke-direct {p0, v0}, Lo/hX;->a(Lo/ci;)Lo/ci;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lo/hY;->d(Lo/SettingsValidators;Lo/ci;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 658
    iget-object v0, p0, Lo/hX;->b:Lo/hY;

    invoke-virtual {v0}, Lo/hY;->f()V

    return-void
.end method

.method public b(IILjava/lang/String;IIZ)V
    .locals 7

    .line 287
    new-instance v0, Lo/hX$TaskDescription;

    invoke-direct {v0, p0, p4, p5}, Lo/hX$TaskDescription;-><init>(Lo/hX;II)V

    .line 289
    iget-object v1, p0, Lo/hX;->b:Lo/hY;

    invoke-direct {p0, v0}, Lo/hX;->a(Lo/ci;)Lo/ci;

    move-result-object v5

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v6, p6

    invoke-virtual/range {v1 .. v6}, Lo/hY;->b(IILjava/lang/String;Lo/ci;Z)V

    return-void
.end method

.method public b(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZII)V
    .locals 7

    .line 178
    new-instance v0, Lo/hX$TaskDescription;

    invoke-direct {v0, p0, p5, p6}, Lo/hX$TaskDescription;-><init>(Lo/hX;II)V

    .line 180
    iget-object v1, p0, Lo/hX;->b:Lo/hY;

    invoke-direct {p0, v0}, Lo/hX;->a(Lo/ci;)Lo/ci;

    move-result-object v6

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lo/hY;->a(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZLo/ci;)V

    return-void
.end method

.method public b(Ljava/lang/String;II)V
    .locals 1

    .line 367
    new-instance v0, Lo/hX$TaskDescription;

    invoke-direct {v0, p0, p2, p3}, Lo/hX$TaskDescription;-><init>(Lo/hX;II)V

    .line 369
    iget-object p2, p0, Lo/hX;->b:Lo/hY;

    invoke-direct {p0, v0}, Lo/hX;->a(Lo/ci;)Lo/ci;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lo/hY;->e(Ljava/lang/String;Lo/ci;)V

    return-void
.end method

.method public b(Ljava/lang/String;IIII)V
    .locals 1

    .line 129
    new-instance v0, Lo/hX$TaskDescription;

    invoke-direct {v0, p0, p4, p5}, Lo/hX$TaskDescription;-><init>(Lo/hX;II)V

    .line 131
    iget-object p4, p0, Lo/hX;->b:Lo/hY;

    invoke-direct {p0, v0}, Lo/hX;->a(Lo/ci;)Lo/ci;

    move-result-object p5

    invoke-virtual {p4, p1, p2, p3, p5}, Lo/hY;->c(Ljava/lang/String;IILo/ci;)V

    return-void
.end method

.method public b(Ljava/lang/String;IIIIII)V
    .locals 8

    .line 103
    new-instance v0, Lo/hX$TaskDescription;

    invoke-direct {v0, p0, p6, p7}, Lo/hX$TaskDescription;-><init>(Lo/hX;II)V

    .line 105
    iget-object v1, p0, Lo/hX;->b:Lo/hY;

    .line 106
    invoke-direct {p0, v0}, Lo/hX;->a(Lo/ci;)Lo/ci;

    move-result-object v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 105
    invoke-virtual/range {v1 .. v7}, Lo/hY;->a(Ljava/lang/String;IIIILo/ci;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;I)V
    .locals 1

    .line 688
    iget-object v0, p0, Lo/hX;->b:Lo/hY;

    invoke-virtual {v0, p1, p2, p3}, Lo/hY;->e(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;I)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .line 458
    new-instance v0, Lo/hX$TaskDescription;

    invoke-direct {v0, p0, p3, p4}, Lo/hX$TaskDescription;-><init>(Lo/hX;II)V

    .line 460
    iget-object p3, p0, Lo/hX;->b:Lo/hY;

    sget-object p4, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    invoke-direct {p0, v0}, Lo/hX;->a(Lo/ci;)Lo/ci;

    move-result-object v0

    invoke-virtual {p3, p1, p2, p4, v0}, Lo/hY;->e(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/browse/api/task/TaskMode;II)V
    .locals 7

    .line 409
    new-instance v0, Lo/hX$TaskDescription;

    invoke-direct {v0, p0, p5, p6}, Lo/hX$TaskDescription;-><init>(Lo/hX;II)V

    .line 411
    iget-object v1, p0, Lo/hX;->b:Lo/hY;

    invoke-direct {p0, v0}, Lo/hX;->a(Lo/ci;)Lo/ci;

    move-result-object v6

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lo/hY;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V

    return-void
.end method

.method public b(Ljava/util/List;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 716
    new-instance v0, Lo/hX$TaskDescription;

    invoke-direct {v0, p0, p2, p3}, Lo/hX$TaskDescription;-><init>(Lo/hX;II)V

    .line 717
    iget-object p2, p0, Lo/hX;->b:Lo/hY;

    invoke-direct {p0, v0}, Lo/hX;->a(Lo/ci;)Lo/ci;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lo/hY;->e(Ljava/util/List;Lo/ci;)V

    return-void
.end method

.method public b(ZZZLcom/netflix/mediaclient/service/pushnotification/MessageData;)V
    .locals 1

    .line 705
    iget-object v0, p0, Lo/hX;->b:Lo/hY;

    invoke-virtual {v0, p1, p2, p3, p4}, Lo/hY;->b(ZZZLcom/netflix/mediaclient/service/pushnotification/MessageData;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 633
    iget-object v0, p0, Lo/hX;->b:Lo/hY;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/hY;->b(Z)V

    return-void
.end method

.method public c(Ljava/lang/String;II)V
    .locals 1

    .line 710
    new-instance v0, Lo/hX$TaskDescription;

    invoke-direct {v0, p0, p2, p3}, Lo/hX$TaskDescription;-><init>(Lo/hX;II)V

    .line 711
    iget-object p2, p0, Lo/hX;->b:Lo/hY;

    invoke-direct {p0, v0}, Lo/hX;->a(Lo/ci;)Lo/ci;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lo/hY;->g(Ljava/lang/String;Lo/ci;)V

    return-void
.end method

.method public c(Ljava/lang/String;IIII)V
    .locals 1

    .line 539
    new-instance v0, Lo/hX$TaskDescription;

    invoke-direct {v0, p0, p4, p5}, Lo/hX$TaskDescription;-><init>(Lo/hX;II)V

    .line 541
    iget-object p4, p0, Lo/hX;->b:Lo/hY;

    invoke-direct {p0, v0}, Lo/hX;->a(Lo/ci;)Lo/ci;

    move-result-object p5

    invoke-virtual {p4, p1, p2, p3, p5}, Lo/hY;->e(Ljava/lang/String;IILo/ci;)V

    return-void
.end method

.method public c(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;IIII)V
    .locals 7

    .line 591
    new-instance v0, Lo/hX$TaskDescription;

    invoke-direct {v0, p0, p5, p6}, Lo/hX$TaskDescription;-><init>(Lo/hX;II)V

    .line 592
    iget-object v1, p0, Lo/hX;->b:Lo/hY;

    invoke-direct {p0, v0}, Lo/hX;->a(Lo/ci;)Lo/ci;

    move-result-object v6

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lo/hY;->b(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;IILo/ci;)V

    return-void
.end method

.method public c(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;ZII)V
    .locals 1

    .line 585
    new-instance v0, Lo/hX$TaskDescription;

    invoke-direct {v0, p0, p4, p5}, Lo/hX$TaskDescription;-><init>(Lo/hX;II)V

    .line 586
    iget-object p4, p0, Lo/hX;->b:Lo/hY;

    invoke-direct {p0, v0}, Lo/hX;->a(Lo/ci;)Lo/ci;

    move-result-object p5

    invoke-virtual {p4, p1, p2, p3, p5}, Lo/hY;->b(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;ZLo/ci;)V

    return-void
.end method

.method public c(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7

    .line 573
    new-instance v0, Lo/hX$TaskDescription;

    invoke-direct {v0, p0, p5, p6}, Lo/hX$TaskDescription;-><init>(Lo/hX;II)V

    .line 575
    iget-object v1, p0, Lo/hX;->b:Lo/hY;

    invoke-direct {p0, v0}, Lo/hX;->a(Lo/ci;)Lo/ci;

    move-result-object v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lo/hY;->d(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lo/ci;)V

    return-void
.end method

.method public c(Ljava/lang/String;ZII)V
    .locals 1

    .line 699
    new-instance v0, Lo/hX$TaskDescription;

    invoke-direct {v0, p0, p3, p4}, Lo/hX$TaskDescription;-><init>(Lo/hX;II)V

    .line 700
    iget-object p3, p0, Lo/hX;->b:Lo/hY;

    invoke-direct {p0, v0}, Lo/hX;->a(Lo/ci;)Lo/ci;

    move-result-object p4

    invoke-virtual {p3, p1, p2, p4}, Lo/hY;->b(Ljava/lang/String;ZLo/ci;)V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 667
    iget-object v0, p0, Lo/hX;->b:Lo/hY;

    invoke-virtual {v0}, Lo/hY;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(IIII)V
    .locals 1

    .line 693
    new-instance v0, Lo/hX$TaskDescription;

    invoke-direct {v0, p0, p3, p4}, Lo/hX$TaskDescription;-><init>(Lo/hX;II)V

    .line 694
    iget-object p3, p0, Lo/hX;->b:Lo/hY;

    invoke-direct {p0, v0}, Lo/hX;->a(Lo/ci;)Lo/ci;

    move-result-object p4

    invoke-virtual {p3, p1, p2, p4}, Lo/hY;->e(IILo/ci;)V

    return-void
.end method

.method public d(IIZLjava/lang/String;II)V
    .locals 7

    .line 274
    new-instance v0, Lo/hX$TaskDescription;

    invoke-direct {v0, p0, p5, p6}, Lo/hX$TaskDescription;-><init>(Lo/hX;II)V

    .line 276
    iget-object v1, p0, Lo/hX;->b:Lo/hY;

    invoke-direct {p0, v0}, Lo/hX;->a(Lo/ci;)Lo/ci;

    move-result-object v6

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lo/hY;->b(IIZLjava/lang/String;Lo/ci;)V

    return-void
.end method

.method public d(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .line 440
    new-instance v0, Lo/hX$TaskDescription;

    invoke-direct {v0, p0, p4, p5}, Lo/hX$TaskDescription;-><init>(Lo/hX;II)V

    .line 442
    iget-object p4, p0, Lo/hX;->b:Lo/hY;

    invoke-direct {p0, v0}, Lo/hX;->a(Lo/ci;)Lo/ci;

    move-result-object p5

    invoke-virtual {p4, p1, p2, p3, p5}, Lo/hY;->e(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lo/ci;)V

    return-void
.end method

.method public d(Ljava/lang/String;II)V
    .locals 1

    .line 421
    new-instance v0, Lo/hX$TaskDescription;

    invoke-direct {v0, p0, p2, p3}, Lo/hX$TaskDescription;-><init>(Lo/hX;II)V

    .line 423
    iget-object p2, p0, Lo/hX;->b:Lo/hY;

    invoke-direct {p0, v0}, Lo/hX;->a(Lo/ci;)Lo/ci;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lo/hY;->a(Ljava/lang/String;Lo/ci;)V

    return-void
.end method

.method public d(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;II)V
    .locals 1

    .line 492
    new-instance v0, Lo/hX$TaskDescription;

    invoke-direct {v0, p0, p3, p4}, Lo/hX$TaskDescription;-><init>(Lo/hX;II)V

    .line 494
    iget-object p3, p0, Lo/hX;->b:Lo/hY;

    invoke-direct {p0, v0}, Lo/hX;->a(Lo/ci;)Lo/ci;

    move-result-object p4

    invoke-virtual {p3, p1, p2, p4}, Lo/hY;->a(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V

    return-void
.end method

.method public d(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;IIII)V
    .locals 7

    .line 205
    new-instance v0, Lo/hX$TaskDescription;

    invoke-direct {v0, p0, p5, p6}, Lo/hX$TaskDescription;-><init>(Lo/hX;II)V

    .line 207
    iget-object v1, p0, Lo/hX;->b:Lo/hY;

    invoke-direct {p0, v0}, Lo/hX;->a(Lo/ci;)Lo/ci;

    move-result-object v6

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lo/hY;->e(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;IILo/ci;)V

    return-void
.end method

.method public d(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 1

    .line 1271
    iget-object v0, p0, Lo/hX;->b:Lo/hY;

    invoke-virtual {v0, p1, p2}, Lo/hY;->e(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .line 308
    new-instance v0, Lo/hX$TaskDescription;

    invoke-direct {v0, p0, p3, p4}, Lo/hX$TaskDescription;-><init>(Lo/hX;II)V

    .line 310
    iget-object p3, p0, Lo/hX;->b:Lo/hY;

    invoke-direct {p0, v0}, Lo/hX;->a(Lo/ci;)Lo/ci;

    move-result-object p4

    invoke-virtual {p3, p1, p2, p4}, Lo/hY;->c(Ljava/lang/String;Ljava/lang/String;Lo/ci;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 648
    iget-object v0, p0, Lo/hX;->b:Lo/hY;

    invoke-virtual {v0, p1, p2, p3}, Lo/hY;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(ZLjava/lang/String;)V
    .locals 1

    .line 643
    iget-object v0, p0, Lo/hX;->b:Lo/hY;

    invoke-virtual {v0, p1, p2}, Lo/hY;->a(ZLjava/lang/String;)V

    return-void
.end method

.method public e()Lo/TableLayout;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/TableLayout<",
            "*>;"
        }
    .end annotation

    .line 1286
    iget-object v0, p0, Lo/hX;->b:Lo/hY;

    invoke-virtual {v0}, Lo/hY;->c()Lo/TableLayout;

    move-result-object v0

    return-object v0
.end method

.method public e(IILjava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;II)V
    .locals 7

    .line 347
    new-instance v0, Lo/hX$TaskDescription;

    invoke-direct {v0, p0, p5, p6}, Lo/hX$TaskDescription;-><init>(Lo/hX;II)V

    .line 349
    iget-object v1, p0, Lo/hX;->b:Lo/hY;

    invoke-direct {p0, v0}, Lo/hX;->a(Lo/ci;)Lo/ci;

    move-result-object v6

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lo/hY;->e(IILjava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lo/ci;)V

    return-void
.end method

.method public e(Ljava/lang/String;II)V
    .locals 1

    .line 380
    new-instance v0, Lo/hX$TaskDescription;

    invoke-direct {v0, p0, p2, p3}, Lo/hX$TaskDescription;-><init>(Lo/hX;II)V

    .line 381
    iget-object p2, p0, Lo/hX;->b:Lo/hY;

    invoke-direct {p0, v0}, Lo/hX;->a(Lo/ci;)Lo/ci;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lo/hY;->b(Ljava/lang/String;Lo/ci;)V

    return-void
.end method

.method public e(Ljava/lang/String;IIZZII)V
    .locals 7

    .line 154
    new-instance v6, Lo/hX$TaskDescription;

    invoke-direct {v6, p0, p6, p7}, Lo/hX$TaskDescription;-><init>(Lo/hX;II)V

    .line 156
    iget-object v0, p0, Lo/hX;->b:Lo/hY;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lo/hY;->a(Ljava/lang/String;IIZZLo/ci;)V

    return-void
.end method

.method public e(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;II)V
    .locals 1

    .line 227
    new-instance v0, Lo/hX$TaskDescription;

    invoke-direct {v0, p0, p3, p4}, Lo/hX$TaskDescription;-><init>(Lo/hX;II)V

    .line 229
    iget-object p3, p0, Lo/hX;->b:Lo/hY;

    invoke-direct {p0, v0}, Lo/hX;->a(Lo/ci;)Lo/ci;

    move-result-object p4

    invoke-virtual {p3, p1, p2, p4}, Lo/hY;->c(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V

    return-void
.end method

.method public e(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;IIIIZ)V
    .locals 8

    .line 609
    new-instance v0, Lo/hX$TaskDescription;

    invoke-direct {v0, p0, p3, p4}, Lo/hX$TaskDescription;-><init>(Lo/hX;II)V

    .line 610
    iget-object v1, p0, Lo/hX;->b:Lo/hY;

    invoke-direct {p0, v0}, Lo/hX;->a(Lo/ci;)Lo/ci;

    move-result-object v7

    move-object v2, p1

    move-object v3, p2

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-virtual/range {v1 .. v7}, Lo/hY;->d(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;IIZLo/ci;)V

    return-void
.end method

.method public e(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IIII)V
    .locals 7

    .line 558
    new-instance v0, Lo/hX$TaskDescription;

    invoke-direct {v0, p0, p5, p6}, Lo/hX$TaskDescription;-><init>(Lo/hX;II)V

    .line 560
    iget-object v1, p0, Lo/hX;->b:Lo/hY;

    invoke-direct {p0, v0}, Lo/hX;->a(Lo/ci;)Lo/ci;

    move-result-object v6

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lo/hY;->d(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IILo/ci;)V

    return-void
.end method

.method public e(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ILjava/lang/String;Ljava/lang/String;II)V
    .locals 8

    .line 566
    new-instance v0, Lo/hX$TaskDescription;

    invoke-direct {v0, p0, p6, p7}, Lo/hX$TaskDescription;-><init>(Lo/hX;II)V

    .line 568
    iget-object v1, p0, Lo/hX;->b:Lo/hY;

    invoke-direct {p0, v0}, Lo/hX;->a(Lo/ci;)Lo/ci;

    move-result-object v7

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v7}, Lo/hY;->c(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ILjava/lang/String;Ljava/lang/String;Lo/ci;)V

    return-void
.end method

.method public e(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;II)V
    .locals 1

    .line 294
    new-instance v0, Lo/hX$TaskDescription;

    invoke-direct {v0, p0, p4, p5}, Lo/hX$TaskDescription;-><init>(Lo/hX;II)V

    .line 296
    iget-object p4, p0, Lo/hX;->b:Lo/hY;

    invoke-direct {p0, v0}, Lo/hX;->a(Lo/ci;)Lo/ci;

    move-result-object p5

    invoke-virtual {p4, p1, p2, p3, p5}, Lo/hY;->e(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;Lo/ci;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/browse/api/task/TaskMode;II)V
    .locals 7

    .line 472
    new-instance v0, Lo/hX$TaskDescription;

    invoke-direct {v0, p0, p5, p6}, Lo/hX$TaskDescription;-><init>(Lo/hX;II)V

    .line 474
    iget-object v1, p0, Lo/hX;->b:Lo/hY;

    invoke-direct {p0, v0}, Lo/hX;->a(Lo/ci;)Lo/ci;

    move-result-object v6

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lo/hY;->e(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V

    return-void
.end method

.method public e(Lo/AR;Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AR;",
            "Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 580
    iget-object v0, p0, Lo/hX;->b:Lo/hY;

    invoke-virtual {v0, p1, p2, p3}, Lo/hY;->d(Lo/AR;Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;Ljava/util/Map;)V

    return-void
.end method

.method public f(Ljava/lang/String;II)V
    .locals 1

    .line 727
    new-instance v0, Lo/hX$TaskDescription;

    invoke-direct {v0, p0, p2, p3}, Lo/hX$TaskDescription;-><init>(Lo/hX;II)V

    .line 728
    iget-object p2, p0, Lo/hX;->b:Lo/hY;

    invoke-virtual {p2, p1, v0}, Lo/hY;->f(Ljava/lang/String;Lo/ci;)V

    return-void
.end method
