.class Lcom/netflix/msl/msg/MslControl$LoaderManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/msl/msg/MslControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoaderManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/netflix/msl/msg/MslControl$PendingIntent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/msl/msg/MslControl;

.field private final b:Lo/ahu;

.field private final c:Lcom/netflix/msl/msg/MessageContext;

.field private final d:Lcom/netflix/msl/util/MslContext;

.field private e:Ljava/io/InputStream;

.field private final f:Lcom/netflix/msl/msg/MslControl$Receive;

.field private g:Lo/ahK;

.field private h:Z

.field private i:Ljava/io/OutputStream;

.field private final j:I

.field private final k:I

.field private o:Z


# direct methods
.method public constructor <init>(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lo/ahu;Lcom/netflix/msl/msg/MslControl$Receive;I)V
    .locals 0

    .line 3059
    iput-object p1, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->a:Lcom/netflix/msl/msg/MslControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 3047
    iput-boolean p1, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->o:Z

    .line 3060
    iput-object p2, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->d:Lcom/netflix/msl/util/MslContext;

    .line 3061
    iput-object p3, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->c:Lcom/netflix/msl/msg/MessageContext;

    .line 3062
    iput-object p4, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->b:Lo/ahu;

    const/4 p2, 0x0

    .line 3063
    iput-object p2, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->e:Ljava/io/InputStream;

    .line 3064
    iput-object p2, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->i:Ljava/io/OutputStream;

    .line 3065
    iput-boolean p1, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->h:Z

    .line 3066
    iput-object p2, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->g:Lo/ahK;

    .line 3067
    iput-object p5, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->f:Lcom/netflix/msl/msg/MslControl$Receive;

    .line 3068
    iput p6, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->j:I

    .line 3069
    iput p1, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->k:I

    return-void
.end method

.method private constructor <init>(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lo/ahu;Lo/ahK;Lcom/netflix/msl/msg/MslControl$Receive;II)V
    .locals 0

    .line 3109
    iput-object p1, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->a:Lcom/netflix/msl/msg/MslControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 3047
    iput-boolean p1, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->o:Z

    .line 3110
    iput-object p2, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->d:Lcom/netflix/msl/util/MslContext;

    .line 3111
    iput-object p3, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->c:Lcom/netflix/msl/msg/MessageContext;

    .line 3112
    iput-object p4, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->b:Lo/ahu;

    const/4 p2, 0x0

    .line 3113
    iput-object p2, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->e:Ljava/io/InputStream;

    .line 3114
    iput-object p2, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->i:Ljava/io/OutputStream;

    .line 3115
    iput-boolean p1, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->h:Z

    .line 3116
    iput-object p5, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->g:Lo/ahK;

    .line 3117
    iput-object p6, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->f:Lcom/netflix/msl/msg/MslControl$Receive;

    .line 3118
    iput p7, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->j:I

    .line 3119
    iput p8, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->k:I

    return-void
.end method

.method private a(Lcom/netflix/msl/msg/MessageContext;Lo/ahK;II)Lcom/netflix/msl/msg/MslControl$PendingIntent;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v11, p1

    move/from16 v12, p3

    add-int/lit8 v13, p4, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v0, 0xc

    if-le v13, v0, :cond_0

    .line 3174
    iget-object v0, v1, Lcom/netflix/msl/msg/MslControl$LoaderManager;->a:Lcom/netflix/msl/msg/MslControl;

    iget-object v2, v1, Lcom/netflix/msl/msg/MslControl$LoaderManager;->d:Lcom/netflix/msl/util/MslContext;

    invoke-virtual/range {p2 .. p2}, Lo/ahK;->a()Lo/ahS;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/netflix/msl/msg/MslControl;->d(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lo/ahS;)V

    .line 3175
    iput-boolean v14, v1, Lcom/netflix/msl/msg/MslControl$LoaderManager;->o:Z

    return-object v15

    .line 3183
    :cond_0
    iget-object v2, v1, Lcom/netflix/msl/msg/MslControl$LoaderManager;->a:Lcom/netflix/msl/msg/MslControl;

    iget-object v3, v1, Lcom/netflix/msl/msg/MslControl$LoaderManager;->d:Lcom/netflix/msl/util/MslContext;

    iget-object v5, v1, Lcom/netflix/msl/msg/MslControl$LoaderManager;->e:Ljava/io/InputStream;

    iget-object v6, v1, Lcom/netflix/msl/msg/MslControl$LoaderManager;->i:Ljava/io/OutputStream;

    iget-object v8, v1, Lcom/netflix/msl/msg/MslControl$LoaderManager;->f:Lcom/netflix/msl/msg/MslControl$Receive;

    iget-boolean v9, v1, Lcom/netflix/msl/msg/MslControl$LoaderManager;->h:Z

    move-object/from16 v4, p1

    move-object/from16 v7, p2

    move/from16 v10, p3

    invoke-static/range {v2 .. v10}, Lcom/netflix/msl/msg/MslControl;->b(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/InputStream;Ljava/io/OutputStream;Lo/ahK;Lcom/netflix/msl/msg/MslControl$Receive;ZI)Lcom/netflix/msl/msg/MslControl$Dialog;

    move-result-object v2

    .line 3184
    iget-object v0, v2, Lcom/netflix/msl/msg/MslControl$Dialog;->e:Lo/ahM;

    .line 3185
    iget-object v10, v2, Lcom/netflix/msl/msg/MslControl$Dialog;->b:Lo/ahO;

    if-nez v10, :cond_1

    .line 3191
    new-instance v2, Lcom/netflix/msl/msg/MslControl$PendingIntent;

    invoke-direct {v2, v10, v0}, Lcom/netflix/msl/msg/MslControl$PendingIntent;-><init>(Lo/ahO;Lo/ahM;)V

    return-object v2

    .line 3195
    :cond_1
    invoke-virtual {v10}, Lo/ahO;->a()Lo/ahP;

    move-result-object v3

    if-nez v3, :cond_8

    .line 3200
    :try_start_0
    invoke-virtual {v0}, Lo/ahM;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 3203
    invoke-static {v3}, Lcom/netflix/msl/msg/MslControl;->d(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v15

    .line 3207
    :cond_2
    :goto_0
    :try_start_1
    invoke-virtual {v10}, Lo/ahO;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v3, v0

    .line 3210
    invoke-static {v3}, Lcom/netflix/msl/msg/MslControl;->d(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v15

    .line 3216
    :cond_3
    :goto_1
    invoke-virtual {v10}, Lo/ahO;->b()Lo/ahF;

    move-result-object v0

    .line 3217
    iget-object v3, v1, Lcom/netflix/msl/msg/MslControl$LoaderManager;->a:Lcom/netflix/msl/msg/MslControl;

    iget-object v4, v1, Lcom/netflix/msl/msg/MslControl$LoaderManager;->d:Lcom/netflix/msl/util/MslContext;

    invoke-static {v3, v4, v11, v2, v0}, Lcom/netflix/msl/msg/MslControl;->d(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MslControl$VoiceInteractor;Lo/ahF;)Lcom/netflix/msl/msg/MslControl$Activity;

    move-result-object v0

    if-nez v0, :cond_4

    .line 3221
    new-instance v0, Lcom/netflix/msl/msg/MslControl$PendingIntent;

    invoke-direct {v0, v10, v15}, Lcom/netflix/msl/msg/MslControl$PendingIntent;-><init>(Lo/ahO;Lo/ahM;)V

    return-object v0

    .line 3226
    :cond_4
    iget-object v7, v0, Lcom/netflix/msl/msg/MslControl$Activity;->b:Lo/ahK;

    .line 3227
    iget-object v5, v0, Lcom/netflix/msl/msg/MslControl$Activity;->d:Lcom/netflix/msl/msg/MessageContext;

    .line 3228
    iget-object v0, v1, Lcom/netflix/msl/msg/MslControl$LoaderManager;->d:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Lcom/netflix/msl/util/MslContext;->a()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3231
    new-instance v0, Lcom/netflix/msl/msg/MslControl$LoaderManager;

    iget-object v3, v1, Lcom/netflix/msl/msg/MslControl$LoaderManager;->a:Lcom/netflix/msl/msg/MslControl;

    iget-object v4, v1, Lcom/netflix/msl/msg/MslControl$LoaderManager;->d:Lcom/netflix/msl/util/MslContext;

    iget-object v6, v1, Lcom/netflix/msl/msg/MslControl$LoaderManager;->b:Lo/ahu;

    iget-object v8, v1, Lcom/netflix/msl/msg/MslControl$LoaderManager;->f:Lcom/netflix/msl/msg/MslControl$Receive;

    move-object v2, v0

    move/from16 v9, p3

    move-object v11, v10

    move v10, v13

    invoke-direct/range {v2 .. v10}, Lcom/netflix/msl/msg/MslControl$LoaderManager;-><init>(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lo/ahu;Lo/ahK;Lcom/netflix/msl/msg/MslControl$Receive;II)V

    .line 3232
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MslControl$LoaderManager;->c()Lcom/netflix/msl/msg/MslControl$PendingIntent;

    move-result-object v2

    .line 3233
    iget-boolean v0, v0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->o:Z

    iput-boolean v0, v1, Lcom/netflix/msl/msg/MslControl$LoaderManager;->o:Z

    goto :goto_2

    :cond_5
    move-object v11, v10

    .line 3241
    invoke-direct {v1, v5, v7, v12, v13}, Lcom/netflix/msl/msg/MslControl$LoaderManager;->a(Lcom/netflix/msl/msg/MessageContext;Lo/ahK;II)Lcom/netflix/msl/msg/MslControl$PendingIntent;

    move-result-object v2

    .line 3246
    :goto_2
    iget-boolean v0, v1, Lcom/netflix/msl/msg/MslControl$LoaderManager;->o:Z

    if-nez v0, :cond_7

    if-eqz v2, :cond_6

    iget-object v0, v2, Lcom/netflix/msl/msg/MslControl$PendingIntent;->b:Lo/ahO;

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    return-object v2

    .line 3247
    :cond_7
    :goto_3
    new-instance v0, Lcom/netflix/msl/msg/MslControl$PendingIntent;

    invoke-direct {v0, v11, v15}, Lcom/netflix/msl/msg/MslControl$PendingIntent;-><init>(Lo/ahO;Lo/ahM;)V

    return-object v0

    :cond_8
    move-object v4, v10

    .line 3255
    iget-object v5, v1, Lcom/netflix/msl/msg/MslControl$LoaderManager;->d:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v5}, Lcom/netflix/msl/util/MslContext;->a()Z

    move-result v5

    if-nez v5, :cond_c

    .line 3258
    iget-boolean v2, v2, Lcom/netflix/msl/msg/MslControl$Dialog;->d:Z

    if-nez v2, :cond_9

    .line 3259
    new-instance v2, Lcom/netflix/msl/msg/MslControl$PendingIntent;

    invoke-direct {v2, v4, v0}, Lcom/netflix/msl/msg/MslControl$PendingIntent;-><init>(Lo/ahO;Lo/ahM;)V

    return-object v2

    .line 3267
    :cond_9
    :try_start_2
    invoke-virtual {v0}, Lo/ahM;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v2, v0

    .line 3270
    invoke-static {v2}, Lcom/netflix/msl/msg/MslControl;->d(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_a

    return-object v15

    .line 3274
    :cond_a
    :goto_4
    :try_start_3
    invoke-virtual {v4}, Lo/ahO;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v2, v0

    .line 3277
    invoke-static {v2}, Lcom/netflix/msl/msg/MslControl;->d(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-object v15

    .line 3283
    :cond_b
    :goto_5
    new-instance v5, Lcom/netflix/msl/msg/MslControl$FragmentManager;

    invoke-direct {v5, v15, v11}, Lcom/netflix/msl/msg/MslControl$FragmentManager;-><init>(Ljava/util/List;Lcom/netflix/msl/msg/MessageContext;)V

    .line 3284
    iget-object v0, v1, Lcom/netflix/msl/msg/MslControl$LoaderManager;->a:Lcom/netflix/msl/msg/MslControl;

    iget-object v2, v1, Lcom/netflix/msl/msg/MslControl$LoaderManager;->d:Lcom/netflix/msl/util/MslContext;

    invoke-static {v0, v2, v11, v3}, Lcom/netflix/msl/msg/MslControl;->d(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lo/ahP;)Lo/ahK;

    move-result-object v7

    .line 3285
    new-instance v0, Lcom/netflix/msl/msg/MslControl$LoaderManager;

    iget-object v3, v1, Lcom/netflix/msl/msg/MslControl$LoaderManager;->a:Lcom/netflix/msl/msg/MslControl;

    iget-object v4, v1, Lcom/netflix/msl/msg/MslControl$LoaderManager;->d:Lcom/netflix/msl/util/MslContext;

    iget-object v6, v1, Lcom/netflix/msl/msg/MslControl$LoaderManager;->b:Lo/ahu;

    iget-object v8, v1, Lcom/netflix/msl/msg/MslControl$LoaderManager;->f:Lcom/netflix/msl/msg/MslControl$Receive;

    move-object v2, v0

    move/from16 v9, p3

    move v10, v13

    invoke-direct/range {v2 .. v10}, Lcom/netflix/msl/msg/MslControl$LoaderManager;-><init>(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lo/ahu;Lo/ahK;Lcom/netflix/msl/msg/MslControl$Receive;II)V

    .line 3286
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MslControl$LoaderManager;->c()Lcom/netflix/msl/msg/MslControl$PendingIntent;

    move-result-object v0

    return-object v0

    .line 3294
    :cond_c
    iget-boolean v2, v2, Lcom/netflix/msl/msg/MslControl$Dialog;->d:Z

    if-eqz v2, :cond_f

    .line 3298
    :try_start_4
    invoke-virtual {v0}, Lo/ahM;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    move-object v2, v0

    .line 3301
    invoke-static {v2}, Lcom/netflix/msl/msg/MslControl;->d(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-object v15

    .line 3305
    :cond_d
    :goto_6
    :try_start_5
    invoke-virtual {v4}, Lo/ahO;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_7

    :catch_5
    move-exception v0

    move-object v2, v0

    .line 3308
    invoke-static {v2}, Lcom/netflix/msl/msg/MslControl;->d(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_e

    return-object v15

    .line 3316
    :cond_e
    :goto_7
    new-instance v0, Lcom/netflix/msl/msg/MslControl$FragmentManager;

    invoke-direct {v0, v15, v11}, Lcom/netflix/msl/msg/MslControl$FragmentManager;-><init>(Ljava/util/List;Lcom/netflix/msl/msg/MessageContext;)V

    .line 3317
    iget-object v2, v1, Lcom/netflix/msl/msg/MslControl$LoaderManager;->a:Lcom/netflix/msl/msg/MslControl;

    iget-object v4, v1, Lcom/netflix/msl/msg/MslControl$LoaderManager;->d:Lcom/netflix/msl/util/MslContext;

    invoke-static {v2, v4, v11, v3}, Lcom/netflix/msl/msg/MslControl;->d(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lo/ahP;)Lo/ahK;

    move-result-object v2

    .line 3318
    invoke-direct {v1, v0, v2, v12, v13}, Lcom/netflix/msl/msg/MslControl$LoaderManager;->a(Lcom/netflix/msl/msg/MessageContext;Lo/ahK;II)Lcom/netflix/msl/msg/MslControl$PendingIntent;

    move-result-object v0

    return-object v0

    .line 3328
    :cond_f
    invoke-virtual {v3}, Lo/ahP;->k()Ljava/util/Set;

    move-result-object v2

    .line 3329
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 3330
    invoke-virtual {v3}, Lo/ahP;->f()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v3}, Lo/ahP;->e()Lo/ahS;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {v3}, Lo/ahP;->l()Lo/aie;

    move-result-object v2

    if-eqz v2, :cond_10

    goto :goto_8

    .line 3397
    :cond_10
    new-instance v2, Lcom/netflix/msl/msg/MslControl$PendingIntent;

    invoke-direct {v2, v4, v0}, Lcom/netflix/msl/msg/MslControl$PendingIntent;-><init>(Lo/ahO;Lo/ahM;)V

    return-object v2

    .line 3333
    :cond_11
    :goto_8
    new-instance v7, Lcom/netflix/msl/msg/MslControl$Application;

    invoke-direct {v7, v11}, Lcom/netflix/msl/msg/MslControl$Application;-><init>(Lcom/netflix/msl/msg/MessageContext;)V

    .line 3334
    iget-object v2, v1, Lcom/netflix/msl/msg/MslControl$LoaderManager;->a:Lcom/netflix/msl/msg/MslControl;

    iget-object v5, v1, Lcom/netflix/msl/msg/MslControl$LoaderManager;->d:Lcom/netflix/msl/util/MslContext;

    invoke-static {v2, v5, v7, v3}, Lcom/netflix/msl/msg/MslControl;->d(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lo/ahP;)Lo/ahK;

    move-result-object v2

    const/4 v3, 0x0

    .line 3342
    :try_start_6
    invoke-virtual {v4}, Lo/ahO;->c()Z

    move-result v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-nez v5, :cond_13

    .line 3345
    :try_start_7
    invoke-virtual {v0}, Lo/ahM;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_9

    :catch_6
    move-exception v0

    move-object v5, v0

    .line 3348
    :try_start_8
    invoke-static {v5}, Lcom/netflix/msl/msg/MslControl;->d(Ljava/lang/Throwable;)Z

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v0, :cond_12

    .line 3392
    iget-object v0, v1, Lcom/netflix/msl/msg/MslControl$LoaderManager;->a:Lcom/netflix/msl/msg/MslControl;

    iget-object v3, v1, Lcom/netflix/msl/msg/MslControl$LoaderManager;->d:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v2}, Lo/ahK;->a()Lo/ahS;

    move-result-object v2

    invoke-static {v0, v3, v2}, Lcom/netflix/msl/msg/MslControl;->d(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lo/ahS;)V

    return-object v15

    .line 3359
    :cond_12
    :goto_9
    :try_start_9
    invoke-virtual {v2, v3}, Lo/ahK;->a(Z)Lo/ahK;

    .line 3360
    iget-object v5, v1, Lcom/netflix/msl/msg/MslControl$LoaderManager;->a:Lcom/netflix/msl/msg/MslControl;

    iget-object v6, v1, Lcom/netflix/msl/msg/MslControl$LoaderManager;->d:Lcom/netflix/msl/util/MslContext;

    iget-object v8, v1, Lcom/netflix/msl/msg/MslControl$LoaderManager;->i:Ljava/io/OutputStream;

    iget-boolean v10, v1, Lcom/netflix/msl/msg/MslControl$LoaderManager;->h:Z

    move-object v9, v2

    invoke-static/range {v5 .. v10}, Lcom/netflix/msl/msg/MslControl;->b(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/OutputStream;Lo/ahK;Z)Lcom/netflix/msl/msg/MslControl$VoiceInteractor;

    move-result-object v0

    .line 3361
    new-instance v3, Lcom/netflix/msl/msg/MslControl$PendingIntent;

    iget-object v0, v0, Lcom/netflix/msl/msg/MslControl$VoiceInteractor;->e:Lo/ahM;

    invoke-direct {v3, v4, v0}, Lcom/netflix/msl/msg/MslControl$PendingIntent;-><init>(Lo/ahO;Lo/ahM;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 3392
    iget-object v0, v1, Lcom/netflix/msl/msg/MslControl$LoaderManager;->a:Lcom/netflix/msl/msg/MslControl;

    iget-object v4, v1, Lcom/netflix/msl/msg/MslControl$LoaderManager;->d:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v2}, Lo/ahK;->a()Lo/ahS;

    move-result-object v2

    invoke-static {v0, v4, v2}, Lcom/netflix/msl/msg/MslControl;->d(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lo/ahS;)V

    return-object v3

    .line 3370
    :cond_13
    :try_start_a
    invoke-virtual {v0}, Lo/ahM;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_a

    :catch_7
    move-exception v0

    move-object v5, v0

    .line 3373
    :try_start_b
    invoke-static {v5}, Lcom/netflix/msl/msg/MslControl;->d(Ljava/lang/Throwable;)Z

    move-result v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v0, :cond_14

    .line 3392
    iget-object v0, v1, Lcom/netflix/msl/msg/MslControl$LoaderManager;->a:Lcom/netflix/msl/msg/MslControl;

    iget-object v3, v1, Lcom/netflix/msl/msg/MslControl$LoaderManager;->d:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v2}, Lo/ahK;->a()Lo/ahS;

    move-result-object v2

    invoke-static {v0, v3, v2}, Lcom/netflix/msl/msg/MslControl;->d(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lo/ahS;)V

    return-object v15

    .line 3377
    :cond_14
    :goto_a
    :try_start_c
    invoke-virtual {v4}, Lo/ahO;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_b

    :catch_8
    move-exception v0

    move-object v4, v0

    .line 3380
    :try_start_d
    invoke-static {v4}, Lcom/netflix/msl/msg/MslControl;->d(Ljava/lang/Throwable;)Z

    move-result v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-eqz v0, :cond_15

    .line 3392
    iget-object v0, v1, Lcom/netflix/msl/msg/MslControl$LoaderManager;->a:Lcom/netflix/msl/msg/MslControl;

    iget-object v3, v1, Lcom/netflix/msl/msg/MslControl$LoaderManager;->d:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v2}, Lo/ahK;->a()Lo/ahS;

    move-result-object v2

    invoke-static {v0, v3, v2}, Lcom/netflix/msl/msg/MslControl;->d(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lo/ahS;)V

    return-object v15

    .line 3387
    :cond_15
    :goto_b
    :try_start_e
    invoke-direct {v1, v7, v2, v12, v13}, Lcom/netflix/msl/msg/MslControl$LoaderManager;->a(Lcom/netflix/msl/msg/MessageContext;Lo/ahK;II)Lcom/netflix/msl/msg/MslControl$PendingIntent;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v14, 0x0

    goto :goto_c

    :catchall_1
    move-exception v0

    :goto_c
    if-eqz v14, :cond_16

    .line 3392
    iget-object v3, v1, Lcom/netflix/msl/msg/MslControl$LoaderManager;->a:Lcom/netflix/msl/msg/MslControl;

    iget-object v4, v1, Lcom/netflix/msl/msg/MslControl$LoaderManager;->d:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v2}, Lo/ahK;->a()Lo/ahS;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/netflix/msl/msg/MslControl;->d(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lo/ahS;)V

    .line 3393
    :cond_16
    throw v0
.end method


# virtual methods
.method public c()Lcom/netflix/msl/msg/MslControl$PendingIntent;
    .locals 6

    .line 3415
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->e:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->i:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3456
    :cond_0
    iget v0, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->j:I

    goto :goto_1

    .line 3418
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->b:Lo/ahu;

    iget v2, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->j:I

    invoke-interface {v0, v2}, Lo/ahu;->e(I)V

    .line 3422
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3423
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->b:Lo/ahu;

    invoke-interface {v0}, Lo/ahu;->d()Lo/ahu$ActionBar;

    move-result-object v0

    .line 3424
    invoke-interface {v0}, Lo/ahu$ActionBar;->d()Ljava/io/OutputStream;

    move-result-object v4

    iput-object v4, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->i:Ljava/io/OutputStream;

    .line 3425
    invoke-interface {v0}, Lo/ahu$ActionBar;->b()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->e:Ljava/io/InputStream;

    .line 3426
    iget v0, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->j:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    long-to-int v2, v4

    sub-int/2addr v0, v2

    const/4 v2, 0x1

    .line 3427
    iput-boolean v2, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->h:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_d

    .line 3461
    :goto_1
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->g:Lo/ahK;

    if-nez v2, :cond_3

    .line 3463
    :try_start_1
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->a:Lcom/netflix/msl/msg/MslControl;

    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->d:Lcom/netflix/msl/util/MslContext;

    iget-object v4, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->c:Lcom/netflix/msl/msg/MessageContext;

    invoke-static {v2, v3, v4}, Lcom/netflix/msl/msg/MslControl;->e(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;)Lo/ahK;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->g:Lo/ahK;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    nop

    .line 3467
    iget-boolean v0, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->h:Z

    if-eqz v0, :cond_2

    .line 3468
    :try_start_2
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->i:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3469
    :catch_1
    :try_start_3
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->e:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :cond_2
    return-object v1

    .line 3479
    :cond_3
    :goto_2
    :try_start_4
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->c:Lcom/netflix/msl/msg/MessageContext;

    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->g:Lo/ahK;

    iget v4, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->k:I

    invoke-direct {p0, v2, v3, v0, v4}, Lcom/netflix/msl/msg/MslControl$LoaderManager;->a(Lcom/netflix/msl/msg/MessageContext;Lo/ahK;II)Lcom/netflix/msl/msg/MslControl$PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3482
    iget-object v2, v0, Lcom/netflix/msl/msg/MslControl$PendingIntent;->c:Lo/ahM;

    if-eqz v2, :cond_4

    .line 3483
    iget-object v2, v0, Lcom/netflix/msl/msg/MslControl$PendingIntent;->c:Lo/ahM;

    invoke-virtual {v2}, Lo/ahM;->d()V

    .line 3491
    :cond_4
    iget-boolean v2, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->h:Z

    if-eqz v2, :cond_6

    if-eqz v0, :cond_5

    iget-object v2, v0, Lcom/netflix/msl/msg/MslControl$PendingIntent;->b:Lo/ahO;
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Lcom/netflix/msl/MslException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_4

    if-nez v2, :cond_6

    .line 3492
    :cond_5
    :try_start_5
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->e:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Lcom/netflix/msl/MslException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_3
    :cond_6
    return-object v0

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v0

    goto :goto_3

    :catch_7
    move-exception v0

    .line 3509
    :goto_3
    iget-boolean v2, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->h:Z

    if-eqz v2, :cond_7

    .line 3510
    :try_start_6
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->i:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    .line 3511
    :catch_8
    :try_start_7
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->e:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    goto :goto_4

    :catch_9
    nop

    .line 3515
    :cond_7
    :goto_4
    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->d(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_8

    return-object v1

    .line 3516
    :cond_8
    throw v0

    :catch_a
    nop

    .line 3499
    iget-boolean v0, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->h:Z

    if-eqz v0, :cond_9

    .line 3500
    :try_start_8
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->i:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b

    .line 3501
    :catch_b
    :try_start_9
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->e:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_c

    :catch_c
    :cond_9
    return-object v1

    :catch_d
    move-exception v0

    .line 3445
    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->g:Lo/ahK;

    if-eqz v1, :cond_a

    .line 3446
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->a:Lcom/netflix/msl/msg/MslControl;

    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->d:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v1}, Lo/ahK;->a()Lo/ahS;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/netflix/msl/msg/MslControl;->d(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lo/ahS;)V

    .line 3450
    :cond_a
    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->i:Ljava/io/OutputStream;

    if-eqz v1, :cond_b

    :try_start_a
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_e

    goto :goto_5

    :catch_e
    nop

    .line 3451
    :cond_b
    :goto_5
    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->e:Ljava/io/InputStream;

    if-eqz v1, :cond_c

    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_f

    .line 3453
    :catch_f
    :cond_c
    throw v0

    :catch_10
    move-exception v0

    .line 3431
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->g:Lo/ahK;

    if-eqz v2, :cond_d

    .line 3432
    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->a:Lcom/netflix/msl/msg/MslControl;

    iget-object v4, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->d:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v2}, Lo/ahK;->a()Lo/ahS;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/netflix/msl/msg/MslControl;->d(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lo/ahS;)V

    .line 3436
    :cond_d
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->i:Ljava/io/OutputStream;

    if-eqz v2, :cond_e

    :try_start_c
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_11

    goto :goto_6

    :catch_11
    nop

    .line 3437
    :cond_e
    :goto_6
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$LoaderManager;->e:Ljava/io/InputStream;

    if-eqz v2, :cond_f

    :try_start_d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_12

    goto :goto_7

    :catch_12
    nop

    .line 3440
    :cond_f
    :goto_7
    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->d(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_10

    return-object v1

    .line 3441
    :cond_10
    throw v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .line 3024
    invoke-virtual {p0}, Lcom/netflix/msl/msg/MslControl$LoaderManager;->c()Lcom/netflix/msl/msg/MslControl$PendingIntent;

    move-result-object v0

    return-object v0
.end method
