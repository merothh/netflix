.class public Lo/ahP;
.super Lo/ahI;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ahP$Application;,
        Lo/ahP$StateListAnimator;
    }
.end annotation


# instance fields
.field protected final a:Lo/ahp;

.field protected final b:Lo/agM;

.field protected final c:Lo/ahS;

.field protected final d:Lo/agQ;

.field protected final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/ahn;",
            "[B>;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/Long;

.field private final g:Z

.field private final h:Z

.field private final i:J

.field private final j:Ljava/lang/Long;

.field private final k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/ahz;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lo/ahL;

.field private final m:Lo/ahX;

.field private final n:Lo/ahA;

.field private final o:Lo/aie;

.field private final p:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/ahV;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Lo/ahU;

.field private final r:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/ahV;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Lo/ahX;

.field private final t:Lo/ahS;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Lo/agQ;Lo/ahS;Lo/ahP$StateListAnimator;Lo/ahP$Application;)V
    .locals 5

    .line 253
    invoke-direct {p0}, Lo/ahI;-><init>()V

    .line 1040
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/ahP;->e:Ljava/util/Map;

    .line 255
    iget-wide v0, p4, Lo/ahP$StateListAnimator;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2e

    iget-wide v0, p4, Lo/ahP$StateListAnimator;->b:J

    const-wide/high16 v2, 0x20000000000000L

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2e

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 260
    :cond_0
    new-instance p1, Lcom/netflix/msl/MslInternalException;

    const-string p2, "Message entity authentication data or master token must be provided."

    invoke-direct {p1, p2}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    if-eqz p3, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    .line 268
    :cond_2
    invoke-virtual {p2}, Lo/agQ;->b()Lo/agT;

    move-result-object v1

    .line 269
    invoke-virtual {v1}, Lo/agT;->c()Z

    move-result v1

    :goto_1
    if-nez v1, :cond_4

    .line 271
    iget-object v1, p4, Lo/ahP$StateListAnimator;->h:Lo/aie;

    if-nez v1, :cond_3

    goto :goto_2

    .line 272
    :cond_3
    new-instance p1, Lcom/netflix/msl/MslInternalException;

    const-string p2, "User authentication data cannot be included if the message is not encrypted."

    invoke-direct {p1, p2}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    const/4 v1, 0x0

    if-eqz p3, :cond_6

    .line 282
    invoke-virtual {p1, v1}, Lcom/netflix/msl/util/MslContext;->d(Lcom/netflix/msl/util/MslContext$ReauthCode;)Lo/agQ;

    move-result-object v2

    invoke-virtual {v2}, Lo/agQ;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    const-string v2, ""

    goto :goto_3

    :cond_6
    move-object v2, v1

    :goto_3
    if-nez p3, :cond_7

    goto :goto_4

    :cond_7
    move-object p2, v1

    .line 288
    :goto_4
    iput-object p2, p0, Lo/ahP;->d:Lo/agQ;

    .line 289
    iput-object p3, p0, Lo/ahP;->c:Lo/ahS;

    .line 290
    iget-object p2, p4, Lo/ahP$StateListAnimator;->d:Ljava/lang/Long;

    iput-object p2, p0, Lo/ahP;->f:Ljava/lang/Long;

    .line 291
    iget-boolean p2, p4, Lo/ahP$StateListAnimator;->a:Z

    iput-boolean p2, p0, Lo/ahP;->g:Z

    .line 292
    iget-boolean p2, p4, Lo/ahP$StateListAnimator;->e:Z

    iput-boolean p2, p0, Lo/ahP;->h:Z

    .line 293
    iget-object p2, p4, Lo/ahP$StateListAnimator;->c:Lo/ahL;

    iput-object p2, p0, Lo/ahP;->l:Lo/ahL;

    .line 294
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->c()J

    move-result-wide p2

    const-wide/16 v3, 0x3e8

    div-long/2addr p2, v3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Lo/ahP;->j:Ljava/lang/Long;

    .line 295
    iget-wide p2, p4, Lo/ahP$StateListAnimator;->b:J

    iput-wide p2, p0, Lo/ahP;->i:J

    .line 296
    iget-object p2, p4, Lo/ahP$StateListAnimator;->f:Ljava/util/Set;

    if-eqz p2, :cond_8

    iget-object p2, p4, Lo/ahP$StateListAnimator;->f:Ljava/util/Set;

    goto :goto_5

    :cond_8
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    :goto_5
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lo/ahP;->k:Ljava/util/Set;

    .line 297
    iget-object p2, p4, Lo/ahP$StateListAnimator;->i:Lo/ahA;

    iput-object p2, p0, Lo/ahP;->n:Lo/ahA;

    .line 298
    iget-object p2, p4, Lo/ahP$StateListAnimator;->h:Lo/aie;

    iput-object p2, p0, Lo/ahP;->o:Lo/aie;

    .line 299
    iget-object p2, p4, Lo/ahP$StateListAnimator;->g:Lo/ahX;

    iput-object p2, p0, Lo/ahP;->m:Lo/ahX;

    .line 300
    iget-object p2, p4, Lo/ahP$StateListAnimator;->j:Ljava/util/Set;

    if-eqz p2, :cond_9

    iget-object p2, p4, Lo/ahP$StateListAnimator;->j:Ljava/util/Set;

    goto :goto_6

    :cond_9
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    :goto_6
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lo/ahP;->r:Ljava/util/Set;

    .line 301
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->a()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 302
    iget-object p2, p5, Lo/ahP$Application;->a:Lo/ahS;

    iput-object p2, p0, Lo/ahP;->t:Lo/ahS;

    .line 303
    iget-object p2, p5, Lo/ahP$Application;->c:Lo/ahX;

    iput-object p2, p0, Lo/ahP;->s:Lo/ahX;

    .line 304
    iget-object p2, p5, Lo/ahP$Application;->e:Ljava/util/Set;

    if-eqz p2, :cond_a

    iget-object p2, p5, Lo/ahP$Application;->e:Ljava/util/Set;

    goto :goto_7

    :cond_a
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    :goto_7
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lo/ahP;->p:Ljava/util/Set;

    goto :goto_8

    .line 306
    :cond_b
    iput-object v1, p0, Lo/ahP;->t:Lo/ahS;

    .line 307
    iput-object v1, p0, Lo/ahP;->s:Lo/ahX;

    .line 308
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lo/ahP;->p:Ljava/util/Set;

    .line 313
    :goto_8
    iget-object p2, p0, Lo/ahP;->n:Lo/ahA;

    if-eqz p2, :cond_d

    .line 317
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->a()Z

    move-result p2

    if-nez p2, :cond_c

    .line 318
    iget-object p2, p0, Lo/ahP;->n:Lo/ahA;

    invoke-virtual {p2}, Lo/ahA;->d()Lo/ahS;

    move-result-object p2

    .line 319
    iget-object p3, p0, Lo/ahP;->t:Lo/ahS;

    goto :goto_9

    .line 321
    :cond_c
    iget-object p2, p0, Lo/ahP;->c:Lo/ahS;

    .line 322
    iget-object p3, p0, Lo/ahP;->n:Lo/ahA;

    invoke-virtual {p3}, Lo/ahA;->d()Lo/ahS;

    move-result-object p3

    goto :goto_9

    .line 325
    :cond_d
    iget-object p2, p0, Lo/ahP;->c:Lo/ahS;

    .line 326
    iget-object p3, p0, Lo/ahP;->t:Lo/ahS;

    .line 330
    :goto_9
    iget-object p4, p0, Lo/ahP;->m:Lo/ahX;

    if-eqz p4, :cond_f

    if-eqz p2, :cond_e

    invoke-virtual {p4, p2}, Lo/ahX;->e(Lo/ahS;)Z

    move-result p4

    if-eqz p4, :cond_e

    goto :goto_a

    .line 331
    :cond_e
    new-instance p1, Lcom/netflix/msl/MslInternalException;

    const-string p2, "User ID token must be bound to a master token."

    invoke-direct {p1, p2}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 332
    :cond_f
    :goto_a
    iget-object p4, p0, Lo/ahP;->s:Lo/ahX;

    if-eqz p4, :cond_11

    if-eqz p3, :cond_10

    invoke-virtual {p4, p3}, Lo/ahX;->e(Lo/ahS;)Z

    move-result p4

    if-eqz p4, :cond_10

    goto :goto_b

    .line 333
    :cond_10
    new-instance p1, Lcom/netflix/msl/MslInternalException;

    const-string p2, "Peer user ID token must be bound to a peer master token."

    invoke-direct {p1, p2}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 336
    :cond_11
    :goto_b
    iget-object p4, p0, Lo/ahP;->m:Lo/ahX;

    if-eqz p4, :cond_12

    .line 337
    invoke-virtual {p4}, Lo/ahX;->d()Lo/ahU;

    move-result-object p4

    iput-object p4, p0, Lo/ahP;->q:Lo/ahU;

    goto :goto_c

    .line 339
    :cond_12
    iput-object v1, p0, Lo/ahP;->q:Lo/ahU;

    .line 343
    :goto_c
    iget-object p4, p0, Lo/ahP;->r:Ljava/util/Set;

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_13
    :goto_d
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_17

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lo/ahV;

    .line 344
    invoke-virtual {p5}, Lo/ahV;->a()Z

    move-result v3

    if-eqz v3, :cond_15

    if-eqz p2, :cond_14

    invoke-virtual {p5, p2}, Lo/ahV;->c(Lo/ahS;)Z

    move-result v3

    if-eqz v3, :cond_14

    goto :goto_e

    .line 345
    :cond_14
    new-instance p1, Lcom/netflix/msl/MslInternalException;

    const-string p2, "Master token bound service tokens must be bound to the provided master token."

    invoke-direct {p1, p2}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 346
    :cond_15
    :goto_e
    invoke-virtual {p5}, Lo/ahV;->f()Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, p0, Lo/ahP;->m:Lo/ahX;

    if-eqz v3, :cond_16

    invoke-virtual {p5, v3}, Lo/ahV;->e(Lo/ahX;)Z

    move-result p5

    if-eqz p5, :cond_16

    goto :goto_d

    .line 347
    :cond_16
    new-instance p1, Lcom/netflix/msl/MslInternalException;

    const-string p2, "User ID token bound service tokens must be bound to the provided user ID token."

    invoke-direct {p1, p2}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 349
    :cond_17
    iget-object p2, p0, Lo/ahP;->p:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_18
    :goto_f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lo/ahV;

    .line 350
    invoke-virtual {p4}, Lo/ahV;->a()Z

    move-result p5

    if-eqz p5, :cond_1a

    if-eqz p3, :cond_19

    invoke-virtual {p4, p3}, Lo/ahV;->c(Lo/ahS;)Z

    move-result p5

    if-eqz p5, :cond_19

    goto :goto_10

    .line 351
    :cond_19
    new-instance p1, Lcom/netflix/msl/MslInternalException;

    const-string p2, "Master token bound peer service tokens must be bound to the provided peer master token."

    invoke-direct {p1, p2}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 352
    :cond_1a
    :goto_10
    invoke-virtual {p4}, Lo/ahV;->f()Z

    move-result p5

    if-eqz p5, :cond_18

    iget-object p5, p0, Lo/ahP;->s:Lo/ahX;

    if-eqz p5, :cond_1b

    invoke-virtual {p4, p5}, Lo/ahV;->e(Lo/ahX;)Z

    move-result p4

    if-eqz p4, :cond_1b

    goto :goto_f

    .line 353
    :cond_1b
    new-instance p1, Lcom/netflix/msl/MslInternalException;

    const-string p2, "User ID token bound peer service tokens must be bound to the provided peer user ID token."

    invoke-direct {p1, p2}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 358
    :cond_1c
    :try_start_0
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->h()Lo/aho;

    move-result-object p2

    .line 359
    invoke-virtual {p2}, Lo/aho;->b()Lo/ahp;

    move-result-object p3

    iput-object p3, p0, Lo/ahP;->a:Lo/ahp;

    if-eqz v2, :cond_1d

    .line 360
    iget-object p3, p0, Lo/ahP;->a:Lo/ahp;

    const-string p4, "sender"

    invoke-virtual {p3, p4, v2}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 361
    :cond_1d
    iget-object p3, p0, Lo/ahP;->a:Lo/ahp;

    const-string p4, "timestamp"

    iget-object p5, p0, Lo/ahP;->j:Ljava/lang/Long;

    invoke-virtual {p3, p4, p5}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 362
    iget-object p3, p0, Lo/ahP;->a:Lo/ahp;

    const-string p4, "messageid"

    iget-wide v2, p0, Lo/ahP;->i:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {p3, p4, p5}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 363
    iget-object p3, p0, Lo/ahP;->a:Lo/ahp;

    const-string p4, "nonreplayable"

    iget-object p5, p0, Lo/ahP;->f:Ljava/lang/Long;

    if-eqz p5, :cond_1e

    goto :goto_11

    :cond_1e
    const/4 v0, 0x0

    :goto_11
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    invoke-virtual {p3, p4, p5}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 364
    iget-object p3, p0, Lo/ahP;->f:Ljava/lang/Long;

    if-eqz p3, :cond_1f

    iget-object p3, p0, Lo/ahP;->a:Lo/ahp;

    const-string p4, "nonreplayableid"

    iget-object p5, p0, Lo/ahP;->f:Ljava/lang/Long;

    invoke-virtual {p3, p4, p5}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 365
    :cond_1f
    iget-object p3, p0, Lo/ahP;->a:Lo/ahp;

    const-string p4, "renewable"

    iget-boolean p5, p0, Lo/ahP;->g:Z

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    invoke-virtual {p3, p4, p5}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 366
    iget-object p3, p0, Lo/ahP;->a:Lo/ahp;

    const-string p4, "handshake"

    iget-boolean p5, p0, Lo/ahP;->h:Z

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    invoke-virtual {p3, p4, p5}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 367
    iget-object p3, p0, Lo/ahP;->l:Lo/ahL;

    if-eqz p3, :cond_20

    iget-object p3, p0, Lo/ahP;->a:Lo/ahp;

    const-string p4, "capabilities"

    iget-object p5, p0, Lo/ahP;->l:Lo/ahL;

    invoke-virtual {p3, p4, p5}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 368
    :cond_20
    iget-object p3, p0, Lo/ahP;->l:Lo/ahL;

    if-eqz p3, :cond_21

    iget-object p3, p0, Lo/ahP;->l:Lo/ahL;

    invoke-virtual {p3}, Lo/ahL;->b()Ljava/util/Set;

    move-result-object v1

    .line 369
    :cond_21
    invoke-virtual {p2, v1}, Lo/aho;->e(Ljava/util/Set;)Lo/ahn;

    move-result-object p3

    .line 370
    iget-object p4, p0, Lo/ahP;->k:Ljava/util/Set;

    invoke-interface {p4}, Ljava/util/Set;->size()I

    move-result p4

    if-lez p4, :cond_22

    iget-object p4, p0, Lo/ahP;->a:Lo/ahp;

    const-string p5, "keyrequestdata"

    iget-object v0, p0, Lo/ahP;->k:Ljava/util/Set;

    invoke-static {p2, p3, v0}, Lo/ahq;->d(Lo/aho;Lo/ahn;Ljava/util/Collection;)Lo/ahm;

    move-result-object v0

    invoke-virtual {p4, p5, v0}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 371
    :cond_22
    iget-object p4, p0, Lo/ahP;->n:Lo/ahA;

    if-eqz p4, :cond_23

    iget-object p4, p0, Lo/ahP;->a:Lo/ahp;

    const-string p5, "keyresponsedata"

    iget-object v0, p0, Lo/ahP;->n:Lo/ahA;

    invoke-virtual {p4, p5, v0}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 372
    :cond_23
    iget-object p4, p0, Lo/ahP;->o:Lo/aie;

    if-eqz p4, :cond_24

    iget-object p4, p0, Lo/ahP;->a:Lo/ahp;

    const-string p5, "userauthdata"

    iget-object v0, p0, Lo/ahP;->o:Lo/aie;

    invoke-virtual {p4, p5, v0}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 373
    :cond_24
    iget-object p4, p0, Lo/ahP;->m:Lo/ahX;

    if-eqz p4, :cond_25

    iget-object p4, p0, Lo/ahP;->a:Lo/ahp;

    const-string p5, "useridtoken"

    iget-object v0, p0, Lo/ahP;->m:Lo/ahX;

    invoke-virtual {p4, p5, v0}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 374
    :cond_25
    iget-object p4, p0, Lo/ahP;->r:Ljava/util/Set;

    invoke-interface {p4}, Ljava/util/Set;->size()I

    move-result p4

    if-lez p4, :cond_26

    iget-object p4, p0, Lo/ahP;->a:Lo/ahp;

    const-string p5, "servicetokens"

    iget-object v0, p0, Lo/ahP;->r:Ljava/util/Set;

    invoke-static {p2, p3, v0}, Lo/ahq;->d(Lo/aho;Lo/ahn;Ljava/util/Collection;)Lo/ahm;

    move-result-object v0

    invoke-virtual {p4, p5, v0}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 375
    :cond_26
    iget-object p4, p0, Lo/ahP;->t:Lo/ahS;

    if-eqz p4, :cond_27

    iget-object p4, p0, Lo/ahP;->a:Lo/ahp;

    const-string p5, "peermastertoken"

    iget-object v0, p0, Lo/ahP;->t:Lo/ahS;

    invoke-virtual {p4, p5, v0}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 376
    :cond_27
    iget-object p4, p0, Lo/ahP;->s:Lo/ahX;

    if-eqz p4, :cond_28

    iget-object p4, p0, Lo/ahP;->a:Lo/ahp;

    const-string p5, "peeruseridtoken"

    iget-object v0, p0, Lo/ahP;->s:Lo/ahX;

    invoke-virtual {p4, p5, v0}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 377
    :cond_28
    iget-object p4, p0, Lo/ahP;->p:Ljava/util/Set;

    invoke-interface {p4}, Ljava/util/Set;->size()I

    move-result p4

    if-lez p4, :cond_29

    iget-object p4, p0, Lo/ahP;->a:Lo/ahp;

    const-string p5, "peerservicetokens"

    iget-object v0, p0, Lo/ahP;->p:Ljava/util/Set;

    invoke-static {p2, p3, v0}, Lo/ahq;->d(Lo/aho;Lo/ahn;Ljava/util/Collection;)Lo/ahm;

    move-result-object p2

    invoke-virtual {p4, p5, p2}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_2

    .line 388
    :cond_29
    iget-object p2, p0, Lo/ahP;->c:Lo/ahS;

    if-eqz p2, :cond_2c

    .line 390
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->f()Lo/aim;

    move-result-object p2

    iget-object p3, p0, Lo/ahP;->c:Lo/ahS;

    invoke-interface {p2, p3}, Lo/aim;->b(Lo/ahS;)Lo/agM;

    move-result-object p2

    if-nez p2, :cond_2b

    .line 396
    iget-object p2, p0, Lo/ahP;->c:Lo/ahS;

    invoke-virtual {p2}, Lo/ahS;->a()Z

    move-result p2

    if-eqz p2, :cond_2a

    iget-object p2, p0, Lo/ahP;->c:Lo/ahS;

    invoke-virtual {p2}, Lo/ahS;->d()Z

    move-result p2

    if-eqz p2, :cond_2a

    .line 398
    new-instance p2, Lo/agP;

    iget-object p3, p0, Lo/ahP;->c:Lo/ahS;

    invoke-direct {p2, p1, p3}, Lo/agP;-><init>(Lcom/netflix/msl/util/MslContext;Lo/ahS;)V

    iput-object p2, p0, Lo/ahP;->b:Lo/agM;

    goto :goto_12

    .line 397
    :cond_2a
    new-instance p1, Lcom/netflix/msl/MslMasterTokenException;

    sget-object p2, Lo/agz;->aj:Lo/agz;

    iget-object p3, p0, Lo/ahP;->c:Lo/ahS;

    invoke-direct {p1, p2, p3}, Lcom/netflix/msl/MslMasterTokenException;-><init>(Lo/agz;Lo/ahS;)V

    iget-object p2, p0, Lo/ahP;->m:Lo/ahX;

    invoke-virtual {p1, p2}, Lcom/netflix/msl/MslMasterTokenException;->e(Lo/ahX;)Lcom/netflix/msl/MslMasterTokenException;

    move-result-object p1

    iget-object p2, p0, Lo/ahP;->o:Lo/aie;

    invoke-virtual {p1, p2}, Lcom/netflix/msl/MslMasterTokenException;->e(Lo/aie;)Lcom/netflix/msl/MslMasterTokenException;

    move-result-object p1

    iget-wide p2, p0, Lo/ahP;->i:J

    invoke-virtual {p1, p2, p3}, Lcom/netflix/msl/MslMasterTokenException;->b(J)Lcom/netflix/msl/MslMasterTokenException;

    move-result-object p1

    throw p1

    .line 400
    :cond_2b
    iput-object p2, p0, Lo/ahP;->b:Lo/agM;

    goto :goto_12

    .line 404
    :cond_2c
    :try_start_1
    iget-object p2, p0, Lo/ahP;->d:Lo/agQ;

    invoke-virtual {p2}, Lo/agQ;->b()Lo/agT;

    move-result-object p2

    .line 405
    invoke-virtual {p1, p2}, Lcom/netflix/msl/util/MslContext;->c(Lo/agT;)Lo/agO;

    move-result-object p3

    if-eqz p3, :cond_2d

    .line 408
    iget-object p2, p0, Lo/ahP;->d:Lo/agQ;

    invoke-virtual {p3, p1, p2}, Lo/agO;->b(Lcom/netflix/msl/util/MslContext;Lo/agQ;)Lo/agM;

    move-result-object p1

    iput-object p1, p0, Lo/ahP;->b:Lo/agM;

    :goto_12
    return-void

    .line 407
    :cond_2d
    new-instance p1, Lcom/netflix/msl/MslEntityAuthException;

    sget-object p3, Lo/agz;->bb:Lo/agz;

    invoke-virtual {p2}, Lo/agT;->e()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p3, p2}, Lcom/netflix/msl/MslEntityAuthException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 416
    iget-object p2, p0, Lo/ahP;->d:Lo/agQ;

    invoke-virtual {p1, p2}, Lcom/netflix/msl/MslEntityAuthException;->e(Lo/agQ;)Lcom/netflix/msl/MslEntityAuthException;

    .line 417
    iget-object p2, p0, Lo/ahP;->m:Lo/ahX;

    invoke-virtual {p1, p2}, Lcom/netflix/msl/MslEntityAuthException;->b(Lo/ahX;)Lcom/netflix/msl/MslException;

    .line 418
    iget-object p2, p0, Lo/ahP;->o:Lo/aie;

    invoke-virtual {p1, p2}, Lcom/netflix/msl/MslEntityAuthException;->a(Lo/aie;)Lcom/netflix/msl/MslException;

    .line 419
    iget-wide p2, p0, Lo/ahP;->i:J

    invoke-virtual {p1, p2, p3}, Lcom/netflix/msl/MslEntityAuthException;->a(J)Lcom/netflix/msl/MslException;

    .line 420
    throw p1

    :catch_1
    move-exception p1

    .line 410
    iget-object p2, p0, Lo/ahP;->d:Lo/agQ;

    invoke-virtual {p1, p2}, Lcom/netflix/msl/MslCryptoException;->d(Lo/agQ;)Lcom/netflix/msl/MslCryptoException;

    .line 411
    iget-object p2, p0, Lo/ahP;->m:Lo/ahX;

    invoke-virtual {p1, p2}, Lcom/netflix/msl/MslCryptoException;->b(Lo/ahX;)Lcom/netflix/msl/MslException;

    .line 412
    iget-object p2, p0, Lo/ahP;->o:Lo/aie;

    invoke-virtual {p1, p2}, Lcom/netflix/msl/MslCryptoException;->a(Lo/aie;)Lcom/netflix/msl/MslException;

    .line 413
    iget-wide p2, p0, Lo/ahP;->i:J

    invoke-virtual {p1, p2, p3}, Lcom/netflix/msl/MslCryptoException;->a(J)Lcom/netflix/msl/MslException;

    .line 414
    throw p1

    :catch_2
    move-exception p1

    .line 379
    new-instance p2, Lcom/netflix/msl/MslEncodingException;

    sget-object p3, Lo/agz;->a:Lo/agz;

    const-string p4, "headerdata"

    invoke-direct {p2, p3, p4, p1}, Lcom/netflix/msl/MslEncodingException;-><init>(Lo/agz;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lo/ahP;->c:Lo/ahS;

    .line 380
    invoke-virtual {p2, p1}, Lcom/netflix/msl/MslEncodingException;->d(Lo/ahS;)Lcom/netflix/msl/MslEncodingException;

    move-result-object p1

    iget-object p2, p0, Lo/ahP;->d:Lo/agQ;

    .line 381
    invoke-virtual {p1, p2}, Lcom/netflix/msl/MslEncodingException;->d(Lo/agQ;)Lcom/netflix/msl/MslEncodingException;

    move-result-object p1

    iget-object p2, p0, Lo/ahP;->s:Lo/ahX;

    .line 382
    invoke-virtual {p1, p2}, Lcom/netflix/msl/MslEncodingException;->d(Lo/ahX;)Lcom/netflix/msl/MslEncodingException;

    move-result-object p1

    iget-object p2, p0, Lo/ahP;->o:Lo/aie;

    .line 383
    invoke-virtual {p1, p2}, Lcom/netflix/msl/MslEncodingException;->d(Lo/aie;)Lcom/netflix/msl/MslEncodingException;

    move-result-object p1

    iget-wide p2, p0, Lo/ahP;->i:J

    .line 384
    invoke-virtual {p1, p2, p3}, Lcom/netflix/msl/MslEncodingException;->d(J)Lcom/netflix/msl/MslEncodingException;

    move-result-object p1

    throw p1

    .line 256
    :cond_2e
    new-instance p1, Lcom/netflix/msl/MslInternalException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Message ID "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p4, Lo/ahP$StateListAnimator;->b:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " is out of range."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected constructor <init>(Lcom/netflix/msl/util/MslContext;[BLo/agQ;Lo/ahS;[BLjava/util/Map;)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/util/MslContext;",
            "[B",
            "Lo/agQ;",
            "Lo/ahS;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/agM;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v2, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    const-string v11, "handshake"

    const-string v12, "nonreplayableid"

    const-string v3, "timestamp"

    const-string v13, "keyrequestdata"

    const-string v14, "capabilities"

    const-string v15, "servicetokens"

    const-string v7, "userauthdata"

    const-string v6, "useridtoken"

    const-string v5, "keyresponsedata"

    const-string v4, "headerdata "

    .line 470
    invoke-direct/range {p0 .. p0}, Lo/ahI;-><init>()V

    move-object/from16 v16, v4

    .line 1040
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v1, Lo/ahP;->e:Ljava/util/Map;

    .line 471
    invoke-virtual/range {p1 .. p1}, Lcom/netflix/msl/util/MslContext;->h()Lo/aho;

    move-result-object v4

    move-object/from16 v17, v13

    if-nez v10, :cond_0

    move-object v13, v9

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    .line 475
    :goto_0
    :try_start_0
    iput-object v13, v1, Lo/ahP;->d:Lo/agQ;

    .line 476
    iput-object v10, v1, Lo/ahP;->c:Lo/ahS;
    :try_end_0
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_0 .. :try_end_0} :catch_1a
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_0 .. :try_end_0} :catch_19

    if-nez v9, :cond_2

    if-eqz v10, :cond_1

    goto :goto_1

    .line 478
    :cond_1
    :try_start_1
    new-instance v2, Lcom/netflix/msl/MslMessageException;

    sget-object v3, Lo/agz;->bW:Lo/agz;

    invoke-direct {v2, v3}, Lcom/netflix/msl/MslMessageException;-><init>(Lo/agz;)V

    throw v2

    :cond_2
    :goto_1
    if-eqz v10, :cond_5

    .line 483
    invoke-virtual/range {p1 .. p1}, Lcom/netflix/msl/util/MslContext;->f()Lo/aim;

    move-result-object v13

    invoke-interface {v13, v10}, Lo/aim;->b(Lo/ahS;)Lo/agM;

    move-result-object v13

    if-nez v13, :cond_4

    .line 489
    invoke-virtual/range {p4 .. p4}, Lo/ahS;->a()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual/range {p4 .. p4}, Lo/ahS;->d()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 491
    new-instance v13, Lo/agP;

    invoke-direct {v13, v8, v10}, Lo/agP;-><init>(Lcom/netflix/msl/util/MslContext;Lo/ahS;)V

    iput-object v13, v1, Lo/ahP;->b:Lo/agM;

    goto :goto_2

    .line 490
    :cond_3
    new-instance v2, Lcom/netflix/msl/MslMasterTokenException;

    sget-object v3, Lo/agz;->aj:Lo/agz;

    invoke-direct {v2, v3, v10}, Lcom/netflix/msl/MslMasterTokenException;-><init>(Lo/agz;Lo/ahS;)V

    throw v2

    .line 493
    :cond_4
    iput-object v13, v1, Lo/ahP;->b:Lo/agM;
    :try_end_1
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    move-object/from16 v18, v14

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v4, v9

    move-object v3, v10

    goto/16 :goto_23

    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v4, v9

    move-object v3, v10

    goto/16 :goto_25

    .line 497
    :cond_5
    :try_start_2
    invoke-virtual/range {p3 .. p3}, Lo/agQ;->b()Lo/agT;

    move-result-object v13

    move-object/from16 v18, v14

    .line 498
    invoke-virtual {v8, v13}, Lcom/netflix/msl/util/MslContext;->c(Lo/agT;)Lo/agO;

    move-result-object v14

    if-eqz v14, :cond_27

    .line 501
    invoke-virtual {v14, v8, v9}, Lo/agO;->b(Lcom/netflix/msl/util/MslContext;Lo/agQ;)Lo/agM;

    move-result-object v13

    iput-object v13, v1, Lo/ahP;->b:Lo/agM;
    :try_end_2
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_2 .. :try_end_2} :catch_16
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_2 .. :try_end_2} :catch_15

    .line 515
    :goto_3
    :try_start_3
    iget-object v13, v1, Lo/ahP;->b:Lo/agM;

    move-object/from16 v14, p5

    invoke-virtual {v13, v2, v14, v4}, Lo/agM;->e([B[BLo/aho;)Z

    move-result v13
    :try_end_3
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_3 .. :try_end_3} :catch_1a
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_3 .. :try_end_3} :catch_19

    if-nez v13, :cond_7

    if-eqz v10, :cond_6

    .line 517
    :try_start_4
    new-instance v2, Lcom/netflix/msl/MslCryptoException;

    sget-object v3, Lo/agz;->cH:Lo/agz;

    invoke-direct {v2, v3}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;)V

    throw v2

    .line 519
    :cond_6
    new-instance v2, Lcom/netflix/msl/MslCryptoException;

    sget-object v3, Lo/agz;->cE:Lo/agz;

    invoke-direct {v2, v3}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;)V

    throw v2
    :try_end_4
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_4 .. :try_end_4} :catch_0

    .line 521
    :cond_7
    :try_start_5
    iget-object v13, v1, Lo/ahP;->b:Lo/agM;

    invoke-virtual {v13, v2, v4}, Lo/agM;->d([BLo/aho;)[B

    move-result-object v2
    :try_end_5
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_5 .. :try_end_5} :catch_1a
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_5 .. :try_end_5} :catch_19

    .line 533
    :try_start_6
    invoke-virtual {v4, v2}, Lo/aho;->c([B)Lo/ahp;

    move-result-object v13

    iput-object v13, v1, Lo/ahP;->a:Lo/ahp;

    .line 537
    iget-object v13, v1, Lo/ahP;->a:Lo/ahp;

    const-string v14, "messageid"

    invoke-virtual {v13, v14}, Lo/ahp;->h(Ljava/lang/String;)J

    move-result-wide v13

    iput-wide v13, v1, Lo/ahP;->i:J

    .line 538
    iget-wide v13, v1, Lo/ahP;->i:J

    const-wide/16 v19, 0x0

    cmp-long v21, v13, v19

    if-ltz v21, :cond_26

    iget-wide v13, v1, Lo/ahP;->i:J
    :try_end_6
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_6 .. :try_end_6} :catch_12

    const-wide/high16 v21, 0x20000000000000L

    cmp-long v23, v13, v21

    if-gtz v23, :cond_26

    .line 545
    :try_start_7
    iget-object v2, v1, Lo/ahP;->a:Lo/ahp;

    invoke-virtual {v2, v3}, Lo/ahp;->i(Ljava/lang/String;)Z

    move-result v2
    :try_end_7
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_7 .. :try_end_7} :catch_10
    .catch Lcom/netflix/msl/MslException; {:try_start_7 .. :try_end_7} :catch_f

    if-eqz v2, :cond_8

    :try_start_8
    iget-object v2, v1, Lo/ahP;->a:Lo/ahp;

    invoke-virtual {v2, v3}, Lo/ahp;->h(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13
    :try_end_8
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lcom/netflix/msl/MslException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v2, v0

    move-object v4, v9

    move-object v3, v10

    goto/16 :goto_1c

    :catch_3
    move-exception v0

    move-object v2, v0

    move-object v4, v9

    move-object v3, v10

    :goto_4
    move-object/from16 v5, v16

    goto/16 :goto_1e

    :cond_8
    const/4 v13, 0x0

    :goto_5
    :try_start_9
    iput-object v13, v1, Lo/ahP;->j:Ljava/lang/Long;

    .line 549
    iget-object v2, v1, Lo/ahP;->a:Lo/ahp;

    invoke-virtual {v2, v5}, Lo/ahp;->i(Ljava/lang/String;)Z

    move-result v2
    :try_end_9
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_9 .. :try_end_9} :catch_10
    .catch Lcom/netflix/msl/MslException; {:try_start_9 .. :try_end_9} :catch_f

    if-eqz v2, :cond_a

    .line 550
    :try_start_a
    iget-object v2, v1, Lo/ahP;->a:Lo/ahp;

    invoke-virtual {v2, v5, v4}, Lo/ahp;->d(Ljava/lang/String;Lo/aho;)Lo/ahp;

    move-result-object v2

    invoke-static {v8, v2}, Lo/ahA;->b(Lcom/netflix/msl/util/MslContext;Lo/ahp;)Lo/ahA;

    move-result-object v2

    iput-object v2, v1, Lo/ahP;->n:Lo/ahA;

    .line 556
    invoke-virtual/range {p1 .. p1}, Lcom/netflix/msl/util/MslContext;->a()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, v1, Lo/ahP;->n:Lo/ahA;

    .line 557
    invoke-virtual {v2}, Lo/ahA;->d()Lo/ahS;

    move-result-object v2
    :try_end_a
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_a .. :try_end_a} :catch_3
    .catch Lcom/netflix/msl/MslException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_6

    :cond_9
    move-object v2, v10

    :goto_6
    move-object v13, v2

    goto :goto_7

    :cond_a
    const/4 v2, 0x0

    .line 560
    :try_start_b
    iput-object v2, v1, Lo/ahP;->n:Lo/ahA;

    move-object v13, v10

    .line 565
    :goto_7
    iget-object v2, v1, Lo/ahP;->a:Lo/ahp;

    invoke-virtual {v2, v6}, Lo/ahp;->i(Ljava/lang/String;)Z

    move-result v2
    :try_end_b
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_b .. :try_end_b} :catch_10
    .catch Lcom/netflix/msl/MslException; {:try_start_b .. :try_end_b} :catch_f

    if-eqz v2, :cond_b

    :try_start_c
    new-instance v2, Lo/ahX;

    iget-object v3, v1, Lo/ahP;->a:Lo/ahp;

    .line 566
    invoke-virtual {v3, v6, v4}, Lo/ahp;->d(Ljava/lang/String;Lo/aho;)Lo/ahp;

    move-result-object v3

    invoke-direct {v2, v8, v3, v13}, Lo/ahX;-><init>(Lcom/netflix/msl/util/MslContext;Lo/ahp;Lo/ahS;)V
    :try_end_c
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_c .. :try_end_c} :catch_3
    .catch Lcom/netflix/msl/MslException; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_8

    :cond_b
    const/4 v2, 0x0

    :goto_8
    :try_start_d
    iput-object v2, v1, Lo/ahP;->m:Lo/ahX;

    .line 569
    iget-object v2, v1, Lo/ahP;->a:Lo/ahp;

    invoke-virtual {v2, v7}, Lo/ahp;->i(Ljava/lang/String;)Z

    move-result v2
    :try_end_d
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_d .. :try_end_d} :catch_10
    .catch Lcom/netflix/msl/MslException; {:try_start_d .. :try_end_d} :catch_f

    if-eqz v2, :cond_c

    :try_start_e
    iget-object v2, v1, Lo/ahP;->a:Lo/ahp;

    .line 570
    invoke-virtual {v2, v7, v4}, Lo/ahp;->d(Ljava/lang/String;Lo/aho;)Lo/ahp;

    move-result-object v2

    invoke-static {v8, v13, v2}, Lo/aie;->a(Lcom/netflix/msl/util/MslContext;Lo/ahS;Lo/ahp;)Lo/aie;

    move-result-object v2
    :try_end_e
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_e .. :try_end_e} :catch_3
    .catch Lcom/netflix/msl/MslException; {:try_start_e .. :try_end_e} :catch_2

    goto :goto_9

    :cond_c
    const/4 v2, 0x0

    :goto_9
    :try_start_f
    iput-object v2, v1, Lo/ahP;->o:Lo/aie;

    .line 574
    iget-object v2, v1, Lo/ahP;->o:Lo/aie;
    :try_end_f
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_f .. :try_end_f} :catch_10
    .catch Lcom/netflix/msl/MslException; {:try_start_f .. :try_end_f} :catch_f

    if-eqz v2, :cond_11

    if-eqz v10, :cond_d

    const/4 v2, 0x1

    goto :goto_a

    .line 576
    :cond_d
    :try_start_10
    invoke-virtual/range {p3 .. p3}, Lo/agQ;->b()Lo/agT;

    move-result-object v2

    invoke-virtual {v2}, Lo/agT;->c()Z

    move-result v2

    :goto_a
    if-eqz v2, :cond_10

    .line 581
    iget-object v2, v1, Lo/ahP;->o:Lo/aie;

    invoke-virtual {v2}, Lo/aie;->b()Lo/aib;

    move-result-object v2

    .line 582
    invoke-virtual {v8, v2}, Lcom/netflix/msl/util/MslContext;->d(Lo/aib;)Lo/aif;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 585
    iget-object v2, v1, Lo/ahP;->c:Lo/ahS;

    if-eqz v2, :cond_e

    iget-object v2, v1, Lo/ahP;->c:Lo/ahS;

    invoke-virtual {v2}, Lo/ahS;->e()Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    :cond_e
    iget-object v2, v1, Lo/ahP;->d:Lo/agQ;

    invoke-virtual {v2}, Lo/agQ;->c()Ljava/lang/String;

    move-result-object v2

    .line 586
    :goto_b
    iget-object v14, v1, Lo/ahP;->o:Lo/aie;

    move-object/from16 v23, v5

    iget-object v5, v1, Lo/ahP;->m:Lo/ahX;

    invoke-virtual {v3, v8, v2, v14, v5}, Lo/aif;->b(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Lo/aie;Lo/ahX;)Lo/ahU;

    move-result-object v2

    iput-object v2, v1, Lo/ahP;->q:Lo/ahU;

    goto :goto_c

    .line 584
    :cond_f
    new-instance v3, Lcom/netflix/msl/MslUserAuthException;

    sget-object v4, Lo/agz;->bC:Lo/agz;

    invoke-virtual {v2}, Lo/aib;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/netflix/msl/MslUserAuthException;-><init>(Lo/agz;Ljava/lang/String;)V

    iget-object v2, v1, Lo/ahP;->m:Lo/ahX;

    invoke-virtual {v3, v2}, Lcom/netflix/msl/MslUserAuthException;->b(Lo/ahX;)Lcom/netflix/msl/MslException;

    move-result-object v2

    iget-object v3, v1, Lo/ahP;->o:Lo/aie;

    invoke-virtual {v2, v3}, Lcom/netflix/msl/MslException;->a(Lo/aie;)Lcom/netflix/msl/MslException;

    move-result-object v2

    throw v2

    .line 578
    :cond_10
    new-instance v2, Lcom/netflix/msl/MslMessageException;

    sget-object v3, Lo/agz;->cK:Lo/agz;

    invoke-direct {v2, v3}, Lcom/netflix/msl/MslMessageException;-><init>(Lo/agz;)V

    iget-object v3, v1, Lo/ahP;->m:Lo/ahX;

    invoke-virtual {v2, v3}, Lcom/netflix/msl/MslMessageException;->d(Lo/ahX;)Lcom/netflix/msl/MslMessageException;

    move-result-object v2

    iget-object v3, v1, Lo/ahP;->o:Lo/aie;

    invoke-virtual {v2, v3}, Lcom/netflix/msl/MslMessageException;->a(Lo/aie;)Lcom/netflix/msl/MslException;

    move-result-object v2

    throw v2
    :try_end_10
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Lcom/netflix/msl/MslException; {:try_start_10 .. :try_end_10} :catch_2

    :cond_11
    move-object/from16 v23, v5

    .line 587
    :try_start_11
    iget-object v2, v1, Lo/ahP;->m:Lo/ahX;
    :try_end_11
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_11 .. :try_end_11} :catch_10
    .catch Lcom/netflix/msl/MslException; {:try_start_11 .. :try_end_11} :catch_f

    if-eqz v2, :cond_12

    .line 588
    :try_start_12
    iget-object v2, v1, Lo/ahP;->m:Lo/ahX;

    invoke-virtual {v2}, Lo/ahX;->d()Lo/ahU;

    move-result-object v2

    iput-object v2, v1, Lo/ahP;->q:Lo/ahU;
    :try_end_12
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_12 .. :try_end_12} :catch_3
    .catch Lcom/netflix/msl/MslException; {:try_start_12 .. :try_end_12} :catch_2

    goto :goto_c

    :cond_12
    const/4 v2, 0x0

    .line 590
    :try_start_13
    iput-object v2, v1, Lo/ahP;->q:Lo/ahU;

    .line 595
    :goto_c
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 596
    iget-object v2, v1, Lo/ahP;->a:Lo/ahp;

    invoke-virtual {v2, v15}, Lo/ahp;->i(Ljava/lang/String;)Z

    move-result v2
    :try_end_13
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_13 .. :try_end_13} :catch_10
    .catch Lcom/netflix/msl/MslException; {:try_start_13 .. :try_end_13} :catch_f

    const/16 v24, 0x0

    if-eqz v2, :cond_13

    .line 597
    :try_start_14
    iget-object v2, v1, Lo/ahP;->a:Lo/ahp;

    invoke-virtual {v2, v15}, Lo/ahp;->a(Ljava/lang/String;)Lo/ahm;

    move-result-object v5

    const/4 v3, 0x0

    .line 598
    :goto_d
    invoke-virtual {v5}, Lo/ahm;->c()I

    move-result v2
    :try_end_14
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_14 .. :try_end_14} :catch_7
    .catch Lcom/netflix/msl/MslException; {:try_start_14 .. :try_end_14} :catch_d

    if-ge v3, v2, :cond_13

    .line 600
    :try_start_15
    new-instance v2, Lo/ahV;

    invoke-virtual {v5, v3, v4}, Lo/ahm;->d(ILo/aho;)Lo/ahp;

    move-result-object v25

    move-object/from16 v26, v6

    iget-object v6, v1, Lo/ahP;->m:Lo/ahX;
    :try_end_15
    .catch Lcom/netflix/msl/MslException; {:try_start_15 .. :try_end_15} :catch_5
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_15 .. :try_end_15} :catch_7

    move-object/from16 p2, v2

    move-object/from16 v2, p2

    move/from16 v27, v3

    move-object/from16 v3, p1

    move-object v9, v4

    move-object/from16 v10, v16

    move-object/from16 v4, v25

    move-object/from16 v16, v5

    move-object/from16 v28, v23

    move-object/from16 v23, v15

    move-object/from16 v15, v28

    move-object v5, v13

    move-object/from16 v25, v15

    move-object/from16 v15, v26

    move-object v15, v7

    move-object/from16 v7, p6

    :try_start_16
    invoke-direct/range {v2 .. v7}, Lo/ahV;-><init>(Lcom/netflix/msl/util/MslContext;Lo/ahp;Lo/ahS;Lo/ahX;Ljava/util/Map;)V

    invoke-interface {v14, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catch Lcom/netflix/msl/MslException; {:try_start_16 .. :try_end_16} :catch_4
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_16 .. :try_end_16} :catch_6

    add-int/lit8 v3, v27, 0x1

    move-object v4, v9

    move-object v7, v15

    move-object/from16 v5, v16

    move-object/from16 v15, v23

    move-object/from16 v23, v25

    move-object/from16 v6, v26

    move-object/from16 v9, p3

    move-object/from16 v16, v10

    move-object/from16 v10, p4

    goto :goto_d

    :catch_4
    move-exception v0

    goto :goto_e

    :catch_5
    move-exception v0

    move-object/from16 v10, v16

    :goto_e
    move-object v2, v0

    .line 602
    :try_start_17
    invoke-virtual {v2, v13}, Lcom/netflix/msl/MslException;->e(Lo/ahS;)Lcom/netflix/msl/MslException;

    move-result-object v3

    iget-object v4, v1, Lo/ahP;->m:Lo/ahX;

    invoke-virtual {v3, v4}, Lcom/netflix/msl/MslException;->b(Lo/ahX;)Lcom/netflix/msl/MslException;

    move-result-object v3

    iget-object v4, v1, Lo/ahP;->o:Lo/aie;

    invoke-virtual {v3, v4}, Lcom/netflix/msl/MslException;->a(Lo/aie;)Lcom/netflix/msl/MslException;

    .line 603
    throw v2
    :try_end_17
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_17 .. :try_end_17} :catch_6
    .catch Lcom/netflix/msl/MslException; {:try_start_17 .. :try_end_17} :catch_d

    :catch_6
    move-exception v0

    move-object/from16 v4, p3

    move-object/from16 v3, p4

    move-object v2, v0

    move-object v5, v10

    goto/16 :goto_1e

    :catch_7
    move-exception v0

    move-object/from16 v4, p3

    move-object/from16 v3, p4

    move-object v2, v0

    goto/16 :goto_4

    :cond_13
    move-object v9, v4

    move-object/from16 v26, v6

    move-object/from16 v10, v16

    move-object/from16 v25, v23

    move-object/from16 v23, v15

    move-object v15, v7

    .line 607
    :try_start_18
    invoke-static {v14}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, v1, Lo/ahP;->r:Ljava/util/Set;
    :try_end_18
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_18 .. :try_end_18} :catch_e
    .catch Lcom/netflix/msl/MslException; {:try_start_18 .. :try_end_18} :catch_d

    .line 618
    :try_start_19
    iget-object v2, v1, Lo/ahP;->a:Lo/ahp;
    :try_end_19
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_19 .. :try_end_19} :catch_c
    .catch Lcom/netflix/msl/MslException; {:try_start_19 .. :try_end_19} :catch_b

    :try_start_1a
    invoke-virtual {v2, v12}, Lo/ahp;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, v1, Lo/ahP;->a:Lo/ahp;

    invoke-virtual {v2, v12}, Lo/ahp;->h(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    goto :goto_f

    :cond_14
    const/4 v13, 0x0

    :goto_f
    iput-object v13, v1, Lo/ahP;->f:Ljava/lang/Long;

    .line 619
    iget-object v2, v1, Lo/ahP;->a:Lo/ahp;

    const-string v3, "renewable"

    invoke-virtual {v2, v3}, Lo/ahp;->b(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lo/ahP;->g:Z

    .line 621
    iget-object v2, v1, Lo/ahP;->a:Lo/ahp;

    invoke-virtual {v2, v11}, Lo/ahp;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, v1, Lo/ahP;->a:Lo/ahp;

    invoke-virtual {v2, v11}, Lo/ahp;->b(Ljava/lang/String;)Z

    move-result v2

    goto :goto_10

    :cond_15
    const/4 v2, 0x0

    :goto_10
    iput-boolean v2, v1, Lo/ahP;->h:Z

    .line 624
    iget-object v2, v1, Lo/ahP;->f:Ljava/lang/Long;

    if-eqz v2, :cond_17

    iget-object v2, v1, Lo/ahP;->f:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v2, v19

    if-ltz v4, :cond_16

    iget-object v2, v1, Lo/ahP;->f:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v2, v21

    if-gtz v4, :cond_16

    goto :goto_11

    .line 625
    :cond_16
    new-instance v2, Lcom/netflix/msl/MslMessageException;

    sget-object v3, Lo/agz;->cB:Lo/agz;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lo/ahP;->a:Lo/ahp;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/netflix/msl/MslMessageException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw v2

    .line 628
    :cond_17
    :goto_11
    iget-object v2, v1, Lo/ahP;->a:Lo/ahp;

    move-object/from16 v11, v18

    invoke-virtual {v2, v11}, Lo/ahp;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 629
    iget-object v2, v1, Lo/ahP;->a:Lo/ahp;

    invoke-virtual {v2, v11, v9}, Lo/ahp;->d(Ljava/lang/String;Lo/aho;)Lo/ahp;

    move-result-object v2

    .line 630
    new-instance v3, Lo/ahL;

    invoke-direct {v3, v2}, Lo/ahL;-><init>(Lo/ahp;)V

    iput-object v3, v1, Lo/ahP;->l:Lo/ahL;

    goto :goto_12

    :cond_18
    const/4 v2, 0x0

    .line 632
    iput-object v2, v1, Lo/ahP;->l:Lo/ahL;

    .line 636
    :goto_12
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 637
    iget-object v3, v1, Lo/ahP;->a:Lo/ahp;

    move-object/from16 v12, v17

    invoke-virtual {v3, v12}, Lo/ahp;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 638
    iget-object v3, v1, Lo/ahP;->a:Lo/ahp;

    invoke-virtual {v3, v12}, Lo/ahp;->a(Ljava/lang/String;)Lo/ahm;

    move-result-object v3

    const/4 v4, 0x0

    .line 639
    :goto_13
    invoke-virtual {v3}, Lo/ahm;->c()I

    move-result v5

    if-ge v4, v5, :cond_19

    .line 640
    invoke-virtual {v3, v4, v9}, Lo/ahm;->d(ILo/aho;)Lo/ahp;

    move-result-object v5

    invoke-static {v8, v5}, Lo/ahz;->d(Lcom/netflix/msl/util/MslContext;Lo/ahp;)Lo/ahz;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 643
    :cond_19
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, v1, Lo/ahP;->k:Ljava/util/Set;

    .line 646
    invoke-virtual/range {p1 .. p1}, Lcom/netflix/msl/util/MslContext;->a()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 648
    iget-object v2, v1, Lo/ahP;->a:Lo/ahp;

    const-string v3, "peermastertoken"

    invoke-virtual {v2, v3}, Lo/ahp;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    new-instance v13, Lo/ahS;

    iget-object v2, v1, Lo/ahP;->a:Lo/ahp;

    const-string v3, "peermastertoken"

    .line 649
    invoke-virtual {v2, v3, v9}, Lo/ahp;->d(Ljava/lang/String;Lo/aho;)Lo/ahp;

    move-result-object v2

    invoke-direct {v13, v8, v2}, Lo/ahS;-><init>(Lcom/netflix/msl/util/MslContext;Lo/ahp;)V

    goto :goto_14

    :cond_1a
    const/4 v13, 0x0

    :goto_14
    iput-object v13, v1, Lo/ahP;->t:Lo/ahS;

    .line 654
    iget-object v2, v1, Lo/ahP;->n:Lo/ahA;

    if-eqz v2, :cond_1b

    .line 655
    iget-object v2, v1, Lo/ahP;->n:Lo/ahA;

    invoke-virtual {v2}, Lo/ahA;->d()Lo/ahS;

    move-result-object v2

    goto :goto_15

    .line 657
    :cond_1b
    iget-object v2, v1, Lo/ahP;->t:Lo/ahS;
    :try_end_1a
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_1a .. :try_end_1a} :catch_a
    .catch Lcom/netflix/msl/MslException; {:try_start_1a .. :try_end_1a} :catch_b

    :goto_15
    move-object v13, v2

    .line 662
    :try_start_1b
    iget-object v2, v1, Lo/ahP;->a:Lo/ahp;

    const-string v3, "peeruseridtoken"

    invoke-virtual {v2, v3}, Lo/ahp;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    new-instance v2, Lo/ahX;

    iget-object v3, v1, Lo/ahP;->a:Lo/ahp;

    const-string v4, "peeruseridtoken"

    .line 663
    invoke-virtual {v3, v4, v9}, Lo/ahp;->d(Ljava/lang/String;Lo/aho;)Lo/ahp;

    move-result-object v3

    invoke-direct {v2, v8, v3, v13}, Lo/ahX;-><init>(Lcom/netflix/msl/util/MslContext;Lo/ahp;Lo/ahS;)V

    goto :goto_16

    :cond_1c
    const/4 v2, 0x0

    :goto_16
    iput-object v2, v1, Lo/ahP;->s:Lo/ahX;
    :try_end_1b
    .catch Lcom/netflix/msl/MslException; {:try_start_1b .. :try_end_1b} :catch_9
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_1b .. :try_end_1b} :catch_a

    .line 672
    :try_start_1c
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 673
    iget-object v2, v1, Lo/ahP;->a:Lo/ahp;

    const-string v3, "peerservicetokens"

    invoke-virtual {v2, v3}, Lo/ahp;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 674
    iget-object v2, v1, Lo/ahP;->a:Lo/ahp;

    const-string v3, "peerservicetokens"

    invoke-virtual {v2, v3}, Lo/ahp;->a(Ljava/lang/String;)Lo/ahm;

    move-result-object v7

    const/4 v6, 0x0

    .line 675
    :goto_17
    invoke-virtual {v7}, Lo/ahm;->c()I

    move-result v2
    :try_end_1c
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_1c .. :try_end_1c} :catch_a
    .catch Lcom/netflix/msl/MslException; {:try_start_1c .. :try_end_1c} :catch_b

    if-ge v6, v2, :cond_1d

    .line 677
    :try_start_1d
    new-instance v5, Lo/ahV;

    invoke-virtual {v7, v6, v9}, Lo/ahm;->d(ILo/aho;)Lo/ahp;

    move-result-object v4

    iget-object v3, v1, Lo/ahP;->s:Lo/ahX;

    move-object v2, v5

    move-object/from16 v16, v3

    move-object/from16 v3, p1

    move-object v8, v5

    move-object v5, v13

    move/from16 v24, v6

    move-object/from16 v6, v16

    move-object/from16 v16, v7

    move-object/from16 v7, p6

    invoke-direct/range {v2 .. v7}, Lo/ahV;-><init>(Lcom/netflix/msl/util/MslContext;Lo/ahp;Lo/ahS;Lo/ahX;Ljava/util/Map;)V

    invoke-interface {v14, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1d
    .catch Lcom/netflix/msl/MslException; {:try_start_1d .. :try_end_1d} :catch_8
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_1d .. :try_end_1d} :catch_a

    add-int/lit8 v6, v24, 0x1

    move-object/from16 v8, p1

    move-object/from16 v7, v16

    goto :goto_17

    :catch_8
    move-exception v0

    move-object v2, v0

    .line 679
    :try_start_1e
    invoke-virtual {v2, v13}, Lcom/netflix/msl/MslException;->e(Lo/ahS;)Lcom/netflix/msl/MslException;

    move-result-object v3

    iget-object v4, v1, Lo/ahP;->s:Lo/ahX;

    invoke-virtual {v3, v4}, Lcom/netflix/msl/MslException;->b(Lo/ahX;)Lcom/netflix/msl/MslException;

    .line 680
    throw v2

    .line 684
    :cond_1d
    invoke-static {v14}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, v1, Lo/ahP;->p:Ljava/util/Set;

    const/4 v2, 0x0

    goto :goto_18

    :catch_9
    move-exception v0

    move-object v2, v0

    .line 666
    invoke-virtual {v2, v13}, Lcom/netflix/msl/MslException;->e(Lo/ahS;)Lcom/netflix/msl/MslException;

    .line 667
    throw v2

    :cond_1e
    const/4 v2, 0x0

    .line 686
    iput-object v2, v1, Lo/ahP;->t:Lo/ahS;

    .line 687
    iput-object v2, v1, Lo/ahP;->s:Lo/ahX;

    .line 688
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    iput-object v3, v1, Lo/ahP;->p:Ljava/util/Set;

    .line 692
    :goto_18
    iget-object v3, v1, Lo/ahP;->o:Lo/aie;

    if-eqz v3, :cond_1f

    iget-object v3, v1, Lo/ahP;->a:Lo/ahp;

    iget-object v4, v1, Lo/ahP;->o:Lo/aie;

    invoke-virtual {v3, v15, v4}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 693
    :cond_1f
    iget-object v3, v1, Lo/ahP;->m:Lo/ahX;

    if-eqz v3, :cond_20

    iget-object v3, v1, Lo/ahP;->a:Lo/ahp;

    iget-object v4, v1, Lo/ahP;->m:Lo/ahX;

    move-object/from16 v5, v26

    invoke-virtual {v3, v5, v4}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 694
    :cond_20
    iget-object v3, v1, Lo/ahP;->l:Lo/ahL;

    if-eqz v3, :cond_21

    iget-object v3, v1, Lo/ahP;->a:Lo/ahp;

    iget-object v4, v1, Lo/ahP;->l:Lo/ahL;

    invoke-virtual {v3, v11, v4}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 695
    :cond_21
    iget-object v3, v1, Lo/ahP;->n:Lo/ahA;

    if-eqz v3, :cond_22

    iget-object v3, v1, Lo/ahP;->a:Lo/ahp;

    iget-object v4, v1, Lo/ahP;->n:Lo/ahA;

    move-object/from16 v5, v25

    invoke-virtual {v3, v5, v4}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 696
    :cond_22
    iget-object v3, v1, Lo/ahP;->l:Lo/ahL;

    if-eqz v3, :cond_23

    iget-object v2, v1, Lo/ahP;->l:Lo/ahL;

    invoke-virtual {v2}, Lo/ahL;->b()Ljava/util/Set;

    move-result-object v13

    goto :goto_19

    :cond_23
    move-object v13, v2

    .line 697
    :goto_19
    invoke-virtual {v9, v13}, Lo/aho;->e(Ljava/util/Set;)Lo/ahn;

    move-result-object v2

    .line 698
    iget-object v3, v1, Lo/ahP;->k:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_24

    iget-object v3, v1, Lo/ahP;->a:Lo/ahp;

    iget-object v4, v1, Lo/ahP;->k:Ljava/util/Set;

    invoke-static {v9, v2, v4}, Lo/ahq;->d(Lo/aho;Lo/ahn;Ljava/util/Collection;)Lo/ahm;

    move-result-object v4

    invoke-virtual {v3, v12, v4}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 699
    :cond_24
    iget-object v3, v1, Lo/ahP;->r:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_25

    iget-object v3, v1, Lo/ahP;->a:Lo/ahp;

    iget-object v4, v1, Lo/ahP;->r:Ljava/util/Set;

    invoke-static {v9, v2, v4}, Lo/ahq;->d(Lo/aho;Lo/ahn;Ljava/util/Collection;)Lo/ahm;

    move-result-object v2

    move-object/from16 v4, v23

    invoke-virtual {v3, v4, v2}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;
    :try_end_1e
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_1e .. :try_end_1e} :catch_a
    .catch Lcom/netflix/msl/MslException; {:try_start_1e .. :try_end_1e} :catch_b

    :cond_25
    return-void

    :catch_a
    move-exception v0

    move-object/from16 v4, p3

    move-object/from16 v3, p4

    move-object v2, v0

    move-object v5, v10

    goto :goto_1a

    :catch_b
    move-exception v0

    move-object/from16 v3, p4

    move-object v2, v0

    .line 709
    invoke-virtual {v2, v3}, Lcom/netflix/msl/MslException;->e(Lo/ahS;)Lcom/netflix/msl/MslException;

    move-object/from16 v4, p3

    .line 710
    invoke-virtual {v2, v4}, Lcom/netflix/msl/MslException;->c(Lo/agQ;)Lcom/netflix/msl/MslException;

    .line 711
    iget-object v3, v1, Lo/ahP;->m:Lo/ahX;

    invoke-virtual {v2, v3}, Lcom/netflix/msl/MslException;->b(Lo/ahX;)Lcom/netflix/msl/MslException;

    .line 712
    iget-object v3, v1, Lo/ahP;->o:Lo/aie;

    invoke-virtual {v2, v3}, Lcom/netflix/msl/MslException;->a(Lo/aie;)Lcom/netflix/msl/MslException;

    .line 713
    iget-wide v3, v1, Lo/ahP;->i:J

    invoke-virtual {v2, v3, v4}, Lcom/netflix/msl/MslException;->a(J)Lcom/netflix/msl/MslException;

    .line 714
    throw v2

    :catch_c
    move-exception v0

    move-object/from16 v4, p3

    move-object/from16 v3, p4

    move-object v5, v10

    move-object v2, v0

    .line 702
    :goto_1a
    new-instance v6, Lcom/netflix/msl/MslEncodingException;

    sget-object v7, Lo/agz;->e:Lo/agz;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lo/ahP;->a:Lo/ahp;

    invoke-virtual {v5}, Lo/ahp;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v7, v5, v2}, Lcom/netflix/msl/MslEncodingException;-><init>(Lo/agz;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 703
    invoke-virtual {v6, v3}, Lcom/netflix/msl/MslEncodingException;->d(Lo/ahS;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v2

    .line 704
    invoke-virtual {v2, v4}, Lcom/netflix/msl/MslEncodingException;->d(Lo/agQ;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v2

    iget-object v3, v1, Lo/ahP;->m:Lo/ahX;

    .line 705
    invoke-virtual {v2, v3}, Lcom/netflix/msl/MslEncodingException;->d(Lo/ahX;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v2

    iget-object v3, v1, Lo/ahP;->o:Lo/aie;

    .line 706
    invoke-virtual {v2, v3}, Lcom/netflix/msl/MslEncodingException;->d(Lo/aie;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v2

    iget-wide v3, v1, Lo/ahP;->i:J

    .line 707
    invoke-virtual {v2, v3, v4}, Lcom/netflix/msl/MslEncodingException;->d(J)Lcom/netflix/msl/MslEncodingException;

    move-result-object v2

    throw v2

    :catch_d
    move-exception v0

    move-object/from16 v4, p3

    move-object/from16 v3, p4

    goto :goto_1b

    :catch_e
    move-exception v0

    move-object/from16 v4, p3

    move-object/from16 v3, p4

    move-object v5, v10

    goto :goto_1d

    :catch_f
    move-exception v0

    move-object v4, v9

    move-object v3, v10

    :goto_1b
    move-object v2, v0

    .line 611
    :goto_1c
    invoke-virtual {v2, v3}, Lcom/netflix/msl/MslException;->e(Lo/ahS;)Lcom/netflix/msl/MslException;

    .line 612
    invoke-virtual {v2, v4}, Lcom/netflix/msl/MslException;->c(Lo/agQ;)Lcom/netflix/msl/MslException;

    .line 613
    iget-wide v3, v1, Lo/ahP;->i:J

    invoke-virtual {v2, v3, v4}, Lcom/netflix/msl/MslException;->a(J)Lcom/netflix/msl/MslException;

    .line 614
    throw v2

    :catch_10
    move-exception v0

    move-object v4, v9

    move-object v3, v10

    move-object/from16 v5, v16

    :goto_1d
    move-object v2, v0

    .line 609
    :goto_1e
    new-instance v6, Lcom/netflix/msl/MslEncodingException;

    sget-object v7, Lo/agz;->e:Lo/agz;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lo/ahP;->a:Lo/ahp;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v7, v5, v2}, Lcom/netflix/msl/MslEncodingException;-><init>(Lo/agz;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v6, v3}, Lcom/netflix/msl/MslEncodingException;->d(Lo/ahS;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/netflix/msl/MslEncodingException;->d(Lo/agQ;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v2

    iget-wide v3, v1, Lo/ahP;->i:J

    invoke-virtual {v2, v3, v4}, Lcom/netflix/msl/MslEncodingException;->d(J)Lcom/netflix/msl/MslEncodingException;

    move-result-object v2

    throw v2

    :cond_26
    move-object v4, v9

    move-object v3, v10

    move-object/from16 v5, v16

    .line 539
    :try_start_1f
    new-instance v6, Lcom/netflix/msl/MslMessageException;

    sget-object v7, Lo/agz;->ci:Lo/agz;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lo/ahP;->a:Lo/ahp;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/netflix/msl/MslMessageException;-><init>(Lo/agz;Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Lcom/netflix/msl/MslMessageException;->a(Lo/ahS;)Lcom/netflix/msl/MslMessageException;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/netflix/msl/MslMessageException;->d(Lo/agQ;)Lcom/netflix/msl/MslMessageException;

    move-result-object v6

    throw v6
    :try_end_1f
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_1f .. :try_end_1f} :catch_11

    :catch_11
    move-exception v0

    goto :goto_1f

    :catch_12
    move-exception v0

    move-object v4, v9

    move-object v3, v10

    move-object/from16 v5, v16

    :goto_1f
    move-object v6, v0

    .line 541
    new-instance v7, Lcom/netflix/msl/MslEncodingException;

    sget-object v8, Lo/agz;->e:Lo/agz;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lo/aik;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v8, v2, v6}, Lcom/netflix/msl/MslEncodingException;-><init>(Lo/agz;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v7, v3}, Lcom/netflix/msl/MslEncodingException;->d(Lo/ahS;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/netflix/msl/MslEncodingException;->d(Lo/agQ;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v2

    throw v2

    :cond_27
    move-object v4, v9

    move-object v3, v10

    .line 500
    :try_start_20
    new-instance v2, Lcom/netflix/msl/MslEntityAuthException;

    sget-object v5, Lo/agz;->bb:Lo/agz;

    invoke-virtual {v13}, Lo/agT;->e()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Lcom/netflix/msl/MslEntityAuthException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw v2
    :try_end_20
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_20 .. :try_end_20} :catch_14
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_20 .. :try_end_20} :catch_13

    :catch_13
    move-exception v0

    goto :goto_20

    :catch_14
    move-exception v0

    goto :goto_21

    :catch_15
    move-exception v0

    move-object v4, v9

    move-object v3, v10

    :goto_20
    move-object v2, v0

    .line 506
    :try_start_21
    invoke-virtual {v2, v4}, Lcom/netflix/msl/MslEntityAuthException;->e(Lo/agQ;)Lcom/netflix/msl/MslEntityAuthException;

    .line 507
    throw v2

    :catch_16
    move-exception v0

    move-object v4, v9

    move-object v3, v10

    :goto_21
    move-object v2, v0

    .line 503
    invoke-virtual {v2, v4}, Lcom/netflix/msl/MslCryptoException;->d(Lo/agQ;)Lcom/netflix/msl/MslCryptoException;

    .line 504
    throw v2
    :try_end_21
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_21 .. :try_end_21} :catch_18
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_21 .. :try_end_21} :catch_17

    :catch_17
    move-exception v0

    goto :goto_22

    :catch_18
    move-exception v0

    goto :goto_24

    :catch_19
    move-exception v0

    move-object v4, v9

    move-object v3, v10

    :goto_22
    move-object v2, v0

    .line 527
    :goto_23
    invoke-virtual {v2, v3}, Lcom/netflix/msl/MslEntityAuthException;->b(Lo/ahS;)Lcom/netflix/msl/MslEntityAuthException;

    .line 528
    invoke-virtual {v2, v4}, Lcom/netflix/msl/MslEntityAuthException;->e(Lo/agQ;)Lcom/netflix/msl/MslEntityAuthException;

    .line 529
    throw v2

    :catch_1a
    move-exception v0

    move-object v4, v9

    move-object v3, v10

    :goto_24
    move-object v2, v0

    .line 523
    :goto_25
    invoke-virtual {v2, v3}, Lcom/netflix/msl/MslCryptoException;->b(Lo/ahS;)Lcom/netflix/msl/MslCryptoException;

    .line 524
    invoke-virtual {v2, v4}, Lcom/netflix/msl/MslCryptoException;->d(Lo/agQ;)Lcom/netflix/msl/MslCryptoException;

    .line 525
    throw v2
.end method


# virtual methods
.method public a()Lo/ahU;
    .locals 1

    .line 745
    iget-object v0, p0, Lo/ahP;->q:Lo/ahU;

    return-object v0
.end method

.method public a(Lo/aho;Lo/ahn;)[B
    .locals 5

    .line 900
    iget-object v0, p0, Lo/ahP;->e:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 901
    iget-object p1, p0, Lo/ahP;->e:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1

    .line 904
    :cond_0
    iget-object v0, p0, Lo/ahP;->a:Lo/ahp;

    invoke-virtual {p1, v0, p2}, Lo/aho;->c(Lo/ahp;Lo/ahn;)[B

    move-result-object v0

    .line 907
    :try_start_0
    iget-object v1, p0, Lo/ahP;->b:Lo/agM;

    invoke-virtual {v1, v0, p1, p2}, Lo/agM;->e([BLo/aho;Lo/ahn;)[B

    move-result-object v0
    :try_end_0
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_0 .. :try_end_0} :catch_1

    .line 913
    :try_start_1
    iget-object v1, p0, Lo/ahP;->b:Lo/agM;

    invoke-virtual {v1, v0, p1, p2}, Lo/agM;->c([BLo/aho;Lo/ahn;)[B

    move-result-object v1
    :try_end_1
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_1 .. :try_end_1} :catch_0

    .line 919
    invoke-virtual {p1}, Lo/aho;->b()Lo/ahp;

    move-result-object v2

    .line 920
    iget-object v3, p0, Lo/ahP;->c:Lo/ahS;

    if-eqz v3, :cond_1

    const-string v4, "mastertoken"

    .line 921
    invoke-virtual {v2, v4, v3}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    goto :goto_0

    .line 923
    :cond_1
    iget-object v3, p0, Lo/ahP;->d:Lo/agQ;

    const-string v4, "entityauthdata"

    invoke-virtual {v2, v4, v3}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    :goto_0
    const-string v3, "headerdata"

    .line 924
    invoke-virtual {v2, v3, v0}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    const-string v0, "signature"

    .line 925
    invoke-virtual {v2, v0, v1}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 926
    invoke-virtual {p1, v2, p2}, Lo/aho;->c(Lo/ahp;Lo/ahn;)[B

    move-result-object p1

    .line 929
    iget-object v0, p0, Lo/ahP;->e:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :catch_0
    move-exception p1

    .line 915
    new-instance p2, Lcom/netflix/msl/io/MslEncoderException;

    const-string v0, "Error signging the header data."

    invoke-direct {p2, v0, p1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 909
    new-instance p2, Lcom/netflix/msl/io/MslEncoderException;

    const-string v0, "Error encrypting the header data."

    invoke-direct {p2, v0, p1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public b()Lo/agQ;
    .locals 1

    .line 755
    iget-object v0, p0, Lo/ahP;->d:Lo/agQ;

    return-object v0
.end method

.method public c()Lo/agM;
    .locals 1

    .line 735
    iget-object v0, p0, Lo/ahP;->b:Lo/agM;

    return-object v0
.end method

.method public d()Ljava/util/Date;
    .locals 6

    .line 772
    iget-object v0, p0, Lo/ahP;->j:Ljava/lang/Long;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public e()Lo/ahS;
    .locals 1

    .line 765
    iget-object v0, p0, Lo/ahP;->c:Lo/ahS;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 939
    :cond_0
    instance-of v1, p1, Lo/ahP;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 940
    :cond_1
    check-cast p1, Lo/ahP;

    .line 941
    iget-object v1, p0, Lo/ahP;->c:Lo/ahS;

    if-eqz v1, :cond_2

    iget-object v3, p1, Lo/ahP;->c:Lo/ahS;

    invoke-virtual {v1, v3}, Lo/ahS;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lo/ahP;->d:Lo/agQ;

    if-eqz v1, :cond_14

    iget-object v3, p1, Lo/ahP;->d:Lo/agQ;

    .line 942
    invoke-virtual {v1, v3}, Lo/agQ;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    :cond_3
    iget-object v1, p0, Lo/ahP;->j:Ljava/lang/Long;

    if-eqz v1, :cond_4

    iget-object v3, p1, Lo/ahP;->j:Ljava/lang/Long;

    .line 943
    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    iget-object v1, p0, Lo/ahP;->j:Ljava/lang/Long;

    if-nez v1, :cond_14

    iget-object v1, p1, Lo/ahP;->j:Ljava/lang/Long;

    if-nez v1, :cond_14

    :cond_5
    iget-wide v3, p0, Lo/ahP;->i:J

    iget-wide v5, p1, Lo/ahP;->i:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_14

    iget-object v1, p0, Lo/ahP;->f:Ljava/lang/Long;

    if-eqz v1, :cond_6

    iget-object v3, p1, Lo/ahP;->f:Ljava/lang/Long;

    .line 946
    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    iget-object v1, p0, Lo/ahP;->f:Ljava/lang/Long;

    if-nez v1, :cond_14

    iget-object v1, p1, Lo/ahP;->f:Ljava/lang/Long;

    if-nez v1, :cond_14

    :cond_7
    iget-boolean v1, p0, Lo/ahP;->g:Z

    iget-boolean v3, p1, Lo/ahP;->g:Z

    if-ne v1, v3, :cond_14

    iget-boolean v1, p0, Lo/ahP;->h:Z

    iget-boolean v3, p1, Lo/ahP;->h:Z

    if-ne v1, v3, :cond_14

    iget-object v1, p0, Lo/ahP;->l:Lo/ahL;

    if-eqz v1, :cond_8

    iget-object v3, p1, Lo/ahP;->l:Lo/ahL;

    .line 950
    invoke-virtual {v1, v3}, Lo/ahL;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    iget-object v1, p0, Lo/ahP;->l:Lo/ahL;

    iget-object v3, p1, Lo/ahP;->l:Lo/ahL;

    if-ne v1, v3, :cond_14

    :cond_9
    iget-object v1, p0, Lo/ahP;->k:Ljava/util/Set;

    iget-object v3, p1, Lo/ahP;->k:Ljava/util/Set;

    .line 952
    invoke-interface {v1, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lo/ahP;->n:Lo/ahA;

    if-eqz v1, :cond_a

    iget-object v3, p1, Lo/ahP;->n:Lo/ahA;

    .line 953
    invoke-virtual {v1, v3}, Lo/ahA;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    iget-object v1, p0, Lo/ahP;->n:Lo/ahA;

    iget-object v3, p1, Lo/ahP;->n:Lo/ahA;

    if-ne v1, v3, :cond_14

    :cond_b
    iget-object v1, p0, Lo/ahP;->o:Lo/aie;

    if-eqz v1, :cond_c

    iget-object v3, p1, Lo/ahP;->o:Lo/aie;

    .line 955
    invoke-virtual {v1, v3}, Lo/aie;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    :cond_c
    iget-object v1, p0, Lo/ahP;->o:Lo/aie;

    iget-object v3, p1, Lo/ahP;->o:Lo/aie;

    if-ne v1, v3, :cond_14

    :cond_d
    iget-object v1, p0, Lo/ahP;->m:Lo/ahX;

    if-eqz v1, :cond_e

    iget-object v3, p1, Lo/ahP;->m:Lo/ahX;

    .line 957
    invoke-virtual {v1, v3}, Lo/ahX;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    :cond_e
    iget-object v1, p0, Lo/ahP;->m:Lo/ahX;

    iget-object v3, p1, Lo/ahP;->m:Lo/ahX;

    if-ne v1, v3, :cond_14

    :cond_f
    iget-object v1, p0, Lo/ahP;->r:Ljava/util/Set;

    iget-object v3, p1, Lo/ahP;->r:Ljava/util/Set;

    .line 959
    invoke-interface {v1, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lo/ahP;->t:Lo/ahS;

    if-eqz v1, :cond_10

    iget-object v3, p1, Lo/ahP;->t:Lo/ahS;

    .line 960
    invoke-virtual {v1, v3}, Lo/ahS;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    :cond_10
    iget-object v1, p0, Lo/ahP;->t:Lo/ahS;

    iget-object v3, p1, Lo/ahP;->t:Lo/ahS;

    if-ne v1, v3, :cond_14

    :cond_11
    iget-object v1, p0, Lo/ahP;->s:Lo/ahX;

    if-eqz v1, :cond_12

    iget-object v3, p1, Lo/ahP;->s:Lo/ahX;

    .line 962
    invoke-virtual {v1, v3}, Lo/ahX;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    :cond_12
    iget-object v1, p0, Lo/ahP;->s:Lo/ahX;

    iget-object v3, p1, Lo/ahP;->s:Lo/ahX;

    if-ne v1, v3, :cond_14

    :cond_13
    iget-object v1, p0, Lo/ahP;->p:Ljava/util/Set;

    iget-object p1, p1, Lo/ahP;->p:Ljava/util/Set;

    .line 964
    invoke-interface {v1, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    goto :goto_0

    :cond_14
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Z
    .locals 1

    .line 793
    iget-boolean v0, p0, Lo/ahP;->g:Z

    return v0
.end method

.method public g()J
    .locals 2

    .line 779
    iget-wide v0, p0, Lo/ahP;->i:J

    return-wide v0
.end method

.method public h()Lo/ahL;
    .locals 1

    .line 807
    iget-object v0, p0, Lo/ahP;->l:Lo/ahL;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 972
    iget-object v0, p0, Lo/ahP;->c:Lo/ahS;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/ahS;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/ahP;->d:Lo/agQ;

    invoke-virtual {v0}, Lo/agQ;->hashCode()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lo/ahP;->j:Ljava/lang/Long;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 973
    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    xor-int/2addr v0, v1

    iget-wide v3, p0, Lo/ahP;->i:J

    .line 974
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lo/ahP;->f:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 975
    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    xor-int/2addr v0, v1

    iget-boolean v1, p0, Lo/ahP;->g:Z

    .line 976
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-boolean v1, p0, Lo/ahP;->h:Z

    .line 977
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lo/ahP;->l:Lo/ahL;

    if-eqz v1, :cond_3

    .line 978
    invoke-virtual {v1}, Lo/ahL;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    xor-int/2addr v0, v1

    iget-object v1, p0, Lo/ahP;->k:Ljava/util/Set;

    .line 979
    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lo/ahP;->n:Lo/ahA;

    if-eqz v1, :cond_4

    .line 980
    invoke-virtual {v1}, Lo/ahA;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    xor-int/2addr v0, v1

    iget-object v1, p0, Lo/ahP;->o:Lo/aie;

    if-eqz v1, :cond_5

    .line 981
    invoke-virtual {v1}, Lo/aie;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    xor-int/2addr v0, v1

    iget-object v1, p0, Lo/ahP;->m:Lo/ahX;

    if-eqz v1, :cond_6

    .line 982
    invoke-virtual {v1}, Lo/ahX;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    xor-int/2addr v0, v1

    iget-object v1, p0, Lo/ahP;->r:Ljava/util/Set;

    .line 983
    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lo/ahP;->t:Lo/ahS;

    if-eqz v1, :cond_7

    .line 984
    invoke-virtual {v1}, Lo/ahS;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    :goto_7
    xor-int/2addr v0, v1

    iget-object v1, p0, Lo/ahP;->s:Lo/ahX;

    if-eqz v1, :cond_8

    .line 985
    invoke-virtual {v1}, Lo/ahX;->hashCode()I

    move-result v2

    :cond_8
    xor-int/2addr v0, v2

    iget-object v1, p0, Lo/ahP;->p:Ljava/util/Set;

    .line 986
    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public i()Z
    .locals 1

    .line 800
    iget-boolean v0, p0, Lo/ahP;->h:Z

    return v0
.end method

.method public j()Ljava/lang/Long;
    .locals 1

    .line 786
    iget-object v0, p0, Lo/ahP;->f:Ljava/lang/Long;

    return-object v0
.end method

.method public k()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lo/ahz;",
            ">;"
        }
    .end annotation

    .line 814
    iget-object v0, p0, Lo/ahP;->k:Ljava/util/Set;

    return-object v0
.end method

.method public l()Lo/aie;
    .locals 1

    .line 832
    iget-object v0, p0, Lo/ahP;->o:Lo/aie;

    return-object v0
.end method

.method public m()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lo/ahV;",
            ">;"
        }
    .end annotation

    .line 854
    iget-object v0, p0, Lo/ahP;->r:Ljava/util/Set;

    return-object v0
.end method

.method public n()Lo/ahA;
    .locals 1

    .line 821
    iget-object v0, p0, Lo/ahP;->n:Lo/ahA;

    return-object v0
.end method

.method public o()Lo/ahX;
    .locals 1

    .line 842
    iget-object v0, p0, Lo/ahP;->m:Lo/ahX;

    return-object v0
.end method

.method public p()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lo/ahV;",
            ">;"
        }
    .end annotation

    .line 891
    iget-object v0, p0, Lo/ahP;->p:Ljava/util/Set;

    return-object v0
.end method

.method public q()Lo/ahS;
    .locals 1

    .line 865
    iget-object v0, p0, Lo/ahP;->t:Lo/ahS;

    return-object v0
.end method

.method public r()Lo/ahX;
    .locals 1

    .line 877
    iget-object v0, p0, Lo/ahP;->s:Lo/ahX;

    return-object v0
.end method
