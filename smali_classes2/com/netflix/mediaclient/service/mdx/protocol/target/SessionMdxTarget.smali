.class public Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;
.super Lo/mo;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;,
        Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;,
        Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$MsgTransportType;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private A:Z

.field private D:Z

.field private final b:Ljava/util/concurrent/atomic/AtomicLong;

.field private d:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$MsgTransportType;

.field private k:Lo/mt;

.field private l:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;

.field private m:Lo/mq;

.field private n:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:I

.field private s:Ljava/lang/String;

.field private t:[B

.field private u:J

.field private v:Lorg/json/JSONObject;

.field private w:Lo/kx;

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/ly;",
            ">;"
        }
    .end annotation
.end field

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2378

    .line 70
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/lc;Z)V
    .locals 10

    move-object v8, p0

    move v9, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    .line 159
    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/lc;)V

    move-object v0, p4

    .line 161
    iput-object v0, v8, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->o:Ljava/lang/String;

    if-eqz p6, :cond_0

    .line 162
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$MsgTransportType;->b:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$MsgTransportType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$MsgTransportType;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$MsgTransportType;

    :goto_0
    iput-object v0, v8, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$MsgTransportType;

    .line 163
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;

    iput-object v0, v8, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->n:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;

    move/from16 v0, p11

    .line 164
    iput-boolean v0, v8, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->z:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne v9, v1, :cond_1

    .line 167
    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;

    iput-object v2, v8, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->l:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;

    goto :goto_3

    :cond_1
    const/4 v2, 0x2

    const/4 v3, 0x3

    if-eq v9, v2, :cond_3

    if-ne v9, v3, :cond_2

    goto :goto_1

    .line 174
    :cond_2
    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;->b:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;

    iput-object v2, v8, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->l:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;

    goto :goto_3

    .line 170
    :cond_3
    :goto_1
    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;

    iput-object v2, v8, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->l:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;

    if-ne v9, v3, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    .line 171
    :goto_2
    iput-boolean v2, v8, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->y:Z

    :goto_3
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string v0, "SessionMdxTarget"

    const-string v2, "SessionMdxTarget %s"

    .line 177
    invoke-static {v0, v2, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLo/lc;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1, p2, p3, p7}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/lc;)V

    .line 121
    iput-object p4, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->o:Ljava/lang/String;

    if-eqz p6, :cond_0

    .line 122
    sget-object p2, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$MsgTransportType;->b:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$MsgTransportType;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$MsgTransportType;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$MsgTransportType;

    :goto_0
    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$MsgTransportType;

    .line 123
    sget-object p2, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->n:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-ne p5, p3, :cond_1

    .line 126
    sget-object p4, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;

    iput-object p4, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->l:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;

    goto :goto_3

    :cond_1
    const/4 p4, 0x2

    const/4 p6, 0x3

    if-eq p5, p4, :cond_3

    if-ne p5, p6, :cond_2

    goto :goto_1

    .line 133
    :cond_2
    sget-object p4, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;->b:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;

    iput-object p4, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->l:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;

    goto :goto_3

    .line 129
    :cond_3
    :goto_1
    sget-object p4, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;

    iput-object p4, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->l:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;

    if-ne p5, p6, :cond_4

    const/4 p4, 0x1

    goto :goto_2

    :cond_4
    const/4 p4, 0x0

    .line 130
    :goto_2
    iput-boolean p4, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->y:Z

    :goto_3
    new-array p3, p3, [Ljava/lang/Object;

    aput-object p1, p3, p2

    const-string p1, "SessionMdxTarget"

    const-string p2, "SessionMdxTarget %s"

    .line 136
    invoke-static {p1, p2, p3}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/lc;)V
    .locals 0

    .line 142
    invoke-direct/range {p0 .. p7}, Lo/mo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/lc;)V

    .line 55
    new-instance p2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->b:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 p2, 0x0

    .line 82
    iput p2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->r:I

    .line 83
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->x:Ljava/util/List;

    const-wide/16 p3, 0x0

    .line 85
    iput-wide p3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->u:J

    .line 89
    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->D:Z

    .line 144
    iput-object p0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    .line 145
    new-instance p3, Lo/mq;

    iget-object p4, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->f:Lo/lc;

    invoke-virtual {p4}, Lo/lc;->i()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p3, p0, p4}, Lo/mq;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->m:Lo/mq;

    .line 146
    new-instance p3, Lo/mt;

    iget-object p4, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->j:Lo/kH;

    iget-object p5, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->h:Lo/kO;

    invoke-direct {p3, p4, p1, p5}, Lo/mt;-><init>(Lo/kH;Ljava/lang/String;Lo/kO;)V

    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->k:Lo/mt;

    .line 147
    sget-object p3, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$MsgTransportType;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$MsgTransportType;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$MsgTransportType;

    .line 148
    sget-object p3, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->n:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;

    .line 149
    sget-object p3, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->l:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;

    .line 150
    sget-object p3, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->o:Ljava/lang/String;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p1, p3, p2

    const-string p1, "SessionMdxTarget"

    const-string p2, "SessionMdxTarget %s"

    .line 152
    invoke-static {p1, p2, p3}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/lc;)V
    .locals 1

    .line 103
    invoke-direct {p0, p1, p2, p3, p4}, Lo/mo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/lc;)V

    .line 55
    new-instance p2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->b:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 p2, 0x0

    .line 82
    iput p2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->r:I

    .line 83
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->x:Ljava/util/List;

    const-wide/16 p3, 0x0

    .line 85
    iput-wide p3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->u:J

    .line 89
    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->D:Z

    .line 105
    iput-object p0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    .line 106
    new-instance p3, Lo/mq;

    iget-object p4, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->f:Lo/lc;

    invoke-virtual {p4}, Lo/lc;->i()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p3, p0, p4}, Lo/mq;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->m:Lo/mq;

    .line 107
    new-instance p3, Lo/mt;

    iget-object p4, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->j:Lo/kH;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->h:Lo/kO;

    invoke-direct {p3, p4, p1, v0}, Lo/mt;-><init>(Lo/kH;Ljava/lang/String;Lo/kO;)V

    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->k:Lo/mt;

    .line 108
    sget-object p3, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$MsgTransportType;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$MsgTransportType;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$MsgTransportType;

    .line 109
    sget-object p3, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->n:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;

    .line 110
    sget-object p3, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->l:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;

    .line 111
    sget-object p3, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->o:Ljava/lang/String;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p1, p3, p2

    const-string p1, "SessionMdxTarget"

    const-string p2, "SessionMdxTarget %s"

    .line 113
    invoke-static {p1, p2, p3}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method private P()J
    .locals 2

    .line 632
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private Q()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$MsgTransportType;
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$MsgTransportType;

    return-object v0
.end method

.method private S()Ljava/lang/String;
    .locals 2

    .line 637
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->Q()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$MsgTransportType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$MsgTransportType;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$MsgTransportType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$MsgTransportType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "cast://"

    goto :goto_0

    .line 640
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->Q()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$MsgTransportType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$MsgTransportType;->b:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$MsgTransportType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$MsgTransportType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ws://"

    goto :goto_0

    :cond_1
    const-string v0, "http://"

    :goto_0
    return-object v0
.end method

.method private T()Ljava/lang/String;
    .locals 2

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 653
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->S()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    invoke-static {}, Lo/mo;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    .line 655
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lo/kw;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 656
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private V()V
    .locals 2

    const-string v0, "SessionMdxTarget"

    const-string v1, "resetState"

    .line 717
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->X()V

    const/4 v0, 0x0

    .line 719
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->q:Z

    const/4 v0, 0x0

    .line 720
    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->v:Lorg/json/JSONObject;

    .line 721
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->m:Lo/mq;

    invoke-virtual {v0}, Lo/mq;->a()V

    .line 723
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->D:Z

    if-nez v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 725
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->k:Lo/mt;

    invoke-virtual {v0}, Lo/mt;->e()V

    :cond_0
    return-void
.end method

.method private W()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;
    .locals 1

    .line 666
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->l:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;

    return-object v0
.end method

.method private X()V
    .locals 1

    const/4 v0, 0x0

    .line 713
    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->t:[B

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->S()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;)Ljava/util/List;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->x:Ljava/util/List;

    return-object p0
.end method

.method private b(Lo/ahS;Lo/ahX;)Ljava/lang/String;
    .locals 2

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "1,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->d(Lo/ahr;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->d(Lo/ahr;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic b(Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;)Lorg/json/JSONObject;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->v:Lorg/json/JSONObject;

    return-object p0
.end method

.method private b(J)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 596
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "SessionMdxTarget"

    const-string v2, "set cross-profile time %d ms."

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 597
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->m:Lo/mq;

    invoke-virtual {v0, p1, p2}, Lo/mq;->b(J)V

    .line 598
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->u:J

    return-void
.end method

.method static synthetic c(Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->D:Z

    return p0
.end method

.method private d(Lo/ahr;)Ljava/lang/String;
    .locals 2

    .line 674
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->i:Lo/zE;

    invoke-interface {v0}, Lo/zE;->e()Lo/aho;

    move-result-object v0

    sget-object v1, Lo/ahn;->a:Lo/ahn;

    invoke-interface {p1, v0, v1}, Lo/ahr;->a(Lo/aho;Lo/ahn;)[B

    move-result-object p1

    .line 676
    invoke-static {p1}, Lo/aik;->a([B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic d(Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;)Lo/mq;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->m:Lo/mq;

    return-object p0
.end method

.method private d(Lo/ly;)Z
    .locals 5

    .line 697
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->r:I

    invoke-virtual {p1, v0}, Lo/ly;->d(I)Ljava/lang/String;

    move-result-object p1

    .line 698
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "SessionMdxTarget"

    const-string v4, "sendMessageMdxTarget %s"

    .line 699
    invoke-static {p1, v4, v2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 701
    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 702
    iget-object p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->f:Lo/lc;

    sget-object v2, Lo/mr;->d:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v2, v3}, Lo/lc;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v0, "sendMessageMdxTarget failed"

    .line 705
    invoke-static {p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method static synthetic e(Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->V()V

    return-void
.end method

.method static synthetic e(Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->q:Z

    return p1
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 684
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->D()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "SessionMdxTarget"

    const-string v1, "device has no pair, cannot send session message %s"

    .line 685
    invoke-static {p1, v1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 p1, 0x0

    return-object p1

    .line 689
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->T()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->p:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->h()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->s:Ljava/lang/String;

    .line 690
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->P()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->t:[B

    move-object v5, p1

    .line 689
    invoke-static/range {v0 .. v6}, Lo/mu;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic g(Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;)Lo/mt;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->k:Lo/mt;

    return-object p0
.end method


# virtual methods
.method public A()Lo/aeM$Application;
    .locals 1

    .line 622
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->k:Lo/mt;

    invoke-virtual {v0}, Lo/mt;->d()Lo/aeM$Application;

    move-result-object v0

    return-object v0
.end method

.method public B()Z
    .locals 2

    .line 730
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->d()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->W()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;->b:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public C()Z
    .locals 1

    .line 729
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->q:Z

    return v0
.end method

.method public D()Z
    .locals 1

    .line 731
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->t:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public E()V
    .locals 4

    .line 816
    invoke-static {}, Lo/mu;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v2, "SessionMdxTarget"

    const-string v3, "startSession [%s]"

    .line 817
    invoke-static {v2, v3, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 818
    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 819
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->f:Lo/lc;

    sget-object v2, Lo/mr;->d:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lo/lc;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public F()V
    .locals 2

    const-string v0, "SessionMdxTarget"

    const-string v1, "doHandShake"

    .line 824
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    new-instance v0, Lo/lE;

    invoke-direct {v0}, Lo/lE;-><init>()V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->d(Lo/ly;)Z

    return-void
.end method

.method public G()V
    .locals 10

    .line 744
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->X()V

    .line 745
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->i:Lo/zE;

    invoke-interface {v0}, Lo/zE;->c()Lo/zE$TaskDescription;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "SessionMdxTarget"

    const-string v1, "doPair has invalid MSL credentials"

    .line 749
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 754
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->W()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;

    move-result-object v1

    sget-object v3, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;

    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 755
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->T()Ljava/lang/String;

    move-result-object v4

    .line 756
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->P()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    iget-object v1, v0, Lo/zE$TaskDescription;->c:Lo/ahS;

    iget-object v6, v0, Lo/zE$TaskDescription;->e:Lo/ahX;

    .line 757
    invoke-direct {p0, v1, v6}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->b(Lo/ahS;Lo/ahX;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lo/zE$TaskDescription;->b:Lo/agM;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->i:Lo/zE;

    .line 758
    invoke-interface {v0}, Lo/zE;->e()Lo/aho;

    move-result-object v8

    sget-object v9, Lo/ahn;->a:Lo/ahn;

    .line 753
    invoke-static/range {v2 .. v9}, Lo/ms;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/agM;Lo/aho;Lo/ahn;)Ljava/lang/String;

    move-result-object v0

    .line 762
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->u()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->C()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->w:Lo/kx;

    if-eqz v1, :cond_1

    .line 763
    invoke-virtual {v1}, Lo/kx;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->D:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 766
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "loginsupported=true\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 769
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->f:Lo/lc;

    sget-object v2, Lo/mr;->b:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lo/lc;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public H()V
    .locals 10

    .line 773
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->X()V

    .line 774
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->i:Lo/zE;

    invoke-interface {v0}, Lo/zE;->c()Lo/zE$TaskDescription;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "SessionMdxTarget"

    const-string v1, "doRegPair has invalid MSL credentials"

    .line 779
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 784
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->W()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;

    move-result-object v1

    sget-object v3, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;

    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 785
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->T()Ljava/lang/String;

    move-result-object v4

    .line 786
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->P()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    iget-object v1, v0, Lo/zE$TaskDescription;->c:Lo/ahS;

    iget-object v6, v0, Lo/zE$TaskDescription;->e:Lo/ahX;

    .line 787
    invoke-direct {p0, v1, v6}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->b(Lo/ahS;Lo/ahX;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lo/zE$TaskDescription;->b:Lo/agM;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->i:Lo/zE;

    .line 788
    invoke-interface {v0}, Lo/zE;->e()Lo/aho;

    move-result-object v8

    sget-object v9, Lo/ahn;->a:Lo/ahn;

    .line 783
    invoke-static/range {v2 .. v9}, Lo/ms;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/agM;Lo/aho;Lo/ahn;)Ljava/lang/String;

    move-result-object v0

    .line 797
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->u()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->w:Lo/kx;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lo/kx;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->D:Z

    .line 799
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->D:Z

    if-eqz v1, :cond_2

    .line 800
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "loginpolicy="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->w:Lo/kx;

    invoke-virtual {v0}, Lo/kx;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 803
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->f:Lo/lc;

    sget-object v2, Lo/mr;->c:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lo/lc;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->y:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x7d00

    .line 807
    invoke-static {}, Lo/dQ;->i()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->u()Z

    move-result v1

    if-nez v1, :cond_3

    const v0, 0xfa00

    :cond_3
    int-to-long v0, v0

    .line 811
    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->b(J)V

    :cond_4
    return-void
.end method

.method public I()V
    .locals 4

    .line 735
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->P()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 736
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->T()Ljava/lang/String;

    move-result-object v1

    .line 737
    invoke-static {v0, v1}, Lo/mr;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 738
    sget-object v1, Lo/mr;->e:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 740
    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->f:Lo/lc;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lo/lc;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public J()V
    .locals 2

    const-string v0, "SessionMdxTarget"

    const-string v1, "getCapability"

    .line 829
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    new-instance v0, Lo/lC;

    invoke-direct {v0}, Lo/lC;-><init>()V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->d(Lo/ly;)Z

    return-void
.end method

.method public K()Z
    .locals 5

    .line 841
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "SessionMdxTarget"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "sendPendingMessage, no message is currently pending"

    .line 842
    invoke-static {v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 846
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->x:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ly;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 848
    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->x:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Lo/ly;->e()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "has %d, sending %s"

    invoke-static {v1, v2, v3}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 849
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->d(Lo/ly;)Z

    move-result v0

    return v0
.end method

.method public L()V
    .locals 2

    const-string v0, "SessionMdxTarget"

    const-string v1, "getState"

    .line 834
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    new-instance v0, Lo/lI;

    invoke-direct {v0}, Lo/lI;-><init>()V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->d(Lo/ly;)Z

    return-void
.end method

.method public M()V
    .locals 1

    .line 838
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public N()Z
    .locals 1

    .line 839
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public O()V
    .locals 13

    .line 883
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->w:Lo/kx;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;->c:Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;

    invoke-virtual {v0, v1}, Lo/kx;->a(Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 887
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 888
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->h:Lo/kO;

    invoke-virtual {v0}, Lo/kO;->d()Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;

    move-result-object v1

    .line 889
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;->a:Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;->b:Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;

    :goto_0
    move-object v2, v0

    .line 890
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->f()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->p:Ljava/lang/String;

    iget-object v6, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->s:Ljava/lang/String;

    invoke-static {v0, v6}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v6, v0, 0x1

    .line 891
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->e()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->g()Ljava/lang/String;

    move-result-object v9

    .line 888
    invoke-virtual/range {v1 .. v9}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->e(Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 897
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->h:Lo/kO;

    invoke-virtual {v0}, Lo/kO;->d()Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;

    move-result-object v1

    .line 898
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->u()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;->a:Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;->b:Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;

    :goto_1
    move-object v2, v0

    .line 899
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->f()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->p:Ljava/lang/String;

    iget-object v6, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->s:Ljava/lang/String;

    invoke-static {v0, v6}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v6, v0, 0x1

    .line 900
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->e()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->g()Ljava/lang/String;

    move-result-object v9

    iget-boolean v10, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->D:Z

    iget-boolean v11, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->z:Z

    iget-boolean v12, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->A:Z

    .line 897
    invoke-virtual/range {v1 .. v12}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->a(Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method public R()V
    .locals 5

    .line 853
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "SessionMdxTarget"

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 854
    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->x:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->x:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/ly;

    invoke-virtual {v4}, Lo/ly;->e()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    const-string v2, "has %d, removing %s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 855
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->x:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, "pendingMessageSent, but no message is currently pending"

    .line 858
    invoke-static {v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;)Lo/ku;
    .locals 1

    const/4 v0, 0x0

    .line 863
    invoke-virtual {p0, p1, p2, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->d(Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;Ljava/lang/String;)Lo/ku;

    move-result-object p1

    return-object p1
.end method

.method public a(Lo/ly;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 323
    invoke-virtual {p1}, Lo/ly;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "SessionMdxTarget"

    const-string v2, "sendCommand %s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 324
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->m:Lo/mq;

    invoke-virtual {v0}, Lo/mq;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$5;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$5;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;Lo/ly;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "messageType"

    .line 566
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "targetrestarting"

    .line 568
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->y:Z

    if-eqz v0, :cond_0

    const-string v0, "payload"

    .line 569
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    const-string v2, "duration"

    .line 572
    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x7d00

    .line 573
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 574
    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->b(J)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 318
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->A:Z

    return-void
.end method

.method public a(ZLo/kx;)V
    .locals 1

    .line 228
    invoke-static {}, Lo/dQ;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->n()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    .line 233
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->u()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->D:Z

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    .line 234
    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->w:Lo/kx;

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 240
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->n()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->b(Ljava/lang/String;)V

    .line 246
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->m:Lo/mq;

    invoke-virtual {p2}, Lo/mq;->b()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$2;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$2;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;Z)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a()Z
    .locals 1

    .line 213
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(Lo/ku;)V
    .locals 1

    const/4 v0, 0x0

    .line 904
    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->d(Lo/ku;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 2

    .line 558
    invoke-static {p1}, Lo/mr;->b(Lorg/json/JSONObject;)Lo/mr$StateListAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 561
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->m:Lo/mq;

    invoke-virtual {p1}, Lo/mr$StateListAnimator;->b()Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lo/mq;->d(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 273
    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->a(ZLo/kx;)V

    return-void
.end method

.method public b()Z
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->m:Lo/mq;

    invoke-virtual {v0}, Lo/mq;->e()Z

    move-result v0

    .line 204
    invoke-static {}, Lo/dQ;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->u()Z

    move-result v1

    if-nez v1, :cond_2

    .line 205
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->D:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :cond_2
    :goto_1
    return v0
.end method

.method public c(Lo/ku;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 878
    invoke-virtual {p1}, Lo/ku;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "SessionMdxTarget"

    const-string v2, "reportError %s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 879
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->j:Lo/kH;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/ku;->a()Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->a()I

    move-result v2

    invoke-virtual {p1}, Lo/ku;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lo/ku;->e()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, v3, p1}, Lo/kH;->c(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 8

    const-string v0, "errorcode"

    .line 351
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v4, "errorstring"

    .line 352
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x1

    aput-object p1, v2, v4

    const-string p1, "SessionMdxTarget"

    const-string v5, "handleIncomingErrorMessage %s %s"

    invoke-static {p1, v5, v2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 354
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/16 v2, 0x35

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    if-eq p1, v2, :cond_1

    const/16 v2, 0x36

    if-eq p1, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "13"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x5

    goto :goto_1

    :pswitch_1
    const-string p1, "12"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x4

    goto :goto_1

    :pswitch_2
    const-string p1, "11"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    goto :goto_1

    :pswitch_3
    const-string p1, "10"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    goto :goto_1

    :cond_0
    const-string p1, "6"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const-string p1, "5"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_5

    if-eq p1, v4, :cond_5

    if-eq p1, v1, :cond_4

    if-eq p1, v7, :cond_3

    if-eq p1, v6, :cond_3

    if-eq p1, v5, :cond_3

    goto :goto_2

    .line 367
    :cond_3
    iget-object p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->m:Lo/mq;

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    invoke-virtual {p1, v0}, Lo/mq;->c(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;)V

    goto :goto_2

    .line 361
    :cond_4
    iget-object p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->m:Lo/mq;

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->n:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    invoke-virtual {p1, v0}, Lo/mq;->c(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;)V

    .line 362
    iget-object p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->h:Lo/kO;

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    invoke-virtual {p1, v0}, Lo/kO;->c(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;)V

    goto :goto_2

    .line 357
    :cond_5
    iget-object p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->m:Lo/mq;

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->m:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    invoke-virtual {p1, v0}, Lo/mq;->c(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;)V

    .line 358
    iget-object p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->h:Lo/kO;

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->a:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    invoke-virtual {p1, v0}, Lo/kO;->c(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x61f
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d(Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;Ljava/lang/String;)Lo/ku;
    .locals 7

    .line 871
    invoke-static {}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;->e:Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;->b:Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;

    :goto_0
    move-object v3, v0

    .line 872
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSuffix;->d:Lcom/netflix/mediaclient/service/mdx/MdxErrorSuffix;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSuffix;->a:Lcom/netflix/mediaclient/service/mdx/MdxErrorSuffix;

    :goto_1
    move-object v6, v0

    .line 874
    new-instance v0, Lo/ku;

    move-object v1, v0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lo/ku;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxErrorSuffix;)V

    return-object v0
.end method

.method public d(I)V
    .locals 0

    .line 552
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->d(Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .line 554
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->m:Lo/mq;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->g:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    invoke-virtual {v0, v1, p1}, Lo/mq;->d(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;Ljava/lang/Object;)V

    return-void
.end method

.method d(Lo/ku;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    .line 906
    invoke-virtual/range {p0 .. p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->w:Lo/kx;

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;->c:Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;

    invoke-virtual {v1, v2}, Lo/kx;->a(Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 910
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->b()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 911
    iget-object v1, v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->h:Lo/kO;

    invoke-virtual {v1}, Lo/kO;->d()Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;

    move-result-object v3

    .line 912
    invoke-virtual/range {p0 .. p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->u()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;->a:Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;->b:Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;

    :goto_0
    move-object v4, v1

    invoke-virtual/range {p0 .. p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->n()Ljava/lang/String;

    move-result-object v5

    .line 913
    invoke-virtual/range {p0 .. p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->f()Ljava/lang/String;

    move-result-object v7

    iget-object v1, v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->p:Ljava/lang/String;

    iget-object v8, v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->s:Ljava/lang/String;

    invoke-static {v1, v8}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v8, v1, 0x1

    .line 914
    invoke-virtual/range {p0 .. p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->e()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->g()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    .line 911
    invoke-virtual/range {v3 .. v13}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->b(Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/ku;Ljava/lang/String;)V

    return-void

    .line 920
    :cond_2
    iget-object v1, v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->h:Lo/kO;

    invoke-virtual {v1}, Lo/kO;->d()Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;

    move-result-object v3

    .line 921
    invoke-virtual/range {p0 .. p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->u()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;->a:Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;->b:Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;

    :goto_1
    move-object v4, v1

    invoke-virtual/range {p0 .. p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->n()Ljava/lang/String;

    move-result-object v5

    .line 922
    invoke-virtual/range {p0 .. p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->f()Ljava/lang/String;

    move-result-object v7

    iget-object v1, v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->p:Ljava/lang/String;

    iget-object v8, v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->s:Ljava/lang/String;

    invoke-static {v1, v8}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v8, v1, 0x1

    .line 923
    invoke-virtual/range {p0 .. p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->e()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->g()Ljava/lang/String;

    move-result-object v11

    iget-boolean v1, v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->D:Z

    if-nez v1, :cond_5

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->o:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    .line 924
    invoke-virtual/range {p1 .. p1}, Lo/ku;->a()Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->e(Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    const/4 v14, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v14, 0x1

    :goto_3
    iget-boolean v15, v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->z:Z

    iget-boolean v1, v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->A:Z

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move/from16 v16, v1

    .line 920
    invoke-virtual/range {v3 .. v16}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->a(Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/ku;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method public d(Lorg/json/JSONObject;)V
    .locals 8

    .line 382
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->D()Z

    move-result v0

    const-string v1, "SessionMdxTarget"

    if-nez v0, :cond_0

    const-string p1, "device has no pair, cannot handleIncomingSessionMessage"

    .line 383
    invoke-static {v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 390
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->t:[B

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->j:Lo/kH;

    .line 391
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v2, v3}, Lo/mu;->a(Lorg/json/JSONObject;[BLo/kH;Ljava/lang/String;)Lo/mu$Activity;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "handleIncomingSessionMessage fail to parse"

    .line 394
    invoke-static {v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 398
    :cond_1
    invoke-virtual {p1}, Lo/mu$Activity;->b()Lo/mk;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    new-array v0, v2, [Ljava/lang/Object;

    .line 399
    invoke-virtual {p1}, Lo/mu$Activity;->b()Lo/mk;

    move-result-object v4

    invoke-virtual {v4}, Lo/mk;->h()Lorg/json/JSONObject;

    move-result-object v4

    aput-object v4, v0, v3

    const-string v4, "has appMsg: %s"

    invoke-static {v1, v4, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 402
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$4;->c:[I

    invoke-virtual {p1}, Lo/mu$Activity;->c()Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 500
    :pswitch_0
    iget-object p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->j:Lo/kH;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->h()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/kH;->h(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 496
    :pswitch_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->m:Lo/mq;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->n:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    invoke-virtual {v0, v1}, Lo/mq;->c(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;)V

    .line 497
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->h:Lo/kO;

    invoke-virtual {p1}, Lo/mu$Activity;->c()Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/kO;->c(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;)V

    goto/16 :goto_0

    .line 492
    :pswitch_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->m:Lo/mq;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->m:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    invoke-virtual {v0, v1}, Lo/mq;->c(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;)V

    .line 493
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->h:Lo/kO;

    invoke-virtual {p1}, Lo/mu$Activity;->c()Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/kO;->c(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;)V

    goto/16 :goto_0

    .line 481
    :pswitch_3
    invoke-virtual {p1}, Lo/mu$Activity;->b()Lo/mk;

    move-result-object p1

    invoke-virtual {p1}, Lo/mk;->h()Lorg/json/JSONObject;

    move-result-object p1

    .line 483
    :try_start_0
    new-instance v0, Lo/mc;

    invoke-direct {v0, p1}, Lo/mc;-><init>(Lorg/json/JSONObject;)V

    .line 484
    iget-object p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->j:Lo/kH;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lo/mc;->c()Z

    move-result v0

    invoke-interface {p1, v2, v0}, Lo/kH;->e(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    const-string p1, "failed to parse MESSAGE_TYPE_PIN_VERIFICATION_NOT_REQUIRED"

    .line 487
    invoke-static {v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 466
    :pswitch_4
    invoke-virtual {p1}, Lo/mu$Activity;->b()Lo/mk;

    move-result-object p1

    invoke-virtual {p1}, Lo/mk;->h()Lorg/json/JSONObject;

    move-result-object p1

    .line 468
    :try_start_1
    new-instance v0, Lo/me;

    invoke-direct {v0, p1}, Lo/me;-><init>(Lorg/json/JSONObject;)V

    .line 469
    invoke-virtual {v0}, Lo/me;->d()Ljava/lang/String;

    move-result-object v4

    .line 470
    invoke-virtual {v0}, Lo/me;->c()I

    move-result v5

    .line 471
    invoke-virtual {v0}, Lo/me;->b()I

    move-result v6

    .line 472
    invoke-virtual {v0}, Lo/me;->a()Ljava/lang/String;

    move-result-object v7

    .line 473
    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->j:Lo/kH;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->h()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {v2 .. v7}, Lo/kH;->c(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    const-string p1, "failed to parse MESSAGE_TYPE_PIN_VERIFICATION_SHOW"

    .line 476
    invoke-static {v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 463
    :pswitch_5
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->j:Lo/kH;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/mu$Activity;->b()Lo/mk;

    move-result-object p1

    invoke-virtual {p1}, Lo/mk;->h()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lo/kH;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 460
    :pswitch_6
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->j:Lo/kH;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/mu$Activity;->b()Lo/mk;

    move-result-object p1

    invoke-virtual {p1}, Lo/mk;->h()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lo/kH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 457
    :pswitch_7
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->j:Lo/kH;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/mu$Activity;->b()Lo/mk;

    move-result-object p1

    invoke-virtual {p1}, Lo/mk;->h()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lo/kH;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 450
    :pswitch_8
    invoke-virtual {p1}, Lo/mu$Activity;->b()Lo/mk;

    move-result-object p1

    invoke-virtual {p1}, Lo/mk;->h()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "audio_tracks"

    .line 451
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "timed_text_track"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 452
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->k:Lo/mt;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/mt;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 444
    :pswitch_9
    invoke-virtual {p1}, Lo/mu$Activity;->b()Lo/mk;

    move-result-object p1

    check-cast p1, Lo/mi;

    .line 445
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->k:Lo/mt;

    invoke-virtual {p1}, Lo/mi;->a()Lo/mb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/mt;->d(Lo/mb;)V

    .line 446
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->h:Lo/kO;

    invoke-virtual {v0}, Lo/kO;->c()Lo/kZ;

    move-result-object v0

    invoke-virtual {p1}, Lo/mi;->a()Lo/mb;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/kZ;->b(Lo/mb;)V

    goto/16 :goto_0

    .line 439
    :pswitch_a
    invoke-virtual {p1}, Lo/mu$Activity;->b()Lo/mk;

    move-result-object v0

    check-cast v0, Lo/md;

    .line 440
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->k:Lo/mt;

    invoke-virtual {v0}, Lo/md;->d()Lo/mb;

    move-result-object v0

    invoke-virtual {v1, v0}, Lo/mt;->b(Lo/mb;)V

    .line 441
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->m:Lo/mq;

    invoke-virtual {p1}, Lo/mu$Activity;->c()Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/mq;->e(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;)V

    goto/16 :goto_0

    .line 434
    :pswitch_b
    invoke-virtual {p1}, Lo/mu$Activity;->b()Lo/mk;

    move-result-object v0

    invoke-virtual {v0}, Lo/mk;->h()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->v:Lorg/json/JSONObject;

    .line 435
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->m:Lo/mq;

    invoke-virtual {p1}, Lo/mu$Activity;->c()Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/mq;->e(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;)V

    .line 436
    iget-object p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->j:Lo/kH;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->v:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lo/kH;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 430
    :pswitch_c
    iput v3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->r:I

    new-array p1, v2, [Ljava/lang/Object;

    .line 431
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->r:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v3

    const-string v0, "handleIncomingSessionMessage session %d ended"

    invoke-static {v1, v0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 418
    :pswitch_d
    invoke-virtual {p1}, Lo/mu$Activity;->b()Lo/mk;

    move-result-object p1

    check-cast p1, Lo/lY;

    .line 419
    invoke-virtual {p1}, Lo/lY;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 420
    iget-object p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->m:Lo/mq;

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->j:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    invoke-virtual {p1, v0}, Lo/mq;->c(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;)V

    const-string p1, "handleIncomingSessionMessage handshake accepted"

    .line 421
    invoke-static {v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 424
    :cond_3
    iget-object p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->m:Lo/mq;

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->f:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    invoke-virtual {p1, v0}, Lo/mq;->c(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;)V

    const-string p1, "handleIncomingSessionMessage handshake failed"

    .line 425
    invoke-static {v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 404
    :pswitch_e
    invoke-virtual {p1}, Lo/mu$Activity;->b()Lo/mk;

    move-result-object p1

    check-cast p1, Lo/mj;

    .line 405
    invoke-virtual {p1}, Lo/mj;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 406
    invoke-virtual {p1}, Lo/mj;->b()I

    move-result p1

    iput p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->r:I

    .line 407
    iget-object p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->m:Lo/mq;

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    invoke-virtual {p1, v0}, Lo/mq;->c(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;)V

    new-array p1, v2, [Ljava/lang/Object;

    .line 408
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->r:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v3

    const-string v0, "handleIncomingSessionMessage start session %d"

    invoke-static {v1, v0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 411
    :cond_4
    iput v3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->r:I

    .line 412
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->m:Lo/mq;

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->a:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    invoke-virtual {v0, v2, p1}, Lo/mq;->d(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;Ljava/lang/Object;)V

    const-string p1, "handleIncomingSessionMessage start session failed"

    .line 413
    invoke-static {v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d(Z)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 305
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "SessionMdxTarget"

    const-string v2, "Is remote login approved? %s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 306
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->m:Lo/mq;

    invoke-virtual {v0}, Lo/mq;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$3;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$3;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public e(Lorg/json/JSONObject;)V
    .locals 3

    .line 506
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->i:Lo/zE;

    invoke-interface {v0}, Lo/zE;->c()Lo/zE$TaskDescription;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 507
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->m:Lo/mq;

    invoke-virtual {v1}, Lo/mq;->e()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 514
    :cond_0
    iget-object v0, v0, Lo/zE$TaskDescription;->b:Lo/agM;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->i:Lo/zE;

    .line 515
    invoke-interface {v1}, Lo/zE;->e()Lo/aho;

    move-result-object v1

    sget-object v2, Lo/ahn;->a:Lo/ahn;

    .line 514
    invoke-static {p1, v0, v1, v2}, Lo/ms;->a(Lorg/json/JSONObject;Lo/agM;Lo/aho;Lo/ahn;)Lo/ms$ActionBar;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 519
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->D()Z

    move-result v0

    if-nez v0, :cond_3

    .line 520
    invoke-virtual {p1}, Lo/ms$ActionBar;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 521
    invoke-virtual {p1}, Lo/ms$ActionBar;->c()Lo/kx;

    move-result-object v0

    .line 527
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->w:Lo/kx;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lo/kx;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 528
    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->w:Lo/kx;

    .line 529
    invoke-virtual {v0}, Lo/kx;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->D:Z

    .line 532
    :cond_1
    invoke-virtual {p1}, Lo/ms$ActionBar;->f()[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->t:[B

    .line 533
    invoke-virtual {p1}, Lo/ms$ActionBar;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->p:Ljava/lang/String;

    .line 534
    invoke-virtual {p1}, Lo/ms$ActionBar;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->s:Ljava/lang/String;

    goto :goto_0

    .line 537
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->h:Lo/kO;

    invoke-virtual {p1}, Lo/ms$ActionBar;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/kO;->c(Ljava/lang/String;)V

    .line 540
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->m:Lo/mq;

    invoke-virtual {p1}, Lo/ms$ActionBar;->b()Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lo/mq;->d(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;Ljava/lang/Object;)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 510
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->m:Lo/mq;

    invoke-virtual {v1}, Lo/mq;->e()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "not expecting."

    goto :goto_2

    :cond_5
    const-string v1, ""

    :goto_2
    aput-object v1, p1, v0

    const-string v0, "SessionMdxTarget"

    const-string v1, "won\'t process pairing result %s"

    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public i()Lo/kx;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->w:Lo/kx;

    return-object v0
.end method

.method public j()Ljava/lang/Long;
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public p()V
    .locals 1

    const/4 v0, 0x0

    .line 184
    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->w:Lo/kx;

    .line 186
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->D:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 187
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->D:Z

    .line 189
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->f:Lo/lc;

    check-cast v0, Lo/lf;

    .line 190
    invoke-virtual {v0}, Lo/lf;->c()V

    .line 196
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->j:Lo/kH;

    invoke-interface {v0}, Lo/kH;->e()V

    :cond_0
    return-void
.end method

.method public q()Z
    .locals 1

    .line 182
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->D:Z

    return v0
.end method

.method public s()Z
    .locals 1

    .line 217
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->k:Lo/mt;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/mt;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public t()V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->m:Lo/mq;

    invoke-virtual {v0}, Lo/mq;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$1;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public u()Z
    .locals 2

    .line 545
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->Q()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$MsgTransportType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$MsgTransportType;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$MsgTransportType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$MsgTransportType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public v()Z
    .locals 6

    .line 584
    invoke-static {}, Lo/dQ;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->u()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 588
    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->y:Z

    if-eqz v0, :cond_1

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->u:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 589
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->u:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public w()Lo/kC;
    .locals 2

    .line 610
    :try_start_0
    new-instance v0, Lo/kC;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->v:Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lo/kC;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "SessionMdxTarget"

    const-string v1, "device capbility not cached"

    .line 613
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->k:Lo/mt;

    invoke-virtual {v0}, Lo/mt;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public y()V
    .locals 2

    .line 549
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->m:Lo/mq;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->h:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    invoke-virtual {v0, v1}, Lo/mq;->c(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;)V

    return-void
.end method

.method z()Z
    .locals 1

    .line 732
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->v:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
