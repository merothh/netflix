.class public Lo/ahK;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final l:[B


# instance fields
.field protected a:Z

.field protected b:Z

.field protected c:Lo/ahS;

.field protected d:J

.field protected e:Lo/ahB$TaskDescription;

.field protected f:Lo/ahX;

.field protected final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/ahz;",
            ">;"
        }
    .end annotation
.end field

.field protected h:Z

.field protected i:Lo/ahL;

.field protected j:Lo/aie;

.field protected k:Lo/ahX;

.field protected final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/ahV;",
            ">;"
        }
    .end annotation
.end field

.field protected final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/ahV;",
            ">;"
        }
    .end annotation
.end field

.field protected o:Lo/ahS;

.field private final p:Lcom/netflix/msl/util/MslContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 57
    sput-object v0, Lo/ahK;->l:[B

    return-void
.end method

.method protected constructor <init>(Lcom/netflix/msl/util/MslContext;)V
    .locals 2

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 836
    iput-boolean v0, p0, Lo/ahK;->a:Z

    .line 838
    iput-boolean v0, p0, Lo/ahK;->b:Z

    .line 840
    iput-boolean v0, p0, Lo/ahK;->h:Z

    .line 844
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/ahK;->g:Ljava/util/Set;

    const/4 v0, 0x0

    .line 846
    iput-object v0, p0, Lo/ahK;->j:Lo/aie;

    .line 848
    iput-object v0, p0, Lo/ahK;->f:Lo/ahX;

    .line 850
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lo/ahK;->m:Ljava/util/Map;

    .line 853
    iput-object v0, p0, Lo/ahK;->o:Lo/ahS;

    .line 855
    iput-object v0, p0, Lo/ahK;->k:Lo/ahX;

    .line 857
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/ahK;->n:Ljava/util/Map;

    .line 93
    iput-object p1, p0, Lo/ahK;->p:Lcom/netflix/msl/util/MslContext;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Lo/ahS;Lo/ahX;)V
    .locals 6

    .line 127
    invoke-static {p1}, Lo/ain;->d(Lcom/netflix/msl/util/MslContext;)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lo/ahK;-><init>(Lcom/netflix/msl/util/MslContext;Lo/ahS;Lo/ahX;J)V

    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Lo/ahS;Lo/ahX;J)V
    .locals 13

    move-object v12, p0

    move-wide/from16 v2, p4

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 836
    iput-boolean v0, v12, Lo/ahK;->a:Z

    .line 838
    iput-boolean v0, v12, Lo/ahK;->b:Z

    .line 840
    iput-boolean v0, v12, Lo/ahK;->h:Z

    .line 844
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v12, Lo/ahK;->g:Ljava/util/Set;

    const/4 v0, 0x0

    .line 846
    iput-object v0, v12, Lo/ahK;->j:Lo/aie;

    .line 848
    iput-object v0, v12, Lo/ahK;->f:Lo/ahX;

    .line 850
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v12, Lo/ahK;->m:Ljava/util/Map;

    .line 853
    iput-object v0, v12, Lo/ahK;->o:Lo/ahS;

    .line 855
    iput-object v0, v12, Lo/ahK;->k:Lo/ahX;

    .line 857
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v12, Lo/ahK;->n:Ljava/util/Map;

    move-object v1, p1

    .line 109
    iput-object v1, v12, Lo/ahK;->p:Lcom/netflix/msl/util/MslContext;

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    const-wide/high16 v4, 0x20000000000000L

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    .line 112
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->d()Lo/ahL;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p4

    move-object v5, p2

    move-object/from16 v6, p3

    .line 113
    invoke-virtual/range {v0 .. v11}, Lo/ahK;->a(Lcom/netflix/msl/util/MslContext;JLo/ahL;Lo/ahS;Lo/ahX;Ljava/util/Set;Lo/ahS;Lo/ahX;Ljava/util/Set;Lo/ahB$TaskDescription;)V

    return-void

    .line 111
    :cond_0
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Message ID "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " is outside the valid range."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(J)J
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_1

    const-wide/high16 v2, 0x20000000000000L

    cmp-long v4, p0, v2

    if-gtz v4, :cond_1

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    :goto_0
    return-wide v0

    .line 69
    :cond_1
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " is outside the valid range."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lo/ahK;
    .locals 1

    .line 622
    iget-object v0, p0, Lo/ahK;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a(Z)Lo/ahK;
    .locals 0

    .line 380
    iput-boolean p1, p0, Lo/ahK;->b:Z

    .line 381
    iget-boolean p1, p0, Lo/ahK;->b:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 382
    iput-boolean p1, p0, Lo/ahK;->h:Z

    :cond_0
    return-object p0
.end method

.method protected a(Lcom/netflix/msl/util/MslContext;Lo/agQ;Lo/ahS;Lo/ahP$StateListAnimator;Lo/ahP$Application;)Lo/ahP;
    .locals 7

    .line 321
    new-instance v6, Lo/ahP;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lo/ahP;-><init>(Lcom/netflix/msl/util/MslContext;Lo/agQ;Lo/ahS;Lo/ahP$StateListAnimator;Lo/ahP$Application;)V

    return-object v6
.end method

.method public a()Lo/ahS;
    .locals 1

    .line 220
    iget-object v0, p0, Lo/ahK;->c:Lo/ahS;

    return-object v0
.end method

.method protected a(Lcom/netflix/msl/util/MslContext;JLo/ahL;Lo/ahS;Lo/ahX;Ljava/util/Set;Lo/ahS;Lo/ahX;Ljava/util/Set;Lo/ahB$TaskDescription;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/util/MslContext;",
            "J",
            "Lo/ahL;",
            "Lo/ahS;",
            "Lo/ahX;",
            "Ljava/util/Set<",
            "Lo/ahV;",
            ">;",
            "Lo/ahS;",
            "Lo/ahX;",
            "Ljava/util/Set<",
            "Lo/ahV;",
            ">;",
            "Lo/ahB$TaskDescription;",
            ")V"
        }
    .end annotation

    .line 154
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->a()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p8, :cond_0

    if-nez p9, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    new-instance p1, Lcom/netflix/msl/MslInternalException;

    const-string p2, "Cannot set peer master token or peer user ID token when not in peer-to-peer mode."

    invoke-direct {p1, p2}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 158
    :cond_1
    :goto_0
    iput-wide p2, p0, Lo/ahK;->d:J

    .line 159
    iput-object p4, p0, Lo/ahK;->i:Lo/ahL;

    .line 160
    iput-object p5, p0, Lo/ahK;->c:Lo/ahS;

    .line 161
    iput-object p6, p0, Lo/ahK;->f:Lo/ahX;

    .line 162
    iput-object p11, p0, Lo/ahK;->e:Lo/ahB$TaskDescription;

    if-eqz p11, :cond_2

    .line 167
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->a()Z

    move-result p2

    if-nez p2, :cond_2

    .line 168
    iget-object p2, p11, Lo/ahB$TaskDescription;->c:Lo/ahA;

    invoke-virtual {p2}, Lo/ahA;->d()Lo/ahS;

    move-result-object p5

    .line 175
    :cond_2
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->f()Lo/aim;

    move-result-object p2

    invoke-interface {p2, p5, p6}, Lo/aim;->b(Lo/ahS;Lo/ahX;)Ljava/util/Set;

    move-result-object p2

    .line 176
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/ahV;

    .line 177
    iget-object p4, p0, Lo/ahK;->m:Ljava/util/Map;

    invoke-virtual {p3}, Lo/ahV;->c()Ljava/lang/String;

    move-result-object p5

    invoke-interface {p4, p5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    if-eqz p7, :cond_4

    .line 179
    invoke-interface {p7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/ahV;

    .line 180
    iget-object p4, p0, Lo/ahK;->m:Ljava/util/Map;

    invoke-virtual {p3}, Lo/ahV;->c()Ljava/lang/String;

    move-result-object p5

    invoke-interface {p4, p5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 184
    :cond_4
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->a()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 185
    iput-object p8, p0, Lo/ahK;->o:Lo/ahS;

    .line 186
    iput-object p9, p0, Lo/ahK;->k:Lo/ahX;

    if-eqz p11, :cond_5

    .line 192
    iget-object p2, p11, Lo/ahB$TaskDescription;->c:Lo/ahA;

    invoke-virtual {p2}, Lo/ahA;->d()Lo/ahS;

    move-result-object p2

    goto :goto_3

    .line 194
    :cond_5
    iget-object p2, p0, Lo/ahK;->o:Lo/ahS;

    .line 198
    :goto_3
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->f()Lo/aim;

    move-result-object p1

    invoke-interface {p1, p2, p9}, Lo/aim;->b(Lo/ahS;Lo/ahX;)Ljava/util/Set;

    move-result-object p1

    .line 199
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/ahV;

    .line 200
    iget-object p3, p0, Lo/ahK;->n:Ljava/util/Map;

    invoke-virtual {p2}, Lo/ahV;->c()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    if-eqz p10, :cond_7

    .line 202
    invoke-interface {p10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/ahV;

    .line 203
    iget-object p3, p0, Lo/ahK;->n:Ljava/util/Map;

    invoke-virtual {p2}, Lo/ahV;->c()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_7
    return-void
.end method

.method public a(Lo/ahS;Lo/ahX;)V
    .locals 4

    .line 690
    iget-object v0, p0, Lo/ahK;->p:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Lcom/netflix/msl/util/MslContext;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 693
    :cond_0
    new-instance p1, Lcom/netflix/msl/MslInternalException;

    const-string p2, "Peer master token cannot be null when setting peer user ID token."

    invoke-direct {p1, p2}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 694
    invoke-virtual {p2, p1}, Lo/ahX;->e(Lo/ahS;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 695
    :cond_2
    new-instance v0, Lcom/netflix/msl/MslMessageException;

    sget-object v1, Lo/agz;->aB:Lo/agz;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "; mt "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslMessageException;-><init>(Lo/agz;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/netflix/msl/MslMessageException;->a(Lo/ahS;)Lcom/netflix/msl/MslMessageException;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/netflix/msl/MslMessageException;->d(Lo/ahX;)Lcom/netflix/msl/MslMessageException;

    move-result-object p1

    throw p1

    .line 700
    :cond_3
    :goto_1
    :try_start_0
    iget-object v0, p0, Lo/ahK;->p:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Lcom/netflix/msl/util/MslContext;->f()Lo/aim;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lo/aim;->b(Lo/ahS;Lo/ahX;)Ljava/util/Set;

    move-result-object v0
    :try_end_0
    .catch Lcom/netflix/msl/MslException; {:try_start_0 .. :try_end_0} :catch_0

    .line 708
    iget-object v1, p0, Lo/ahK;->n:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 709
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/ahV;

    .line 710
    invoke-virtual {v2}, Lo/ahV;->f()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, p2}, Lo/ahV;->e(Lo/ahX;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 711
    iget-object v3, p0, Lo/ahK;->n:Ljava/util/Map;

    invoke-virtual {v2}, Lo/ahV;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 714
    :cond_5
    invoke-virtual {v2}, Lo/ahV;->a()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, p1}, Lo/ahV;->c(Lo/ahS;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 715
    iget-object v3, p0, Lo/ahK;->n:Ljava/util/Map;

    invoke-virtual {v2}, Lo/ahV;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 722
    :cond_6
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ahV;

    .line 723
    iget-object v2, p0, Lo/ahK;->n:Ljava/util/Map;

    invoke-virtual {v1}, Lo/ahV;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 724
    iget-object v2, p0, Lo/ahK;->n:Ljava/util/Map;

    invoke-virtual {v1}, Lo/ahV;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 728
    :cond_8
    iput-object p2, p0, Lo/ahK;->k:Lo/ahX;

    .line 729
    iput-object p1, p0, Lo/ahK;->o:Lo/ahS;

    return-void

    :catch_0
    move-exception p1

    .line 704
    new-instance p2, Lcom/netflix/msl/MslInternalException;

    const-string v0, "Invalid peer master token and user ID token combination despite proper check."

    invoke-direct {p2, v0, p1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 691
    :cond_9
    new-instance p1, Lcom/netflix/msl/MslInternalException;

    const-string p2, "Cannot set peer master token or peer user ID token when not in peer-to-peer mode."

    invoke-direct {p1, p2}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lo/ahz;)Lo/ahK;
    .locals 1

    .line 544
    iget-object v0, p0, Lo/ahK;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b(Z)Lo/ahK;
    .locals 0

    .line 403
    iput-boolean p1, p0, Lo/ahK;->h:Z

    .line 404
    iget-boolean p1, p0, Lo/ahK;->h:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 405
    iput-boolean p1, p0, Lo/ahK;->a:Z

    const/4 p1, 0x1

    .line 406
    iput-boolean p1, p0, Lo/ahK;->b:Z

    :cond_0
    return-object p0
.end method

.method public b()Z
    .locals 2

    .line 252
    iget-object v0, p0, Lo/ahK;->p:Lcom/netflix/msl/util/MslContext;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/msl/util/MslContext;->d(Lcom/netflix/msl/util/MslContext$ReauthCode;)Lo/agQ;

    move-result-object v0

    invoke-virtual {v0}, Lo/agQ;->b()Lo/agT;

    move-result-object v0

    .line 253
    iget-object v1, p0, Lo/ahK;->c:Lo/ahS;

    if-nez v1, :cond_2

    iget-object v1, p0, Lo/ahK;->p:Lcom/netflix/msl/util/MslContext;

    .line 254
    invoke-virtual {v1}, Lcom/netflix/msl/util/MslContext;->a()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lo/ahK;->e:Lo/ahB$TaskDescription;

    if-nez v1, :cond_2

    .line 255
    :cond_0
    invoke-virtual {v0}, Lo/agT;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public c()Lo/ahB$TaskDescription;
    .locals 1

    .line 235
    iget-object v0, p0, Lo/ahK;->e:Lo/ahB$TaskDescription;

    return-object v0
.end method

.method public d(Z)Lo/ahK;
    .locals 0

    .line 358
    iput-boolean p1, p0, Lo/ahK;->a:Z

    .line 359
    iget-boolean p1, p0, Lo/ahK;->a:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 360
    iput-boolean p1, p0, Lo/ahK;->h:Z

    :cond_0
    return-object p0
.end method

.method public d()Lo/ahX;
    .locals 1

    .line 228
    iget-object v0, p0, Lo/ahK;->f:Lo/ahX;

    return-object v0
.end method

.method public d(Lo/ahS;Lo/ahX;)V
    .locals 4

    if-eqz p2, :cond_1

    .line 429
    invoke-virtual {p2, p1}, Lo/ahX;->e(Lo/ahS;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 430
    :cond_0
    new-instance p1, Lcom/netflix/msl/MslInternalException;

    const-string p2, "User ID token must be bound to master token."

    invoke-direct {p1, p2}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 434
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/ahK;->e:Lo/ahB$TaskDescription;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/ahK;->p:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Lcom/netflix/msl/util/MslContext;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 435
    :cond_2
    new-instance p1, Lcom/netflix/msl/MslInternalException;

    const-string p2, "Attempt to set message builder master token when key exchange data exists as a trusted network server."

    invoke-direct {p1, p2}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 440
    :cond_3
    :goto_1
    :try_start_0
    iget-object v0, p0, Lo/ahK;->p:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Lcom/netflix/msl/util/MslContext;->f()Lo/aim;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lo/aim;->b(Lo/ahS;Lo/ahX;)Ljava/util/Set;

    move-result-object v0
    :try_end_0
    .catch Lcom/netflix/msl/MslException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    iget-object v1, p0, Lo/ahK;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 449
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/ahV;

    .line 450
    invoke-virtual {v2}, Lo/ahV;->f()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, p2}, Lo/ahV;->e(Lo/ahX;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 451
    :cond_5
    invoke-virtual {v2}, Lo/ahV;->a()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, p1}, Lo/ahV;->c(Lo/ahS;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 453
    :cond_6
    iget-object v3, p0, Lo/ahK;->m:Ljava/util/Map;

    invoke-virtual {v2}, Lo/ahV;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 461
    :cond_7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ahV;

    .line 462
    iget-object v2, p0, Lo/ahK;->m:Ljava/util/Map;

    invoke-virtual {v1}, Lo/ahV;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 465
    :cond_8
    iput-object p1, p0, Lo/ahK;->c:Lo/ahS;

    .line 466
    iput-object p2, p0, Lo/ahK;->f:Lo/ahX;

    .line 467
    iget-object p1, p0, Lo/ahK;->f:Lo/ahX;

    if-eqz p1, :cond_9

    const/4 p1, 0x0

    .line 468
    iput-object p1, p0, Lo/ahK;->j:Lo/aie;

    :cond_9
    return-void

    :catch_0
    move-exception p1

    .line 444
    new-instance p2, Lcom/netflix/msl/MslInternalException;

    const-string v0, "Invalid master token and user ID token combination despite checking above."

    invoke-direct {p2, v0, p1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public e(Lo/aie;)Lo/ahK;
    .locals 0

    .line 480
    iput-object p1, p0, Lo/ahK;->j:Lo/aie;

    return-object p0
.end method

.method public e(Lo/ahU;)V
    .locals 3

    .line 505
    iget-object v0, p0, Lo/ahK;->p:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Lcom/netflix/msl/util/MslContext;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/ahK;->f:Lo/ahX;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lo/ahK;->p:Lcom/netflix/msl/util/MslContext;

    .line 506
    invoke-virtual {v0}, Lcom/netflix/msl/util/MslContext;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/ahK;->k:Lo/ahX;

    if-nez v0, :cond_1

    goto :goto_0

    .line 508
    :cond_1
    new-instance p1, Lcom/netflix/msl/MslInternalException;

    const-string v0, "User ID token or peer user ID token already exists for the remote user."

    invoke-direct {p1, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 514
    :cond_2
    :goto_0
    iget-object v0, p0, Lo/ahK;->e:Lo/ahB$TaskDescription;

    if-eqz v0, :cond_3

    .line 515
    iget-object v0, v0, Lo/ahB$TaskDescription;->c:Lo/ahA;

    invoke-virtual {v0}, Lo/ahA;->d()Lo/ahS;

    move-result-object v0

    goto :goto_1

    .line 517
    :cond_3
    iget-object v0, p0, Lo/ahK;->p:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Lcom/netflix/msl/util/MslContext;->a()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lo/ahK;->c:Lo/ahS;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lo/ahK;->o:Lo/ahS;

    :goto_1
    if-eqz v0, :cond_6

    .line 525
    iget-object v1, p0, Lo/ahK;->p:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v1}, Lcom/netflix/msl/util/MslContext;->g()Lo/ahZ;

    move-result-object v1

    .line 526
    iget-object v2, p0, Lo/ahK;->p:Lcom/netflix/msl/util/MslContext;

    invoke-interface {v1, v2, p1, v0}, Lo/ahZ;->e(Lcom/netflix/msl/util/MslContext;Lo/ahU;Lo/ahS;)Lo/ahX;

    move-result-object p1

    .line 529
    iget-object v0, p0, Lo/ahK;->p:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Lcom/netflix/msl/util/MslContext;->a()Z

    move-result v0

    if-nez v0, :cond_5

    .line 530
    iput-object p1, p0, Lo/ahK;->f:Lo/ahX;

    const/4 p1, 0x0

    .line 531
    iput-object p1, p0, Lo/ahK;->j:Lo/aie;

    goto :goto_2

    .line 533
    :cond_5
    iput-object p1, p0, Lo/ahK;->k:Lo/ahX;

    :goto_2
    return-void

    .line 522
    :cond_6
    new-instance p1, Lcom/netflix/msl/MslInternalException;

    const-string v0, "User ID token or peer user ID token cannot be created because no corresponding master token exists."

    invoke-direct {p1, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e()Z
    .locals 2

    .line 243
    iget-object v0, p0, Lo/ahK;->p:Lcom/netflix/msl/util/MslContext;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/msl/util/MslContext;->d(Lcom/netflix/msl/util/MslContext$ReauthCode;)Lo/agQ;

    move-result-object v0

    invoke-virtual {v0}, Lo/agQ;->b()Lo/agT;

    move-result-object v0

    .line 244
    iget-object v1, p0, Lo/ahK;->c:Lo/ahS;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lo/agT;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public f()Lo/ahP;
    .locals 19

    move-object/from16 v6, p0

    .line 293
    iget-object v0, v6, Lo/ahK;->e:Lo/ahB$TaskDescription;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lo/ahB$TaskDescription;->c:Lo/ahA;

    move-object v15, v0

    goto :goto_0

    :cond_0
    move-object v15, v1

    .line 294
    :goto_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, v6, Lo/ahK;->m:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 296
    iget-boolean v2, v6, Lo/ahK;->a:Z

    if-eqz v2, :cond_2

    .line 297
    iget-object v2, v6, Lo/ahK;->c:Lo/ahS;

    if-eqz v2, :cond_1

    .line 299
    iget-object v2, v6, Lo/ahK;->p:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v2}, Lcom/netflix/msl/util/MslContext;->f()Lo/aim;

    move-result-object v2

    iget-object v3, v6, Lo/ahK;->c:Lo/ahS;

    invoke-interface {v2, v3}, Lo/aim;->d(Lo/ahS;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object v10, v2

    goto :goto_1

    .line 298
    :cond_1
    new-instance v0, Lcom/netflix/msl/MslMessageException;

    sget-object v1, Lo/agz;->cA:Lo/agz;

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslMessageException;-><init>(Lo/agz;)V

    throw v0

    :cond_2
    move-object v10, v1

    .line 303
    :goto_1
    new-instance v4, Lo/ahP$StateListAnimator;

    iget-wide v8, v6, Lo/ahK;->d:J

    iget-boolean v11, v6, Lo/ahK;->b:Z

    iget-boolean v12, v6, Lo/ahK;->h:Z

    iget-object v13, v6, Lo/ahK;->i:Lo/ahL;

    iget-object v14, v6, Lo/ahK;->g:Ljava/util/Set;

    iget-object v2, v6, Lo/ahK;->j:Lo/aie;

    iget-object v3, v6, Lo/ahK;->f:Lo/ahX;

    move-object v7, v4

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v0

    invoke-direct/range {v7 .. v18}, Lo/ahP$StateListAnimator;-><init>(JLjava/lang/Long;ZZLo/ahL;Ljava/util/Set;Lo/ahA;Lo/aie;Lo/ahX;Ljava/util/Set;)V

    .line 304
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, v6, Lo/ahK;->n:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 305
    new-instance v5, Lo/ahP$Application;

    iget-object v2, v6, Lo/ahK;->o:Lo/ahS;

    iget-object v3, v6, Lo/ahK;->k:Lo/ahX;

    invoke-direct {v5, v2, v3, v0}, Lo/ahP$Application;-><init>(Lo/ahS;Lo/ahX;Ljava/util/Set;)V

    .line 307
    iget-object v2, v6, Lo/ahK;->p:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v2, v1}, Lcom/netflix/msl/util/MslContext;->d(Lcom/netflix/msl/util/MslContext$ReauthCode;)Lo/agQ;

    move-result-object v3

    iget-object v7, v6, Lo/ahK;->c:Lo/ahS;

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v7

    invoke-virtual/range {v0 .. v5}, Lo/ahK;->a(Lcom/netflix/msl/util/MslContext;Lo/agQ;Lo/ahS;Lo/ahP$StateListAnimator;Lo/ahP$Application;)Lo/ahP;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 2

    .line 272
    iget-object v0, p0, Lo/ahK;->p:Lcom/netflix/msl/util/MslContext;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/msl/util/MslContext;->d(Lcom/netflix/msl/util/MslContext$ReauthCode;)Lo/agQ;

    move-result-object v0

    invoke-virtual {v0}, Lo/agQ;->b()Lo/agT;

    move-result-object v0

    .line 273
    iget-object v1, p0, Lo/ahK;->c:Lo/ahS;

    if-nez v1, :cond_2

    iget-object v1, p0, Lo/ahK;->p:Lcom/netflix/msl/util/MslContext;

    .line 274
    invoke-virtual {v1}, Lcom/netflix/msl/util/MslContext;->a()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lo/ahK;->e:Lo/ahB$TaskDescription;

    if-nez v1, :cond_2

    .line 275
    :cond_0
    invoke-virtual {v0}, Lo/agT;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public h()Z
    .locals 1

    .line 346
    iget-boolean v0, p0, Lo/ahK;->a:Z

    return v0
.end method

.method public i()Z
    .locals 1

    .line 368
    iget-boolean v0, p0, Lo/ahK;->b:Z

    return v0
.end method

.method public j()Z
    .locals 2

    .line 263
    iget-object v0, p0, Lo/ahK;->p:Lcom/netflix/msl/util/MslContext;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/msl/util/MslContext;->d(Lcom/netflix/msl/util/MslContext$ReauthCode;)Lo/agQ;

    move-result-object v0

    invoke-virtual {v0}, Lo/agQ;->b()Lo/agT;

    move-result-object v0

    .line 264
    iget-object v1, p0, Lo/ahK;->c:Lo/ahS;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lo/agT;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public k()Lo/ahX;
    .locals 1

    .line 673
    iget-object v0, p0, Lo/ahK;->k:Lo/ahX;

    return-object v0
.end method

.method public o()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lo/ahV;",
            ">;"
        }
    .end annotation

    .line 659
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lo/ahK;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
