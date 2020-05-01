.class public Lcom/netflix/msl/msg/MslControl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/msl/msg/MslControl$LoaderManager;,
        Lcom/netflix/msl/msg/MslControl$Dialog;,
        Lcom/netflix/msl/msg/MslControl$Receive;,
        Lcom/netflix/msl/msg/MslControl$VoiceInteractor;,
        Lcom/netflix/msl/msg/MslControl$Activity;,
        Lcom/netflix/msl/msg/MslControl$Application;,
        Lcom/netflix/msl/msg/MslControl$FragmentManager;,
        Lcom/netflix/msl/msg/MslControl$TaskDescription;,
        Lcom/netflix/msl/msg/MslControl$ActionBar;,
        Lcom/netflix/msl/msg/MslControl$StateListAnimator;,
        Lcom/netflix/msl/msg/MslControl$TaskStackBuilder;,
        Lcom/netflix/msl/msg/MslControl$Fragment;,
        Lcom/netflix/msl/msg/MslControl$PendingIntent;,
        Lcom/netflix/msl/msg/MslControl$ApplicationError;
    }
.end annotation


# instance fields
.field private a:Lo/ahE;

.field private final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/netflix/msl/util/MslContext;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lo/ahS;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Lo/ahH;

.field private final d:Ljava/util/concurrent/ExecutorService;

.field private final e:Lo/ahG;

.field private final h:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/netflix/msl/msg/MslControl$Fragment;",
            "Ljava/util/concurrent/locks/ReadWriteLock;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lo/ahS;


# direct methods
.method public constructor <init>(ILo/ahH;Lo/ahG;)V
    .locals 16

    move-object/from16 v1, p0

    const-string v2, "Unexpected exception when constructing dummy master token."

    .line 804
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4107
    iput-object v0, v1, Lcom/netflix/msl/msg/MslControl;->a:Lo/ahE;

    .line 4114
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, v1, Lcom/netflix/msl/msg/MslControl;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4122
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, v1, Lcom/netflix/msl/msg/MslControl;->h:Ljava/util/concurrent/ConcurrentHashMap;

    if-ltz p1, :cond_3

    if-eqz p2, :cond_0

    move-object/from16 v3, p2

    goto :goto_0

    .line 809
    :cond_0
    new-instance v3, Lo/ahH;

    invoke-direct {v3}, Lo/ahH;-><init>()V

    :goto_0
    iput-object v3, v1, Lcom/netflix/msl/msg/MslControl;->c:Lo/ahH;

    if-eqz p3, :cond_1

    move-object/from16 v3, p3

    goto :goto_1

    .line 812
    :cond_1
    new-instance v3, Lcom/netflix/msl/msg/MslControl$ActionBar;

    invoke-direct {v3, v0}, Lcom/netflix/msl/msg/MslControl$ActionBar;-><init>(Lcom/netflix/msl/msg/MslControl$3;)V

    :goto_1
    iput-object v3, v1, Lcom/netflix/msl/msg/MslControl;->e:Lo/ahG;

    if-lez p1, :cond_2

    .line 816
    invoke-static/range {p1 .. p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    iput-object v3, v1, Lcom/netflix/msl/msg/MslControl;->d:Ljava/util/concurrent/ExecutorService;

    goto :goto_2

    .line 818
    :cond_2
    new-instance v3, Lcom/netflix/msl/msg/MslControl$TaskStackBuilder;

    invoke-direct {v3, v0}, Lcom/netflix/msl/msg/MslControl$TaskStackBuilder;-><init>(Lcom/netflix/msl/msg/MslControl$3;)V

    iput-object v3, v1, Lcom/netflix/msl/msg/MslControl;->d:Ljava/util/concurrent/ExecutorService;

    .line 823
    :goto_2
    :try_start_0
    new-instance v5, Lcom/netflix/msl/msg/MslControl$StateListAnimator;

    invoke-direct {v5, v0}, Lcom/netflix/msl/msg/MslControl$StateListAnimator;-><init>(Lcom/netflix/msl/msg/MslControl$3;)V

    .line 824
    invoke-virtual {v5}, Lcom/netflix/msl/util/MslContext;->h()Lo/aho;

    move-result-object v0

    invoke-virtual {v0}, Lo/aho;->b()Lo/ahp;

    move-result-object v12

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 826
    new-instance v14, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v14, v0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 827
    new-instance v15, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "HmacSHA256"

    invoke-direct {v15, v0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 828
    new-instance v0, Lo/ahS;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    const-wide/16 v8, 0x1

    const-wide/16 v10, 0x1

    const-string v13, "dummy"

    move-object v4, v0

    invoke-direct/range {v4 .. v15}, Lo/ahS;-><init>(Lcom/netflix/msl/util/MslContext;Ljava/util/Date;Ljava/util/Date;JJLo/ahp;Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V

    iput-object v0, v1, Lcom/netflix/msl/msg/MslControl;->j:Lo/ahS;
    :try_end_0
    .catch Lcom/netflix/msl/MslEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 832
    new-instance v3, Lcom/netflix/msl/MslInternalException;

    invoke-direct {v3, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v0

    .line 830
    new-instance v3, Lcom/netflix/msl/MslInternalException;

    invoke-direct {v3, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 806
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Number of threads must be non-negative."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/InputStream;Ljava/io/OutputStream;Lo/ahK;Lcom/netflix/msl/msg/MslControl$Receive;ZI)Lcom/netflix/msl/msg/MslControl$Dialog;
    .locals 13

    move-object v8, p0

    move-object v9, p1

    move-object/from16 v0, p6

    .line 1916
    new-instance v10, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v10, v1, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(IZ)V

    move/from16 v1, p8

    int-to-long v6, v1

    const/4 v11, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v10

    move-object/from16 v5, p5

    .line 1919
    :try_start_0
    invoke-direct/range {v1 .. v7}, Lcom/netflix/msl/msg/MslControl;->e(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/util/concurrent/BlockingQueue;Lo/ahK;J)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v12, p5

    .line 1937
    :try_start_1
    invoke-virtual {v12, v7}, Lo/ahK;->a(Z)Lo/ahK;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p7

    .line 1938
    invoke-direct/range {v1 .. v6}, Lcom/netflix/msl/msg/MslControl;->d(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/OutputStream;Lo/ahK;Z)Lcom/netflix/msl/msg/MslControl$VoiceInteractor;

    move-result-object v1

    .line 1944
    iget-object v2, v1, Lcom/netflix/msl/msg/MslControl$VoiceInteractor;->e:Lo/ahM;

    invoke-virtual {v2}, Lo/ahM;->a()Lo/ahP;

    move-result-object v2

    .line 1945
    invoke-virtual {v2}, Lo/ahP;->k()Ljava/util/Set;

    move-result-object v3

    .line 1946
    sget-object v4, Lcom/netflix/msl/msg/MslControl$Receive;->b:Lcom/netflix/msl/msg/MslControl$Receive;

    if-eq v0, v4, :cond_0

    iget-boolean v4, v1, Lcom/netflix/msl/msg/MslControl$VoiceInteractor;->d:Z

    if-nez v4, :cond_0

    sget-object v4, Lcom/netflix/msl/msg/MslControl$Receive;->c:Lcom/netflix/msl/msg/MslControl$Receive;

    if-ne v0, v4, :cond_1

    .line 1948
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1949
    invoke-virtual {v2}, Lo/ahP;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lo/ahP;->e()Lo/ahS;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lo/ahP;->l()Lo/aie;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, p2

    move-object/from16 v3, p3

    .line 1951
    invoke-direct {p0, p1, p2, v3, v2}, Lcom/netflix/msl/msg/MslControl;->a(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/InputStream;Lo/ahP;)Lo/ahO;

    move-result-object v11

    move/from16 v0, p7

    .line 1952
    invoke-virtual {v11, v0}, Lo/ahO;->a(Z)V

    .line 1955
    invoke-virtual {v11}, Lo/ahO;->b()Lo/ahF;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1957
    invoke-direct {p0, p1, v2, v0}, Lcom/netflix/msl/msg/MslControl;->e(Lcom/netflix/msl/util/MslContext;Lo/ahP;Lo/ahF;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    if-eqz v7, :cond_2

    .line 1962
    invoke-direct {p0, p1, v10, v11}, Lcom/netflix/msl/msg/MslControl;->a(Lcom/netflix/msl/util/MslContext;Ljava/util/concurrent/BlockingQueue;Lo/ahO;)V

    .line 1965
    :cond_2
    invoke-virtual/range {p5 .. p5}, Lo/ahK;->a()Lo/ahS;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/netflix/msl/msg/MslControl;->d(Lcom/netflix/msl/util/MslContext;Lo/ahS;)V

    .line 1969
    new-instance v0, Lcom/netflix/msl/msg/MslControl$Dialog;

    invoke-direct {v0, v11, v1}, Lcom/netflix/msl/msg/MslControl$Dialog;-><init>(Lo/ahO;Lcom/netflix/msl/msg/MslControl$VoiceInteractor;)V

    return-object v0

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 1962
    invoke-direct {p0, p1, v10, v11}, Lcom/netflix/msl/msg/MslControl;->a(Lcom/netflix/msl/util/MslContext;Ljava/util/concurrent/BlockingQueue;Lo/ahO;)V

    .line 1965
    :cond_3
    invoke-virtual/range {p5 .. p5}, Lo/ahK;->a()Lo/ahS;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/netflix/msl/msg/MslControl;->d(Lcom/netflix/msl/util/MslContext;Lo/ahS;)V

    .line 1966
    throw v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    move-object/from16 v12, p5

    .line 1928
    invoke-virtual/range {p5 .. p5}, Lo/ahK;->a()Lo/ahS;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/netflix/msl/msg/MslControl;->d(Lcom/netflix/msl/util/MslContext;Lo/ahS;)V

    .line 1929
    throw v0

    :catch_2
    move-object/from16 v12, p5

    .line 1922
    invoke-virtual/range {p5 .. p5}, Lo/ahK;->a()Lo/ahS;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/netflix/msl/msg/MslControl;->d(Lcom/netflix/msl/util/MslContext;Lo/ahS;)V

    return-object v11
.end method

.method private a(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/InputStream;Lo/ahP;)Lo/ahO;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p4

    .line 1703
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    if-eqz v2, :cond_0

    .line 1705
    invoke-virtual/range {p4 .. p4}, Lo/ahP;->k()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1706
    :cond_0
    invoke-interface/range {p2 .. p2}, Lcom/netflix/msl/msg/MessageContext;->c()Ljava/util/Map;

    move-result-object v4

    .line 1707
    iget-object v5, v1, Lcom/netflix/msl/msg/MslControl;->a:Lo/ahE;

    move-object/from16 v6, p3

    if-eqz v5, :cond_1

    invoke-interface {v5, v6}, Lo/ahE;->e(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v5

    goto :goto_0

    :cond_1
    move-object v5, v6

    .line 1708
    :goto_0
    iget-object v6, v1, Lcom/netflix/msl/msg/MslControl;->c:Lo/ahH;

    invoke-virtual {v6, v0, v5, v3, v4}, Lo/ahH;->a(Lcom/netflix/msl/util/MslContext;Ljava/io/InputStream;Ljava/util/Set;Ljava/util/Map;)Lo/ahO;

    move-result-object v3

    .line 1711
    invoke-virtual {v3}, Lo/ahO;->a()Lo/ahP;

    move-result-object v4

    .line 1712
    invoke-virtual {v3}, Lo/ahO;->b()Lo/ahF;

    move-result-object v5

    .line 1713
    invoke-interface/range {p2 .. p2}, Lcom/netflix/msl/msg/MessageContext;->b()Lo/ahJ;

    move-result-object v6

    if-eqz v6, :cond_3

    if-eqz v4, :cond_2

    move-object v7, v4

    goto :goto_1

    :cond_2
    move-object v7, v5

    .line 1714
    :goto_1
    invoke-interface {v6, v7}, Lo/ahJ;->c(Lo/ahI;)V

    :cond_3
    const/4 v6, 0x0

    if-eqz v4, :cond_4

    .line 1724
    invoke-virtual {v4}, Lo/ahP;->e()Lo/ahS;

    move-result-object v7

    .line 1725
    invoke-virtual {v4}, Lo/ahP;->b()Lo/agQ;

    move-result-object v8

    .line 1726
    invoke-virtual {v4}, Lo/ahP;->o()Lo/ahX;

    move-result-object v9

    .line 1727
    invoke-virtual {v4}, Lo/ahP;->l()Lo/aie;

    move-result-object v10

    goto :goto_2

    .line 1730
    :cond_4
    invoke-virtual {v5}, Lo/ahF;->d()Lo/agQ;

    move-result-object v8

    move-object v7, v6

    move-object v9, v7

    move-object v10, v9

    :goto_2
    const-string v11, "; received "

    const-string v12, "expected "

    if-eqz v2, :cond_9

    if-eqz v5, :cond_5

    .line 1743
    :try_start_0
    invoke-virtual {v5}, Lo/ahF;->c()Lcom/netflix/msl/MslConstants$ResponseCode;

    move-result-object v6

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v6, v9

    move-object/from16 p3, v10

    goto/16 :goto_c

    :cond_5
    :goto_3
    if-nez v4, :cond_6

    .line 1744
    sget-object v13, Lcom/netflix/msl/MslConstants$ResponseCode;->e:Lcom/netflix/msl/MslConstants$ResponseCode;

    if-eq v6, v13, :cond_9

    sget-object v13, Lcom/netflix/msl/MslConstants$ResponseCode;->d:Lcom/netflix/msl/MslConstants$ResponseCode;

    if-eq v6, v13, :cond_9

    sget-object v13, Lcom/netflix/msl/MslConstants$ResponseCode;->c:Lcom/netflix/msl/MslConstants$ResponseCode;

    if-eq v6, v13, :cond_9

    sget-object v13, Lcom/netflix/msl/MslConstants$ResponseCode;->i:Lcom/netflix/msl/MslConstants$ResponseCode;

    if-eq v6, v13, :cond_9

    :cond_6
    if-eqz v4, :cond_7

    .line 1747
    invoke-virtual {v4}, Lo/ahP;->g()J

    move-result-wide v13

    goto :goto_4

    :cond_7
    invoke-virtual {v5}, Lo/ahF;->b()J

    move-result-wide v13

    .line 1748
    :goto_4
    invoke-virtual/range {p4 .. p4}, Lo/ahP;->g()J

    move-result-wide v15
    :try_end_0
    .catch Lcom/netflix/msl/MslException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v9

    move-object/from16 p3, v10

    :try_start_1
    invoke-static/range {v15 .. v16}, Lo/ahK;->a(J)J

    move-result-wide v9

    cmp-long v15, v13, v9

    if-nez v15, :cond_8

    goto :goto_5

    .line 1750
    :cond_8
    new-instance v0, Lcom/netflix/msl/MslMessageException;

    sget-object v2, Lo/agz;->cl:Lo/agz;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/netflix/msl/MslMessageException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw v0

    :cond_9
    move-object v6, v9

    move-object/from16 p3, v10

    .line 1755
    :goto_5
    invoke-interface/range {p2 .. p2}, Lcom/netflix/msl/msg/MessageContext;->e()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_d

    if-eqz v8, :cond_b

    .line 1760
    invoke-virtual {v8}, Lo/agQ;->c()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_b

    .line 1761
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    goto :goto_6

    .line 1762
    :cond_a
    new-instance v0, Lcom/netflix/msl/MslMessageException;

    sget-object v2, Lo/agz;->cL:Lo/agz;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/netflix/msl/MslMessageException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw v0

    .line 1767
    :cond_b
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/netflix/msl/util/MslContext;->a()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 1768
    invoke-virtual {v3}, Lo/ahO;->f()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_d

    .line 1769
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    goto :goto_7

    .line 1770
    :cond_c
    new-instance v0, Lcom/netflix/msl/MslMessageException;

    sget-object v2, Lo/agz;->cL:Lo/agz;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/netflix/msl/MslMessageException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_7
    if-eqz v4, :cond_13

    if-eqz v2, :cond_e

    .line 1778
    invoke-direct {v1, v0, v2, v3}, Lcom/netflix/msl/msg/MslControl;->e(Lcom/netflix/msl/util/MslContext;Lo/ahP;Lo/ahO;)V

    .line 1783
    :cond_e
    invoke-virtual {v4}, Lo/ahP;->n()Lo/ahA;

    move-result-object v9

    .line 1787
    invoke-virtual/range {p1 .. p1}, Lcom/netflix/msl/util/MslContext;->a()Z

    move-result v10

    if-nez v10, :cond_10

    if-eqz v9, :cond_f

    .line 1788
    invoke-virtual {v9}, Lo/ahA;->d()Lo/ahS;

    move-result-object v9

    goto :goto_8

    :cond_f
    invoke-virtual {v4}, Lo/ahP;->e()Lo/ahS;

    move-result-object v9

    .line 1789
    :goto_8
    invoke-virtual {v4}, Lo/ahP;->o()Lo/ahX;

    move-result-object v10

    .line 1790
    invoke-virtual {v4}, Lo/ahP;->m()Ljava/util/Set;

    move-result-object v11

    goto :goto_a

    :cond_10
    if-eqz v9, :cond_11

    .line 1792
    invoke-virtual {v9}, Lo/ahA;->d()Lo/ahS;

    move-result-object v9

    goto :goto_9

    :cond_11
    invoke-virtual {v4}, Lo/ahP;->q()Lo/ahS;

    move-result-object v9

    .line 1793
    :goto_9
    invoke-virtual {v4}, Lo/ahP;->r()Lo/ahX;

    move-result-object v10

    .line 1794
    invoke-virtual {v4}, Lo/ahP;->p()Ljava/util/Set;

    move-result-object v11

    .line 1799
    :goto_a
    invoke-interface/range {p2 .. p2}, Lcom/netflix/msl/msg/MessageContext;->h()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_12

    if-eqz v10, :cond_12

    .line 1800
    invoke-virtual {v10}, Lo/ahX;->a()Z

    move-result v13

    if-nez v13, :cond_12

    .line 1801
    invoke-virtual/range {p1 .. p1}, Lcom/netflix/msl/util/MslContext;->f()Lo/aim;

    move-result-object v13

    invoke-interface {v13, v12, v10}, Lo/aim;->a(Ljava/lang/String;Lo/ahX;)V

    .line 1804
    :cond_12
    invoke-static {v0, v9, v10, v11}, Lcom/netflix/msl/msg/MslControl;->d(Lcom/netflix/msl/util/MslContext;Lo/ahS;Lo/ahX;Ljava/util/Set;)V

    :cond_13
    if-eqz v4, :cond_14

    .line 1809
    invoke-virtual {v4}, Lo/ahP;->d()Ljava/util/Date;

    move-result-object v4

    goto :goto_b

    :cond_14
    invoke-virtual {v5}, Lo/ahF;->a()Ljava/util/Date;

    move-result-object v4

    :goto_b
    if-eqz v4, :cond_16

    if-nez v2, :cond_15

    .line 1810
    invoke-virtual/range {p1 .. p1}, Lcom/netflix/msl/util/MslContext;->a()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1811
    :cond_15
    invoke-virtual {v0, v4}, Lcom/netflix/msl/util/MslContext;->b(Ljava/util/Date;)V
    :try_end_1
    .catch Lcom/netflix/msl/MslException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_16
    return-object v3

    :catch_1
    move-exception v0

    .line 1813
    :goto_c
    invoke-virtual {v0, v7}, Lcom/netflix/msl/MslException;->e(Lo/ahS;)Lcom/netflix/msl/MslException;

    .line 1814
    invoke-virtual {v0, v8}, Lcom/netflix/msl/MslException;->c(Lo/agQ;)Lcom/netflix/msl/MslException;

    .line 1815
    invoke-virtual {v0, v6}, Lcom/netflix/msl/MslException;->b(Lo/ahX;)Lcom/netflix/msl/MslException;

    move-object/from16 v6, p3

    .line 1816
    invoke-virtual {v0, v6}, Lcom/netflix/msl/MslException;->a(Lo/aie;)Lcom/netflix/msl/MslException;

    .line 1817
    throw v0
.end method

.method private a(Lcom/netflix/msl/util/MslContext;Ljava/util/concurrent/BlockingQueue;Lo/ahO;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/util/MslContext;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lo/ahS;",
            ">;",
            "Lo/ahO;",
            ")V"
        }
    .end annotation

    .line 2186
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_6

    if-nez p3, :cond_0

    .line 2192
    iget-object p3, p0, Lcom/netflix/msl/msg/MslControl;->j:Lo/ahS;

    invoke-interface {p2, p3}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 2193
    iget-object p2, p0, Lcom/netflix/msl/msg/MslControl;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 2199
    :cond_0
    invoke-virtual {p3}, Lo/ahO;->a()Lo/ahP;

    move-result-object p3

    if-nez p3, :cond_1

    .line 2201
    iget-object p3, p0, Lcom/netflix/msl/msg/MslControl;->j:Lo/ahS;

    invoke-interface {p2, p3}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 2202
    iget-object p2, p0, Lcom/netflix/msl/msg/MslControl;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 2208
    :cond_1
    invoke-virtual {p3}, Lo/ahP;->n()Lo/ahA;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2210
    invoke-virtual {v0}, Lo/ahA;->d()Lo/ahS;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2215
    :cond_2
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2216
    invoke-virtual {p3}, Lo/ahP;->e()Lo/ahS;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 2218
    invoke-interface {p2, p3}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2220
    :cond_3
    iget-object p3, p0, Lcom/netflix/msl/msg/MslControl;->j:Lo/ahS;

    invoke-interface {p2, p3}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2226
    :cond_4
    invoke-virtual {p3}, Lo/ahP;->q()Lo/ahS;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 2228
    invoke-interface {p2, p3}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2230
    :cond_5
    iget-object p3, p0, Lcom/netflix/msl/msg/MslControl;->j:Lo/ahS;

    invoke-interface {p2, p3}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 2234
    :goto_0
    iget-object p2, p0, Lcom/netflix/msl/msg/MslControl;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 2187
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Attempt to release renewal lock that is not owned by this queue."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lcom/netflix/msl/util/MslContext;Lo/ahP;Lo/ahB$TaskDescription;)V
    .locals 2

    .line 991
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->f()Lo/aim;

    move-result-object v0

    .line 992
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->a()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p3, :cond_0

    .line 993
    iget-object v1, p3, Lo/ahB$TaskDescription;->c:Lo/ahA;

    .line 994
    iget-object p3, p3, Lo/ahB$TaskDescription;->b:Lo/agM;

    .line 995
    invoke-virtual {v1}, Lo/ahA;->d()Lo/ahS;

    move-result-object v1

    .line 996
    invoke-interface {v0, v1, p3}, Lo/aim;->e(Lo/ahS;Lo/agM;)V

    .line 1000
    invoke-virtual {p2}, Lo/ahP;->e()Lo/ahS;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/netflix/msl/msg/MslControl;->c(Lcom/netflix/msl/util/MslContext;Lo/ahS;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/InputStream;Ljava/io/OutputStream;Lo/ahK;Lcom/netflix/msl/msg/MslControl$Receive;ZI)Lcom/netflix/msl/msg/MslControl$Dialog;
    .locals 0

    .line 189
    invoke-direct/range {p0 .. p8}, Lcom/netflix/msl/msg/MslControl;->a(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/InputStream;Ljava/io/OutputStream;Lo/ahK;Lcom/netflix/msl/msg/MslControl$Receive;ZI)Lcom/netflix/msl/msg/MslControl$Dialog;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/OutputStream;Lo/ahK;Z)Lcom/netflix/msl/msg/MslControl$VoiceInteractor;
    .locals 0

    .line 189
    invoke-direct/range {p0 .. p5}, Lcom/netflix/msl/msg/MslControl;->d(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/OutputStream;Lo/ahK;Z)Lcom/netflix/msl/msg/MslControl$VoiceInteractor;

    move-result-object p0

    return-object p0
.end method

.method private b(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;)Lo/ahK;
    .locals 4

    .line 1083
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->f()Lo/aim;

    move-result-object v0

    .line 1086
    invoke-direct {p0, p1}, Lcom/netflix/msl/msg/MslControl;->b(Lcom/netflix/msl/util/MslContext;)Lo/ahS;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1093
    :try_start_0
    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->h()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1094
    invoke-interface {v0, v3}, Lo/aim;->c(Ljava/lang/String;)Lo/ahX;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 1095
    invoke-virtual {v0, v1}, Lo/ahX;->e(Lo/ahS;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v2, v0

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_2

    :catch_1
    move-exception p2

    goto :goto_3

    .line 1100
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl;->c:Lo/ahH;

    invoke-virtual {v0, p1, v1, v2}, Lo/ahH;->b(Lcom/netflix/msl/util/MslContext;Lo/ahS;Lo/ahX;)Lo/ahK;

    move-result-object v0

    .line 1101
    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->f()Z

    move-result p2

    invoke-virtual {v0, p2}, Lo/ahK;->d(Z)Lo/ahK;
    :try_end_0
    .catch Lcom/netflix/msl/MslException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1109
    :goto_2
    invoke-direct {p0, p1, v1}, Lcom/netflix/msl/msg/MslControl;->d(Lcom/netflix/msl/util/MslContext;Lo/ahS;)V

    .line 1110
    throw p2

    .line 1105
    :goto_3
    invoke-direct {p0, p1, v1}, Lcom/netflix/msl/msg/MslControl;->d(Lcom/netflix/msl/util/MslContext;Lo/ahS;)V

    .line 1106
    new-instance p1, Lcom/netflix/msl/MslInternalException;

    const-string v0, "User ID token not bound to master token despite internal check."

    invoke-direct {p1, v0, p2}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private b(Lcom/netflix/msl/util/MslContext;)Lo/ahS;
    .locals 5

    .line 883
    :goto_0
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->f()Lo/aim;

    move-result-object v0

    .line 884
    invoke-interface {v0}, Lo/aim;->e()Lo/ahS;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 888
    :cond_0
    new-instance v2, Lcom/netflix/msl/msg/MslControl$Fragment;

    invoke-direct {v2, p1, v1}, Lcom/netflix/msl/msg/MslControl$Fragment;-><init>(Lcom/netflix/msl/util/MslContext;Lo/ahS;)V

    .line 889
    new-instance v3, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 890
    iget-object v4, p0, Lcom/netflix/msl/msg/MslControl;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/locks/ReadWriteLock;

    if-eqz v4, :cond_1

    move-object v3, v4

    .line 892
    :cond_1
    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lockInterruptibly()V

    .line 898
    invoke-interface {v0}, Lo/aim;->e()Lo/ahS;

    move-result-object v0

    .line 899
    invoke-virtual {v1, v0}, Lo/ahS;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    .line 905
    :cond_2
    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 906
    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lockInterruptibly()V

    .line 907
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method

.method private c(Lcom/netflix/msl/util/MslContext;Lo/ahS;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 930
    :cond_0
    new-instance v0, Lcom/netflix/msl/msg/MslControl$Fragment;

    invoke-direct {v0, p1, p2}, Lcom/netflix/msl/msg/MslControl$Fragment;-><init>(Lcom/netflix/msl/util/MslContext;Lo/ahS;)V

    .line 931
    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 932
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/locks/ReadWriteLock;

    if-eqz v2, :cond_1

    .line 940
    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 941
    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    goto :goto_0

    .line 943
    :cond_1
    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    .line 945
    :goto_0
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lockInterruptibly()V

    .line 947
    :try_start_0
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->f()Lo/aim;

    move-result-object p1

    invoke-interface {p1, p2}, Lo/aim;->c(Lo/ahS;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 953
    iget-object p1, p0, Lcom/netflix/msl/msg/MslControl;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    .line 953
    iget-object p2, p0, Lcom/netflix/msl/msg/MslControl;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 955
    throw p1
.end method

.method static synthetic d(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MslControl$VoiceInteractor;Lo/ahF;)Lcom/netflix/msl/msg/MslControl$Activity;
    .locals 0

    .line 189
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/msl/msg/MslControl;->e(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MslControl$VoiceInteractor;Lo/ahF;)Lcom/netflix/msl/msg/MslControl$Activity;

    move-result-object p0

    return-object p0
.end method

.method private d(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/OutputStream;Lo/ahK;Z)Lcom/netflix/msl/msg/MslControl$VoiceInteractor;
    .locals 8

    .line 1541
    invoke-virtual {p4}, Lo/ahK;->a()Lo/ahS;

    move-result-object v0

    .line 1542
    invoke-virtual {p4}, Lo/ahK;->d()Lo/ahX;

    move-result-object v1

    .line 1543
    invoke-virtual {p4}, Lo/ahK;->k()Lo/ahX;

    move-result-object v2

    .line 1547
    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->h()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_2

    if-nez v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1552
    :goto_0
    invoke-virtual {p4}, Lo/ahK;->i()Z

    move-result v7

    invoke-interface {p2, v4, v7, v3}, Lcom/netflix/msl/msg/MessageContext;->d(Lcom/netflix/msl/msg/MessageContext$ReauthCode;ZZ)Lo/aie;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1556
    invoke-virtual {p4}, Lo/ahK;->e()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p4}, Lo/ahK;->j()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1557
    invoke-virtual {p4, v3}, Lo/ahK;->e(Lo/aie;)Lo/ahK;

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x0

    .line 1574
    :goto_2
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->a()Z

    move-result v7

    if-nez v7, :cond_3

    if-eqz v1, :cond_4

    .line 1575
    :cond_3
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->a()Z

    move-result v7

    if-eqz v7, :cond_5

    if-nez v2, :cond_5

    .line 1577
    :cond_4
    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->d()Lo/ahU;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1579
    invoke-virtual {p4, v2}, Lo/ahK;->e(Lo/ahU;)V

    .line 1583
    invoke-virtual {p4}, Lo/ahK;->d()Lo/ahX;

    move-result-object v1

    :cond_5
    if-nez v3, :cond_9

    .line 1595
    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->g()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p4}, Lo/ahK;->b()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1596
    :cond_6
    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->i()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p4}, Lo/ahK;->g()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1597
    :cond_7
    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->f()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p4}, Lo/ahK;->h()Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v0, :cond_9

    :cond_8
    const/4 v5, 0x1

    :cond_9
    xor-int/lit8 v2, v5, 0x1

    .line 1601
    invoke-virtual {p4, v2}, Lo/ahK;->b(Z)Lo/ahK;

    .line 1604
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1605
    invoke-virtual {p4}, Lo/ahK;->i()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1609
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->k()Ljava/util/Date;

    move-result-object v5

    if-eqz v0, :cond_a

    .line 1610
    invoke-virtual {v0, v5}, Lo/ahS;->d(Ljava/util/Date;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->f()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1611
    :cond_a
    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->a()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1612
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/ahz;

    .line 1613
    invoke-virtual {p4, v5}, Lo/ahK;->b(Lo/ahz;)Lo/ahK;

    goto :goto_3

    .line 1619
    :cond_b
    new-instance v3, Lo/ahQ;

    invoke-direct {v3, p1, p2, p4}, Lo/ahQ;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lo/ahK;)V

    .line 1620
    invoke-interface {p2, v3, v2}, Lcom/netflix/msl/msg/MessageContext;->e(Lo/ahQ;Z)V

    .line 1621
    invoke-virtual {p4}, Lo/ahK;->f()Lo/ahP;

    move-result-object v3

    .line 1624
    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->b()Lo/ahJ;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 1625
    invoke-interface {v5, v3}, Lo/ahJ;->a(Lo/ahI;)V

    .line 1630
    :cond_c
    invoke-virtual {p4}, Lo/ahK;->c()Lo/ahB$TaskDescription;

    move-result-object p4

    .line 1631
    invoke-direct {p0, p1, v3, p4}, Lcom/netflix/msl/msg/MslControl;->a(Lcom/netflix/msl/util/MslContext;Lo/ahP;Lo/ahB$TaskDescription;)V

    if-eqz p4, :cond_d

    .line 1634
    iget-object v0, p4, Lo/ahB$TaskDescription;->c:Lo/ahA;

    invoke-virtual {v0}, Lo/ahA;->d()Lo/ahS;

    move-result-object v0

    .line 1635
    :cond_d
    invoke-virtual {v3}, Lo/ahP;->m()Ljava/util/Set;

    move-result-object v5

    .line 1636
    invoke-static {p1, v0, v1, v5}, Lcom/netflix/msl/msg/MslControl;->d(Lcom/netflix/msl/util/MslContext;Lo/ahS;Lo/ahX;Ljava/util/Set;)V

    .line 1642
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->a()Z

    move-result v0

    if-nez v0, :cond_e

    if-eqz p4, :cond_e

    .line 1643
    iget-object p4, p4, Lo/ahB$TaskDescription;->b:Lo/agM;

    goto :goto_4

    .line 1645
    :cond_e
    invoke-virtual {v3}, Lo/ahP;->c()Lo/agM;

    move-result-object p4

    .line 1648
    :goto_4
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl;->a:Lo/ahE;

    if-eqz v0, :cond_f

    invoke-interface {v0, p3}, Lo/ahE;->c(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p3

    .line 1649
    :cond_f
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl;->c:Lo/ahH;

    invoke-virtual {v0, p1, p3, v3, p4}, Lo/ahH;->e(Lcom/netflix/msl/util/MslContext;Ljava/io/OutputStream;Lo/ahP;Lo/agM;)Lo/ahM;

    move-result-object p1

    .line 1650
    invoke-virtual {p1, p5}, Lo/ahM;->a(Z)V

    if-nez v2, :cond_10

    .line 1656
    invoke-interface {p2, p1}, Lcom/netflix/msl/msg/MessageContext;->b(Lo/ahM;)V

    .line 1659
    :cond_10
    new-instance p2, Lcom/netflix/msl/msg/MslControl$VoiceInteractor;

    invoke-direct {p2, p1, v2, v4}, Lcom/netflix/msl/msg/MslControl$VoiceInteractor;-><init>(Lo/ahM;ZLcom/netflix/msl/msg/MslControl$3;)V

    return-object p2
.end method

.method static synthetic d(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lo/ahP;)Lo/ahK;
    .locals 0

    .line 189
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/msl/msg/MslControl;->d(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lo/ahP;)Lo/ahK;

    move-result-object p0

    return-object p0
.end method

.method private d(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lo/ahP;)Lo/ahK;
    .locals 3

    .line 1150
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl;->c:Lo/ahH;

    invoke-virtual {v0, p1, p3}, Lo/ahH;->b(Lcom/netflix/msl/util/MslContext;Lo/ahP;)Lo/ahK;

    move-result-object v0

    .line 1151
    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Lo/ahK;->d(Z)Lo/ahK;

    .line 1159
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p3}, Lo/ahP;->n()Lo/ahA;

    move-result-object p3

    if-nez p3, :cond_0

    return-object v0

    .line 1172
    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/msl/msg/MslControl;->b(Lcom/netflix/msl/util/MslContext;)Lo/ahS;

    move-result-object p3

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    .line 1179
    :try_start_0
    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->h()Ljava/lang/String;

    move-result-object p2

    .line 1180
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->f()Lo/aim;

    move-result-object v2

    if-eqz p2, :cond_1

    .line 1181
    invoke-interface {v2, p2}, Lo/aim;->c(Ljava/lang/String;)Lo/ahX;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, v1

    :goto_0
    if-eqz p2, :cond_2

    .line 1182
    invoke-virtual {p2, p3}, Lo/ahX;->e(Lo/ahS;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v1, p2

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_2

    .line 1188
    :cond_2
    :goto_1
    invoke-virtual {v0, p3, v1}, Lo/ahK;->d(Lo/ahS;Lo/ahX;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1192
    :goto_2
    invoke-direct {p0, p1, p3}, Lcom/netflix/msl/msg/MslControl;->d(Lcom/netflix/msl/util/MslContext;Lo/ahS;)V

    .line 1193
    throw p2
.end method

.method static synthetic d(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lo/ahS;)V
    .locals 0

    .line 189
    invoke-direct {p0, p1, p2}, Lcom/netflix/msl/msg/MslControl;->d(Lcom/netflix/msl/util/MslContext;Lo/ahS;)V

    return-void
.end method

.method private d(Lcom/netflix/msl/util/MslContext;Lo/ahS;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 968
    new-instance v0, Lcom/netflix/msl/msg/MslControl$Fragment;

    invoke-direct {v0, p1, p2}, Lcom/netflix/msl/msg/MslControl$Fragment;-><init>(Lcom/netflix/msl/util/MslContext;Lo/ahS;)V

    .line 969
    iget-object p1, p0, Lcom/netflix/msl/msg/MslControl;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/locks/ReadWriteLock;

    if-eqz p1, :cond_0

    .line 973
    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_0
    return-void
.end method

.method private static d(Lcom/netflix/msl/util/MslContext;Lo/ahS;Lo/ahX;Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/util/MslContext;",
            "Lo/ahS;",
            "Lo/ahX;",
            "Ljava/util/Set<",
            "Lo/ahV;",
            ">;)V"
        }
    .end annotation

    .line 1048
    invoke-virtual {p0}, Lcom/netflix/msl/util/MslContext;->f()Lo/aim;

    move-result-object p0

    .line 1049
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1050
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ahV;

    .line 1053
    invoke-virtual {v1, p1}, Lo/ahV;->c(Lo/ahS;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lo/ahS;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1055
    :cond_0
    invoke-virtual {v1}, Lo/ahV;->e()[B

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1056
    array-length v2, v2

    if-nez v2, :cond_3

    .line 1057
    invoke-virtual {v1}, Lo/ahV;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lo/ahV;->a()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    move-object v3, p1

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    invoke-virtual {v1}, Lo/ahV;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v4, p2

    :cond_2
    invoke-interface {p0, v2, v3, v4}, Lo/aim;->c(Ljava/lang/String;Lo/ahS;Lo/ahX;)V

    goto :goto_0

    .line 1059
    :cond_3
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1061
    :cond_4
    invoke-interface {p0, v0}, Lo/aim;->d(Ljava/util/Set;)V

    return-void
.end method

.method protected static d(Ljava/lang/Throwable;)Z
    .locals 2

    .line 769
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :goto_0
    if-eqz p0, :cond_4

    .line 772
    instance-of v0, p0, Ljava/lang/InterruptedException;

    if-nez v0, :cond_3

    instance-of v0, p0, Ljava/io/InterruptedIOException;

    if-eqz v0, :cond_1

    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_3

    :cond_1
    instance-of v0, p0, Ljava/nio/channels/FileLockInterruptionException;

    if-nez v0, :cond_3

    instance-of v0, p0, Ljava/nio/channels/ClosedByInterruptException;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 779
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    :cond_3
    :goto_1
    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private e(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MslControl$VoiceInteractor;Lo/ahF;)Lcom/netflix/msl/msg/MslControl$Activity;
    .locals 11

    .line 1260
    iget-object v0, p3, Lcom/netflix/msl/msg/MslControl$VoiceInteractor;->e:Lo/ahM;

    invoke-virtual {v0}, Lo/ahM;->a()Lo/ahP;

    move-result-object v0

    .line 1261
    iget-object p3, p3, Lcom/netflix/msl/msg/MslControl$VoiceInteractor;->e:Lo/ahM;

    invoke-virtual {p3}, Lo/ahM;->b()Ljava/util/List;

    move-result-object p3

    .line 1262
    invoke-virtual {p4}, Lo/ahF;->c()Lcom/netflix/msl/MslConstants$ResponseCode;

    move-result-object v1

    .line 1263
    sget-object v2, Lcom/netflix/msl/msg/MslControl$3;->e:[I

    invoke-virtual {v1}, Lcom/netflix/msl/MslConstants$ResponseCode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    return-object v4

    .line 1392
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/netflix/msl/msg/MslControl;->b(Lcom/netflix/msl/util/MslContext;)Lo/ahS;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 1398
    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->h()Ljava/lang/String;

    move-result-object v1

    .line 1399
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->f()Lo/aim;

    move-result-object v2

    if-eqz v1, :cond_0

    .line 1400
    invoke-interface {v2, v1}, Lo/aim;->c(Ljava/lang/String;)Lo/ahX;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v4

    :goto_0
    if-eqz v1, :cond_1

    .line 1401
    invoke-virtual {v1, v7}, Lo/ahX;->e(Lo/ahS;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v4, v1

    :cond_1
    move-object v8, v4

    .line 1407
    invoke-virtual {p4}, Lo/ahF;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Lo/ahK;->a(J)J

    move-result-wide v9

    .line 1408
    new-instance p4, Lcom/netflix/msl/msg/MslControl$FragmentManager;

    invoke-direct {p4, p3, p2}, Lcom/netflix/msl/msg/MslControl$FragmentManager;-><init>(Ljava/util/List;Lcom/netflix/msl/msg/MessageContext;)V

    .line 1409
    iget-object v5, p0, Lcom/netflix/msl/msg/MslControl;->c:Lo/ahH;

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lo/ahH;->c(Lcom/netflix/msl/util/MslContext;Lo/ahS;Lo/ahX;J)Lo/ahK;

    move-result-object p2

    .line 1410
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1411
    invoke-virtual {v0}, Lo/ahP;->q()Lo/ahS;

    move-result-object p1

    .line 1412
    invoke-virtual {v0}, Lo/ahP;->r()Lo/ahX;

    move-result-object p3

    .line 1413
    invoke-virtual {p2, p1, p3}, Lo/ahK;->a(Lo/ahS;Lo/ahX;)V

    .line 1418
    :cond_2
    invoke-interface {p4}, Lcom/netflix/msl/msg/MessageContext;->f()Z

    move-result p1

    invoke-virtual {p2, p1}, Lo/ahK;->d(Z)Lo/ahK;

    .line 1419
    new-instance p1, Lcom/netflix/msl/msg/MslControl$Activity;

    invoke-direct {p1, p2, p4}, Lcom/netflix/msl/msg/MslControl$Activity;-><init>(Lo/ahK;Lcom/netflix/msl/msg/MessageContext;)V

    return-object p1

    .line 1349
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/netflix/msl/msg/MslControl;->b(Lcom/netflix/msl/util/MslContext;)Lo/ahS;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1355
    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->h()Ljava/lang/String;

    move-result-object v2

    .line 1356
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->f()Lo/aim;

    move-result-object v5

    if-eqz v2, :cond_3

    .line 1357
    invoke-interface {v5, v2}, Lo/aim;->c(Ljava/lang/String;)Lo/ahX;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v4

    :goto_1
    if-eqz v2, :cond_4

    .line 1358
    invoke-virtual {v2, v1}, Lo/ahX;->e(Lo/ahS;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v4, v2

    :cond_4
    move-object v7, v4

    .line 1364
    invoke-virtual {p4}, Lo/ahF;->b()J

    move-result-wide v4

    invoke-static {v4, v5}, Lo/ahK;->a(J)J

    move-result-wide v8

    .line 1365
    new-instance p4, Lcom/netflix/msl/msg/MslControl$FragmentManager;

    invoke-direct {p4, p3, p2}, Lcom/netflix/msl/msg/MslControl$FragmentManager;-><init>(Ljava/util/List;Lcom/netflix/msl/msg/MessageContext;)V

    .line 1366
    iget-object v4, p0, Lcom/netflix/msl/msg/MslControl;->c:Lo/ahH;

    move-object v5, p1

    move-object v6, v1

    invoke-virtual/range {v4 .. v9}, Lo/ahH;->c(Lcom/netflix/msl/util/MslContext;Lo/ahS;Lo/ahX;J)Lo/ahK;

    move-result-object p2

    .line 1367
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->a()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1368
    invoke-virtual {v0}, Lo/ahP;->q()Lo/ahS;

    move-result-object p1

    .line 1369
    invoke-virtual {v0}, Lo/ahP;->r()Lo/ahX;

    move-result-object p3

    .line 1370
    invoke-virtual {p2, p1, p3}, Lo/ahK;->a(Lo/ahS;Lo/ahX;)V

    .line 1379
    :cond_5
    invoke-virtual {v0}, Lo/ahP;->e()Lo/ahS;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1380
    invoke-virtual {p1, v1}, Lo/ahS;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1381
    :cond_6
    invoke-virtual {p2, v3}, Lo/ahK;->a(Z)Lo/ahK;

    .line 1382
    :cond_7
    invoke-interface {p4}, Lcom/netflix/msl/msg/MessageContext;->f()Z

    move-result p1

    invoke-virtual {p2, p1}, Lo/ahK;->d(Z)Lo/ahK;

    .line 1383
    new-instance p1, Lcom/netflix/msl/msg/MslControl$Activity;

    invoke-direct {p1, p2, p4}, Lcom/netflix/msl/msg/MslControl$Activity;-><init>(Lo/ahK;Lcom/netflix/msl/msg/MessageContext;)V

    return-object p1

    .line 1330
    :pswitch_2
    invoke-virtual {p4}, Lo/ahF;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Lo/ahK;->a(J)J

    move-result-wide v8

    .line 1331
    new-instance p4, Lcom/netflix/msl/msg/MslControl$FragmentManager;

    invoke-direct {p4, p3, p2}, Lcom/netflix/msl/msg/MslControl$FragmentManager;-><init>(Ljava/util/List;Lcom/netflix/msl/msg/MessageContext;)V

    .line 1332
    iget-object v4, p0, Lcom/netflix/msl/msg/MslControl;->c:Lo/ahH;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lo/ahH;->c(Lcom/netflix/msl/util/MslContext;Lo/ahS;Lo/ahX;J)Lo/ahK;

    move-result-object p2

    .line 1333
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->a()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1334
    invoke-virtual {v0}, Lo/ahP;->q()Lo/ahS;

    move-result-object p1

    .line 1335
    invoke-virtual {v0}, Lo/ahP;->r()Lo/ahX;

    move-result-object p3

    .line 1336
    invoke-virtual {p2, p1, p3}, Lo/ahK;->a(Lo/ahS;Lo/ahX;)V

    .line 1342
    :cond_8
    invoke-virtual {p2, v3}, Lo/ahK;->a(Z)Lo/ahK;

    .line 1343
    invoke-interface {p4}, Lcom/netflix/msl/msg/MessageContext;->f()Z

    move-result p1

    invoke-virtual {p2, p1}, Lo/ahK;->d(Z)Lo/ahK;

    .line 1344
    new-instance p1, Lcom/netflix/msl/msg/MslControl$Activity;

    invoke-direct {p1, p2, p4}, Lcom/netflix/msl/msg/MslControl$Activity;-><init>(Lo/ahK;Lcom/netflix/msl/msg/MessageContext;)V

    return-object p1

    .line 1297
    :pswitch_3
    :try_start_0
    invoke-static {v1}, Lcom/netflix/msl/msg/MessageContext$ReauthCode;->a(Lcom/netflix/msl/MslConstants$ResponseCode;)Lcom/netflix/msl/msg/MessageContext$ReauthCode;

    move-result-object v1

    const/4 v2, 0x0

    .line 1298
    invoke-interface {p2, v1, v2, v3}, Lcom/netflix/msl/msg/MessageContext;->d(Lcom/netflix/msl/msg/MessageContext$ReauthCode;ZZ)Lo/aie;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_9

    return-object v4

    .line 1310
    :cond_9
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/netflix/msl/msg/MslControl;->b(Lcom/netflix/msl/util/MslContext;)Lo/ahS;

    move-result-object v7

    .line 1314
    invoke-virtual {p4}, Lo/ahF;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Lo/ahK;->a(J)J

    move-result-wide v9

    .line 1315
    new-instance p4, Lcom/netflix/msl/msg/MslControl$FragmentManager;

    invoke-direct {p4, p3, p2}, Lcom/netflix/msl/msg/MslControl$FragmentManager;-><init>(Ljava/util/List;Lcom/netflix/msl/msg/MessageContext;)V

    .line 1316
    iget-object v5, p0, Lcom/netflix/msl/msg/MslControl;->c:Lo/ahH;

    const/4 v8, 0x0

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lo/ahH;->c(Lcom/netflix/msl/util/MslContext;Lo/ahS;Lo/ahX;J)Lo/ahK;

    move-result-object p2

    .line 1317
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->a()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1318
    invoke-virtual {v0}, Lo/ahP;->q()Lo/ahS;

    move-result-object p1

    .line 1319
    invoke-virtual {v0}, Lo/ahP;->r()Lo/ahX;

    move-result-object p3

    .line 1320
    invoke-virtual {p2, p1, p3}, Lo/ahK;->a(Lo/ahS;Lo/ahX;)V

    .line 1322
    :cond_a
    invoke-interface {p4}, Lcom/netflix/msl/msg/MessageContext;->f()Z

    move-result p1

    invoke-virtual {p2, p1}, Lo/ahK;->d(Z)Lo/ahK;

    .line 1323
    new-instance p1, Lcom/netflix/msl/msg/MslControl$Activity;

    invoke-direct {p1, p2, p4}, Lcom/netflix/msl/msg/MslControl$Activity;-><init>(Lo/ahK;Lcom/netflix/msl/msg/MessageContext;)V

    return-object p1

    :catch_0
    move-exception p1

    .line 1301
    new-instance p2, Lcom/netflix/msl/MslInternalException;

    const-string p3, "Unsupported response code mapping onto user re-authentication codes."

    invoke-direct {p2, p3, p1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 1271
    :pswitch_5
    :try_start_1
    invoke-static {v1}, Lcom/netflix/msl/util/MslContext$ReauthCode;->b(Lcom/netflix/msl/MslConstants$ResponseCode;)Lcom/netflix/msl/util/MslContext$ReauthCode;

    move-result-object v1

    .line 1272
    invoke-virtual {p1, v1}, Lcom/netflix/msl/util/MslContext;->d(Lcom/netflix/msl/util/MslContext$ReauthCode;)Lo/agQ;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v1, :cond_b

    return-object v4

    .line 1280
    :cond_b
    invoke-virtual {p4}, Lo/ahF;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Lo/ahK;->a(J)J

    move-result-wide v7

    .line 1281
    new-instance p4, Lcom/netflix/msl/msg/MslControl$FragmentManager;

    invoke-direct {p4, p3, p2}, Lcom/netflix/msl/msg/MslControl$FragmentManager;-><init>(Ljava/util/List;Lcom/netflix/msl/msg/MessageContext;)V

    .line 1282
    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl;->c:Lo/ahH;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lo/ahH;->c(Lcom/netflix/msl/util/MslContext;Lo/ahS;Lo/ahX;J)Lo/ahK;

    move-result-object p2

    .line 1283
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->a()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1284
    invoke-virtual {v0}, Lo/ahP;->q()Lo/ahS;

    move-result-object p1

    .line 1285
    invoke-virtual {v0}, Lo/ahP;->r()Lo/ahX;

    move-result-object p3

    .line 1286
    invoke-virtual {p2, p1, p3}, Lo/ahK;->a(Lo/ahS;Lo/ahX;)V

    .line 1288
    :cond_c
    invoke-interface {p4}, Lcom/netflix/msl/msg/MessageContext;->f()Z

    move-result p1

    invoke-virtual {p2, p1}, Lo/ahK;->d(Z)Lo/ahK;

    .line 1289
    new-instance p1, Lcom/netflix/msl/msg/MslControl$Activity;

    invoke-direct {p1, p2, p4}, Lcom/netflix/msl/msg/MslControl$Activity;-><init>(Lo/ahK;Lcom/netflix/msl/msg/MessageContext;)V

    return-object p1

    :catch_1
    move-exception p1

    .line 1275
    new-instance p2, Lcom/netflix/msl/MslInternalException;

    const-string p3, "Unsupported response code mapping onto entity re-authentication codes."

    invoke-direct {p2, p3, p1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic e(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;)Lo/ahK;
    .locals 0

    .line 189
    invoke-direct {p0, p1, p2}, Lcom/netflix/msl/msg/MslControl;->b(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;)Lo/ahK;

    move-result-object p0

    return-object p0
.end method

.method private e(Lcom/netflix/msl/util/MslContext;Lo/ahP;Lo/ahF;)V
    .locals 1

    .line 1443
    sget-object v0, Lcom/netflix/msl/msg/MslControl$3;->e:[I

    invoke-virtual {p3}, Lo/ahF;->c()Lcom/netflix/msl/MslConstants$ResponseCode;

    move-result-object p3

    invoke-virtual {p3}, Lcom/netflix/msl/MslConstants$ResponseCode;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    const/4 v0, 0x5

    if-eq p3, v0, :cond_0

    goto :goto_0

    .line 1463
    :cond_0
    invoke-virtual {p2}, Lo/ahP;->e()Lo/ahS;

    move-result-object p3

    .line 1464
    invoke-virtual {p2}, Lo/ahP;->o()Lo/ahX;

    move-result-object p2

    if-eqz p3, :cond_2

    if-eqz p2, :cond_2

    .line 1466
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->f()Lo/aim;

    move-result-object p1

    .line 1467
    invoke-interface {p1, p2}, Lo/aim;->e(Lo/ahX;)V

    goto :goto_0

    .line 1449
    :cond_1
    invoke-virtual {p2}, Lo/ahP;->e()Lo/ahS;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/netflix/msl/msg/MslControl;->c(Lcom/netflix/msl/util/MslContext;Lo/ahS;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private e(Lcom/netflix/msl/util/MslContext;Lo/ahP;Lo/ahO;)V
    .locals 2

    .line 1016
    invoke-virtual {p3}, Lo/ahO;->a()Lo/ahP;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1021
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->f()Lo/aim;

    move-result-object v1

    .line 1022
    invoke-virtual {v0}, Lo/ahP;->n()Lo/ahA;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1024
    invoke-virtual {v0}, Lo/ahA;->d()Lo/ahS;

    move-result-object v0

    .line 1025
    invoke-virtual {p3}, Lo/ahO;->i()Lo/agM;

    move-result-object p3

    invoke-interface {v1, v0, p3}, Lo/aim;->e(Lo/ahS;Lo/agM;)V

    .line 1029
    invoke-virtual {p2}, Lo/ahP;->e()Lo/ahS;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/netflix/msl/msg/MslControl;->c(Lcom/netflix/msl/util/MslContext;Lo/ahS;)V

    :cond_1
    return-void
.end method

.method private e(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/util/concurrent/BlockingQueue;Lo/ahK;J)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/util/MslContext;",
            "Lcom/netflix/msl/msg/MessageContext;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lo/ahS;",
            ">;",
            "Lo/ahK;",
            "J)Z"
        }
    .end annotation

    .line 2027
    invoke-virtual {p4}, Lo/ahK;->a()Lo/ahS;

    move-result-object v0

    .line 2028
    invoke-virtual {p4}, Lo/ahK;->d()Lo/ahX;

    move-result-object v1

    .line 2029
    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->h()Ljava/lang/String;

    move-result-object v2

    .line 2046
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->k()Ljava/util/Date;

    move-result-object v3

    .line 2047
    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->g()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    invoke-virtual {p4}, Lo/ahK;->b()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2048
    :cond_0
    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->i()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p4}, Lo/ahK;->g()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2049
    :cond_1
    invoke-virtual {p4}, Lo/ahK;->i()Z

    move-result v4

    if-nez v4, :cond_5

    if-nez v0, :cond_2

    .line 2050
    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->f()Z

    move-result v4

    if-nez v4, :cond_5

    :cond_2
    if-eqz v0, :cond_3

    .line 2051
    invoke-virtual {v0, v3}, Lo/ahS;->b(Ljava/util/Date;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    if-nez v1, :cond_4

    if-eqz v2, :cond_4

    .line 2052
    invoke-virtual {p4}, Lo/ahK;->e()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p4}, Lo/ahK;->j()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2053
    :cond_4
    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->j()Z

    move-result v3

    if-eqz v3, :cond_12

    if-eqz v0, :cond_5

    if-eqz v2, :cond_12

    if-nez v1, :cond_12

    .line 2059
    :cond_5
    :goto_0
    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/BlockingQueue;

    if-nez v3, :cond_6

    return v5

    .line 2068
    :cond_6
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, p5, p6, v4}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/ahS;

    if-eqz v4, :cond_17

    .line 2076
    invoke-interface {v3, v4}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 2080
    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl;->j:Lo/ahS;

    if-ne v4, v3, :cond_7

    goto :goto_0

    :cond_7
    if-eqz v0, :cond_9

    .line 2090
    invoke-virtual {v0, v4}, Lo/ahS;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_1

    :cond_8
    move-object v3, v0

    goto :goto_3

    .line 2091
    :cond_9
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/netflix/msl/msg/MslControl;->d(Lcom/netflix/msl/util/MslContext;Lo/ahS;)V

    .line 2092
    invoke-direct {p0, p1}, Lcom/netflix/msl/msg/MslControl;->b(Lcom/netflix/msl/util/MslContext;)Lo/ahS;

    move-result-object v3

    if-nez v3, :cond_a

    :goto_2
    move-object v0, v3

    goto :goto_0

    :cond_a
    :goto_3
    if-eqz v2, :cond_b

    if-eqz v1, :cond_c

    :cond_b
    if-eqz v1, :cond_e

    .line 2110
    invoke-virtual {v1, v3}, Lo/ahX;->e(Lo/ahS;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 2112
    :cond_c
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->f()Lo/aim;

    move-result-object v1

    invoke-interface {v1, v2}, Lo/aim;->c(Ljava/lang/String;)Lo/ahX;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 2113
    invoke-virtual {v1, v3}, Lo/ahX;->e(Lo/ahS;)Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_4

    :cond_d
    const/4 v1, 0x0

    .line 2117
    :cond_e
    :goto_4
    invoke-virtual {p4, v3, v1}, Lo/ahK;->d(Lo/ahS;Lo/ahX;)V

    .line 2121
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->k()Ljava/util/Date;

    move-result-object v4

    .line 2122
    invoke-virtual {v3, v4}, Lo/ahS;->b(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_5

    .line 2128
    :cond_f
    invoke-virtual {p4}, Lo/ahK;->i()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {v3, v0}, Lo/ahS;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_5

    .line 2134
    :cond_10
    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->j()Z

    move-result v0

    if-eqz v0, :cond_11

    if-nez v1, :cond_11

    :goto_5
    goto :goto_2

    :cond_11
    move-object v0, v3

    .line 2147
    :cond_12
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->k()Ljava/util/Date;

    move-result-object p4

    const/4 p5, 0x0

    if-eqz v0, :cond_15

    .line 2148
    invoke-virtual {v0, p4}, Lo/ahS;->d(Ljava/util/Date;)Z

    move-result p6

    if-nez p6, :cond_15

    if-nez v1, :cond_13

    .line 2149
    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->h()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_15

    :cond_13
    if-eqz v1, :cond_14

    .line 2150
    invoke-virtual {v1, p4}, Lo/ahX;->d(Ljava/util/Date;)Z

    move-result p2

    if-eqz p2, :cond_14

    goto :goto_6

    :cond_14
    return p5

    .line 2153
    :cond_15
    :goto_6
    iget-object p2, p0, Lcom/netflix/msl/msg/MslControl;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/BlockingQueue;

    if-nez p1, :cond_16

    return v5

    :cond_16
    return p5

    .line 2072
    :cond_17
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    const-string p2, "acquireRenewalLock timed out."

    invoke-direct {p1, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public b(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lo/ahu;I)Ljava/util/concurrent/Future;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/util/MslContext;",
            "Lcom/netflix/msl/msg/MessageContext;",
            "Lo/ahu;",
            "I)",
            "Ljava/util/concurrent/Future<",
            "Lcom/netflix/msl/msg/MslControl$PendingIntent;",
            ">;"
        }
    .end annotation

    .line 4043
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4045
    new-instance v0, Lcom/netflix/msl/msg/MslControl$LoaderManager;

    sget-object v6, Lcom/netflix/msl/msg/MslControl$Receive;->b:Lcom/netflix/msl/msg/MslControl$Receive;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/netflix/msl/msg/MslControl$LoaderManager;-><init>(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lo/ahu;Lcom/netflix/msl/msg/MslControl$Receive;I)V

    .line 4046
    iget-object p1, p0, Lcom/netflix/msl/msg/MslControl;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1

    .line 4044
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This method cannot be used in peer-to-peer mode."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected finalize()V
    .locals 1

    .line 861
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 862
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
