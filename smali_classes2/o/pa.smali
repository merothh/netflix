.class public Lo/pa;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/pa$StateListAnimator;,
        Lo/pa$Application;,
        Lo/pa$Activity;
    }
.end annotation


# static fields
.field private static final b:J

.field private static final c:J

.field private static final i:Lo/pa$StateListAnimator;


# instance fields
.field private final a:Landroid/content/Context;

.field private final d:Landroid/os/Handler;

.field private e:Z

.field private final f:Landroid/content/BroadcastReceiver;

.field private final g:Lo/aeq;

.field private final h:Lo/pa$Activity;

.field private final j:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 56
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lo/pa;->b:J

    .line 57
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lo/pa;->c:J

    .line 71
    new-instance v0, Lo/pa$StateListAnimator;

    invoke-direct {v0}, Lo/pa$StateListAnimator;-><init>()V

    sput-object v0, Lo/pa;->i:Lo/pa$StateListAnimator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lo/pa$Activity;)V
    .locals 2

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lo/pc;

    invoke-direct {v0, p0}, Lo/pc;-><init>(Lo/pa;)V

    iput-object v0, p0, Lo/pa;->j:Ljava/lang/Runnable;

    .line 75
    new-instance v0, Lo/pa$3;

    invoke-direct {v0, p0}, Lo/pa$3;-><init>(Lo/pa;)V

    iput-object v0, p0, Lo/pa;->f:Landroid/content/BroadcastReceiver;

    .line 97
    iput-object p3, p0, Lo/pa;->h:Lo/pa$Activity;

    .line 98
    iput-object p1, p0, Lo/pa;->a:Landroid/content/Context;

    .line 99
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lo/pa;->d:Landroid/os/Handler;

    .line 103
    new-instance p1, Lo/aeq;

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x5

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    const/4 v0, 0x5

    invoke-direct {p1, v0, p2, p3}, Lo/aeq;-><init>(IJ)V

    iput-object p1, p0, Lo/pa;->g:Lo/aeq;

    return-void
.end method

.method static synthetic a(Lo/pa;)Lo/aeq;
    .locals 0

    .line 48
    iget-object p0, p0, Lo/pa;->g:Lo/aeq;

    return-object p0
.end method

.method public static a()Lorg/json/JSONObject;
    .locals 2

    .line 284
    sget-object v0, Lo/pa;->i:Lo/pa$StateListAnimator;

    .line 285
    invoke-static {}, Lo/adI;->b()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 287
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic b(Lo/pa;)V
    .locals 0

    invoke-direct {p0}, Lo/pa;->l()V

    return-void
.end method

.method static synthetic c(Lo/pa;)Ljava/lang/Runnable;
    .locals 0

    .line 48
    iget-object p0, p0, Lo/pa;->j:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static c()Lo/pa$StateListAnimator;
    .locals 1

    .line 68
    sget-object v0, Lo/pa;->i:Lo/pa$StateListAnimator;

    return-object v0
.end method

.method static synthetic e(Lo/pa;)Landroid/os/Handler;
    .locals 0

    .line 48
    iget-object p0, p0, Lo/pa;->d:Landroid/os/Handler;

    return-object p0
.end method

.method private static e(Ljava/io/File;)Z
    .locals 7

    const-string v0, "offlineStorageMonitor"

    .line 258
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "nf.test"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x1

    const/4 v2, 0x0

    .line 261
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 262
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    const-string v4, "passesNfWriteTest first deleteResult=%b"

    new-array v5, p0, [Ljava/lang/Object;

    .line 263
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v0, v4, v5}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-nez v3, :cond_0

    return v2

    .line 268
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v3

    const-string v4, "passesNfWriteTest createNewFile=%b"

    new-array v5, p0, [Ljava/lang/Object;

    .line 269
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v0, v4, v5}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 270
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v4, "passesNfWriteTest file exists=%b"

    new-array v5, p0, [Ljava/lang/Object;

    .line 271
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v0, v4, v5}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 272
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    const-string v4, "passesNfWriteTest delete=%b"

    new-array v5, p0, [Ljava/lang/Object;

    .line 273
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v0, v4, v5}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    const/4 v3, 0x0

    :goto_0
    new-array p0, p0, [Ljava/lang/Object;

    aput-object v1, p0, v2

    const-string v1, "passesNfWriteTest Exception "

    .line 277
    invoke-static {v0, v1, p0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    :catch_3
    move-exception v1

    const/4 v3, 0x0

    :goto_1
    new-array p0, p0, [Ljava/lang/Object;

    aput-object v1, p0, v2

    const-string v1, "passesNfWriteTest IOException "

    .line 275
    invoke-static {v0, v1, p0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_2
    return v3
.end method

.method static synthetic f()J
    .locals 2

    .line 48
    sget-wide v0, Lo/pa;->b:J

    return-wide v0
.end method

.method private g()V
    .locals 1

    .line 253
    iget-object v0, p0, Lo/pa;->h:Lo/pa$Activity;

    invoke-interface {v0}, Lo/pa$Activity;->e()V

    return-void
.end method

.method private h()V
    .locals 3

    .line 237
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    .line 238
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_EJECT"

    .line 240
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    .line 241
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_NOFS"

    .line 242
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    .line 243
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_SHARED"

    .line 244
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTABLE"

    .line 245
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    .line 246
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    .line 247
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 248
    iput-boolean v1, p0, Lo/pa;->e:Z

    .line 249
    iget-object v1, p0, Lo/pa;->a:Landroid/content/Context;

    iget-object v2, p0, Lo/pa;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private i()V
    .locals 2

    .line 229
    iget-boolean v0, p0, Lo/pa;->e:Z

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lo/pa;->a:Landroid/content/Context;

    iget-object v1, p0, Lo/pa;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x0

    .line 232
    iput-boolean v0, p0, Lo/pa;->e:Z

    return-void
.end method

.method static synthetic j()J
    .locals 2

    .line 48
    sget-wide v0, Lo/pa;->c:J

    return-wide v0
.end method

.method private synthetic l()V
    .locals 0

    .line 73
    invoke-direct {p0}, Lo/pa;->g()V

    return-void
.end method


# virtual methods
.method public b()Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/pb;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "offlineStorageMonitor"

    const-string v0, "buildOfflineStorageVolumeInfoList"

    .line 156
    invoke-static {v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    sget-object v0, Lo/pa;->i:Lo/pa$StateListAnimator;

    iget-object v0, v0, Lo/pa$StateListAnimator;->mExternalStorageInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 158
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 159
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 160
    iget-object v0, v1, Lo/pa;->a:Landroid/content/Context;

    sget-object v5, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 162
    iget-object v0, v1, Lo/pa;->a:Landroid/content/Context;

    const-string v6, "storage"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/os/storage/StorageManager;

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 163
    :goto_0
    array-length v0, v5

    if-ge v14, v0, :cond_9

    const/4 v15, 0x1

    new-array v0, v15, [Ljava/lang/Object;

    .line 164
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v13

    const-string v6, "\n i=%d"

    invoke-static {v2, v6, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 165
    aget-object v9, v5, v14

    if-nez v9, :cond_0

    const-string v0, "downloadDir null, ignore"

    .line 167
    invoke-static {v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v7, 0x0

    goto/16 :goto_8

    .line 170
    :cond_0
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    move-result v0

    new-array v6, v15, [Ljava/lang/Object;

    .line 172
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v6, v13

    const-string v0, "mkdirsResult=%b"

    invoke-static {v2, v0, v6}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 173
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "downloadDir still doesn\'t exist, ignore"

    .line 174
    invoke-static {v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 178
    :cond_1
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v15, [Ljava/lang/Object;

    .line 179
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v13

    const-string v6, "downloadDir duplicate %s"

    invoke-static {v2, v6, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 182
    :cond_2
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-static {v9}, Lo/aed;->e(Ljava/io/File;)Landroid/os/StatFs;

    move-result-object v10

    if-nez v10, :cond_3

    const-string v0, "statFs null, ignore"

    .line 185
    invoke-static {v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string v0, ""

    if-eqz v14, :cond_4

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    .line 191
    :goto_2
    invoke-static {v9}, Lo/pa;->e(Ljava/io/File;)Z

    move-result v7

    const-wide/16 v16, -0x1

    .line 194
    :try_start_0
    invoke-static {v9}, Landroid/os/Environment;->isExternalStorageRemovable(Ljava/io/File;)Z

    move-result v6

    .line 195
    invoke-static {v9}, Landroid/os/Environment;->isExternalStorageEmulated(Ljava/io/File;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v7, :cond_5

    goto :goto_3

    .line 197
    :cond_5
    :try_start_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v11

    .line 198
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v13

    .line 199
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v18, v0

    :try_start_2
    const-string v0, "appUid="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " dirUid="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v13, Landroid/system/StructStat;->st_uid:I

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " dirGid="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v13, Landroid/system/StructStat;->st_gid:I

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    const-string v11, "dbgInfo=%s"

    const/4 v13, 0x1

    new-array v15, v13, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v0, v15, v13

    .line 200
    invoke-static {v2, v11, v15}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 202
    :goto_3
    invoke-static {v9}, Lo/adk;->e(Ljava/io/File;)J

    move-result-wide v15
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v23, v0

    move/from16 v17, v6

    move/from16 v20, v8

    move-wide/from16 v21, v15

    goto :goto_5

    :catch_0
    move-object/from16 v18, v0

    goto :goto_4

    :catch_1
    move-object/from16 v18, v0

    const/4 v8, 0x0

    :catch_2
    :goto_4
    move/from16 v20, v8

    move-wide/from16 v21, v16

    move-object/from16 v23, v18

    move/from16 v17, v6

    .line 207
    :goto_5
    new-instance v0, Lo/pa$Application;

    if-nez v14, :cond_6

    const/16 v18, 0x1

    goto :goto_6

    :cond_6
    const/16 v18, 0x0

    :goto_6
    move-object/from16 v16, v0

    move/from16 v19, v7

    invoke-direct/range {v16 .. v23}, Lo/pa$Application;-><init>(ZZZZJLjava/lang/String;)V

    .line 208
    sget-object v6, Lo/pa;->i:Lo/pa$StateListAnimator;

    invoke-virtual {v6, v0}, Lo/pa$StateListAnimator;->b(Lo/pa$Application;)V

    if-nez v7, :cond_7

    const-string v0, "downloadDir not writable, ignore"

    .line 211
    invoke-static {v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 216
    :cond_7
    :try_start_4
    new-instance v0, Lo/pb;

    iget-object v7, v1, Lo/pa;->a:Landroid/content/Context;

    if-nez v14, :cond_8

    const/4 v11, 0x1

    goto :goto_7

    :cond_8
    const/4 v11, 0x0

    :goto_7
    move-object v6, v0

    move-object v8, v12

    invoke-direct/range {v6 .. v11}, Lo/pb;-><init>(Landroid/content/Context;Landroid/os/storage/StorageManager;Ljava/io/File;Landroid/os/StatFs;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 221
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :catch_3
    move-exception v0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const-string v0, "OfflineStorageVolumeInfo constructor returned "

    .line 218
    invoke-static {v2, v0, v6}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_8
    add-int/lit8 v14, v14, 0x1

    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_9
    return-object v4
.end method

.method public d()V
    .locals 0

    .line 130
    invoke-direct {p0}, Lo/pa;->h()V

    return-void
.end method

.method public e()V
    .locals 0

    .line 135
    invoke-direct {p0}, Lo/pa;->i()V

    return-void
.end method
