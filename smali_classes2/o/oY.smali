.class public Lo/oY;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;


# instance fields
.field private a:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/pe;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/content/Context;

.field private final d:Lo/zZ;

.field private final e:Lo/BJ;

.field private g:Lo/pe;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/oV;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/oY;->b:Ljava/util/List;

    .line 52
    new-instance v0, Lo/zZ;

    invoke-direct {v0}, Lo/zZ;-><init>()V

    iput-object v0, p0, Lo/oY;->d:Lo/zZ;

    .line 54
    sget-object v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;->b:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;

    iput-object v0, p0, Lo/oY;->a:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lo/oY;->g:Lo/pe;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/oY;->h:Ljava/util/List;

    .line 111
    iput-object p1, p0, Lo/oY;->c:Landroid/content/Context;

    .line 112
    sget-object v0, Lo/BJ;->c:Lo/BJ$TaskDescription;

    sget-object v1, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->a:Lcom/netflix/mediaclient/storage/db/OfflineDatabase$Activity;

    invoke-virtual {v1, p1}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase$Activity;->b(Landroid/content/Context;)Lcom/netflix/mediaclient/storage/db/OfflineDatabase;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/BJ$TaskDescription;->b(Lcom/netflix/mediaclient/storage/db/OfflineDatabase;)Lo/BJ;

    move-result-object p1

    iput-object p1, p0, Lo/oY;->e:Lo/BJ;

    return-void
.end method

.method private a(Ljava/io/File;)Ljava/lang/Integer;
    .locals 7

    const-string v0, "nf_offline_registry"

    .line 210
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/pi;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 213
    :try_start_0
    invoke-static {v1}, Lo/pj;->b(Ljava/io/File;)V

    .line 214
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "regId"

    if-eqz v4, :cond_0

    :try_start_1
    const-string v4, "buildRegistryIdFromFile read existing file"

    .line 215
    invoke-static {v0, v4}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-static {v1}, Lo/adE;->c(Ljava/io/File;)[B

    move-result-object v4

    const-string v6, "utf-8"

    invoke-static {v4, v6}, Lo/aev;->c([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 217
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 219
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    .line 222
    :cond_0
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    .line 223
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 224
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 225
    invoke-virtual {v6, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 226
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lo/pj;->d(Ljava/io/File;Ljava/lang/String;)Z

    move-result v4

    const-string v5, "buildRegistryIdFromFile creating registry.json registrySaved=%b"

    new-array v6, v2, [Ljava/lang/Object;

    .line 227
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v6, p1

    invoke-static {v0, v5, v6}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 233
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v5

    const-string v6, "buildRegistryIdFromFile"

    invoke-interface {v5, v6, v4}, Lo/SpinnerAdapter;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 235
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_1
    :goto_0
    new-array v1, v2, [Ljava/lang/Object;

    aput-object v3, v1, p1

    const-string p1, "buildRegistryIdFromFile regId=%d"

    .line 239
    invoke-static {v0, p1, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v3
.end method

.method private static a(Lo/BJ;Ljava/util/List;Ljava/util/List;ILjava/io/File;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BJ;",
            "Ljava/util/List<",
            "Lo/oV;",
            ">;",
            "Ljava/util/List<",
            "Lo/oV;",
            ">;I",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 412
    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    .line 413
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/oV;

    .line 414
    invoke-virtual {v1}, Lo/oV;->aa()I

    move-result v2

    if-eq v2, p3, :cond_0

    goto :goto_0

    .line 417
    :cond_0
    invoke-virtual {v1}, Lo/oV;->Z()Lo/Cc;

    move-result-object v2

    .line 418
    invoke-virtual {v1}, Lo/oV;->w()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v3

    .line 419
    invoke-virtual {v1}, Lo/oV;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {p4, v4}, Lo/pi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 420
    sget-object v5, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->d:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "nf_offline_registry"

    if-eq v3, v5, :cond_4

    sget-object v5, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->j:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-eq v3, v5, :cond_4

    sget-object v5, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->g:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-eq v3, v5, :cond_4

    invoke-virtual {v1}, Lo/oV;->ac()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 424
    :cond_1
    sget-object v5, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->f:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v3, v5, :cond_2

    new-array v2, v6, [Ljava/lang/Object;

    .line 425
    invoke-virtual {v1}, Lo/oV;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v8

    aput-object v3, v2, v7

    const-string v1, "buildOpeListsFrom keeping deleted Item %s state=%s"

    invoke-static {v9, v1, v2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 426
    :cond_2
    invoke-static {v4}, Lo/adE;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    new-array v4, v6, [Ljava/lang/Object;

    .line 427
    invoke-virtual {v1}, Lo/oV;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v8

    aput-object v3, v4, v7

    const-string v1, "buildOpeListsFrom skip %s without playable directory state=%s"

    invoke-static {v9, v1, v4}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 428
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 430
    :cond_3
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 421
    :cond_4
    :goto_1
    invoke-static {v4}, Lo/ph;->e(Ljava/lang/String;)Z

    move-result v2

    .line 422
    invoke-virtual {v1}, Lo/oV;->Z()Lo/Cc;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    .line 423
    invoke-virtual {v1}, Lo/oV;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v8

    aput-object v4, v5, v7

    aput-object v3, v5, v6

    const/4 v1, 0x3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v1

    const-string v1, "buildOpeListsFrom deleting %s downloads path=%s state=%s success=%b"

    invoke-static {v9, v1, v5}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 433
    :cond_5
    invoke-virtual {p0, v0}, Lo/BJ;->d(Ljava/util/List;)V

    return-void
.end method

.method static synthetic b(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lo/oY;->c(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic c(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const-string p0, "falkor.realm.*"

    .line 518
    invoke-virtual {p1, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "offline.realm.*"

    invoke-virtual {p1, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private e(Lo/pa;)Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;
    .locals 12

    const-string v0, "nf_offline_registry"

    .line 137
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lo/oY;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lo/pi;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 140
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 143
    :goto_0
    sget-object v2, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;->b:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;

    iput-object v2, p0, Lo/oY;->a:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;

    .line 144
    iget-object v2, p0, Lo/oY;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 145
    iget-object v2, p0, Lo/oY;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 147
    :try_start_0
    iget-object v2, p0, Lo/oY;->e:Lo/BJ;

    invoke-static {v2}, Lo/pd;->b(Lo/BJ;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lo/oY;->h:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-array v2, v3, [Ljava/lang/Object;

    .line 155
    iget-object v5, p0, Lo/oY;->h:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const-string v5, "postMigrateInit count=%d"

    invoke-static {v0, v5, v2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 156
    invoke-virtual {p1}, Lo/pa;->b()Ljava/util/List;

    move-result-object p1

    .line 157
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lo/pb;

    .line 158
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lo/pb;->c()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/.of"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_2

    .line 160
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_2

    new-array v5, v3, [Ljava/lang/Object;

    .line 161
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v4

    const-string v2, "OfflineRegistry can\'t create directory %s"

    invoke-static {v0, v2, v5}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 166
    :cond_2
    invoke-direct {p0, v2}, Lo/oY;->a(Ljava/io/File;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_1

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v5, v6, v4

    const-string v7, "postMigrateInit %d"

    .line 168
    invoke-static {v0, v7, v6}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 169
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 171
    iget-object v6, p0, Lo/oY;->e:Lo/BJ;

    iget-object v9, p0, Lo/oY;->h:Ljava/util/List;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v6, v7, v9, v10, v2}, Lo/oY;->a(Lo/BJ;Ljava/util/List;Ljava/util/List;ILjava/io/File;)V

    if-eqz v1, :cond_3

    .line 173
    iget-object v6, p0, Lo/oY;->h:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "postMigrateInit deleting pre-room"

    .line 174
    invoke-static {v0, v6}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-static {v2}, Lo/adE;->d(Ljava/io/File;)Z

    .line 176
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 180
    :cond_3
    new-instance v11, Lo/pe;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    move-object v5, v11

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lo/pe;-><init>(Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;Ljava/util/List;Lo/pb;ILjava/lang/String;)V

    .line 181
    iget-object v2, p0, Lo/oY;->b:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 185
    :cond_4
    iget-object p1, p0, Lo/oY;->d:Lo/zZ;

    iget-object v1, p0, Lo/oY;->b:Ljava/util/List;

    invoke-virtual {p1, v1}, Lo/zZ;->e(Ljava/util/List;)V

    .line 187
    iget-object p1, p0, Lo/oY;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 188
    sget-object p1, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;->a:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;

    iput-object p1, p0, Lo/oY;->a:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;

    .line 189
    iget-object p1, p0, Lo/oY;->b:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/pe;

    iput-object p1, p0, Lo/oY;->g:Lo/pe;

    .line 190
    iget-object p1, p0, Lo/oY;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/pe;

    .line 191
    iget-object v2, p0, Lo/oY;->c:Landroid/content/Context;

    invoke-virtual {v1}, Lo/pe;->i()I

    move-result v5

    invoke-static {v2, v5}, Lo/oZ;->a(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_5

    new-array p1, v3, [Ljava/lang/Object;

    .line 192
    invoke-virtual {v1}, Lo/pe;->i()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v4

    const-string v2, "found selected regId=%d"

    invoke-static {v0, v2, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 193
    iput-object v1, p0, Lo/oY;->g:Lo/pe;

    goto :goto_2

    .line 198
    :cond_6
    sget-object p1, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;->d:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;

    iput-object p1, p0, Lo/oY;->a:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;

    .line 200
    :cond_7
    :goto_2
    iget-object p1, p0, Lo/oY;->a:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;

    sget-object v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;->a:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;

    if-ne p1, v0, :cond_8

    .line 201
    const-class p1, Lcom/netflix/mediaclient/media/BookmarkStore;

    invoke-static {p1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/media/BookmarkStore;

    iget-object v0, p0, Lo/oY;->c:Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/media/BookmarkStore;->init(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 203
    sget-object p1, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;->c:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;

    iput-object p1, p0, Lo/oY;->a:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;

    .line 206
    :cond_8
    iget-object p1, p0, Lo/oY;->a:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;

    return-object p1

    :catch_0
    move-exception p1

    const-string v1, "postMigrateInit getAllData:"

    .line 149
    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    sget-object v0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->a:Lcom/netflix/mediaclient/storage/db/OfflineDatabase$Activity;

    iget-object v1, p0, Lo/oY;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase$Activity;->a(Landroid/content/Context;Ljava/lang/Exception;)V

    .line 151
    sget-object p1, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;->c:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;

    iput-object p1, p0, Lo/oY;->a:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;

    .line 152
    iget-object p1, p0, Lo/oY;->a:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;

    return-object p1
.end method

.method private s()V
    .locals 4

    .line 517
    :try_start_0
    iget-object v0, p0, Lo/oY;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    sget-object v1, Lo/oX;->c:Lo/oX;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 521
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 522
    invoke-static {v3}, Lo/adE;->d(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 270
    iget-object v0, p0, Lo/oY;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 334
    iget-object v0, p0, Lo/oY;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Lo/oZ;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/oC;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 444
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "nf_offline_registry"

    const-string v2, "deleteOpds count=%d addToDeletedList=%b"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 445
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 446
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/oC;

    .line 448
    move-object v3, v2

    check-cast v3, Lo/oV;

    .line 449
    invoke-virtual {v3}, Lo/oV;->Z()Lo/Cc;

    move-result-object v4

    .line 450
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p2, :cond_1

    .line 453
    iget-object v4, p0, Lo/oY;->h:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 456
    :cond_1
    iget-object v3, p0, Lo/oY;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/pe;

    .line 457
    invoke-interface {v2}, Lo/oC;->i()I

    move-result v5

    invoke-virtual {v4}, Lo/pe;->i()I

    move-result v6

    if-eq v5, v6, :cond_2

    goto :goto_0

    .line 460
    :cond_2
    invoke-virtual {v4, v2}, Lo/pe;->b(Lo/oC;)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    const-string p1, "deleteOpds updating"

    .line 471
    invoke-static {v1, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object p1, p0, Lo/oY;->e:Lo/BJ;

    invoke-virtual {p1, v0}, Lo/BJ;->e(Ljava/util/List;)V

    goto :goto_2

    :cond_4
    const-string p1, "deleteOpds deleting"

    .line 475
    invoke-static {v1, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object p1, p0, Lo/oY;->e:Lo/BJ;

    invoke-virtual {p1, v0}, Lo/BJ;->d(Ljava/util/List;)V

    .line 477
    iget-object p1, p0, Lo/oY;->e:Lo/BJ;

    invoke-virtual {p1}, Lo/BJ;->c()Ljava/util/List;

    move-result-object p1

    .line 478
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/Cc;

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteOpds after delete, reading "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lo/Cc;->e:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method

.method public a(Lo/oC;)V
    .locals 3

    .line 500
    check-cast p1, Lo/oV;

    invoke-virtual {p1}, Lo/oV;->Z()Lo/Cc;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 501
    iget-object v1, p1, Lo/Cc;->e:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "nf_offline_registry"

    const-string v2, "onChanged %s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 502
    iget-object v0, p0, Lo/oY;->e:Lo/BJ;

    invoke-virtual {v0, p1}, Lo/BJ;->c(Lo/Cc;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 276
    iget-object v0, p0, Lo/oY;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Lo/oZ;->e(Landroid/content/Context;Z)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 248
    iget-object v0, p0, Lo/oY;->h:Ljava/util/List;

    iget-object v1, p0, Lo/oY;->e:Lo/BJ;

    invoke-static {v0, v1}, Lo/pd;->c(Ljava/util/List;Lo/BJ;)V

    return-void
.end method

.method public b(Lo/oC;)V
    .locals 1

    .line 348
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lo/oY;->a(Ljava/util/List;Z)V

    return-void
.end method

.method public c()Z
    .locals 2

    .line 253
    iget-object v0, p0, Lo/oY;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/pe;

    .line 254
    invoke-virtual {v1}, Lo/pe;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public d()Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;
    .locals 1

    .line 82
    iget-object v0, p0, Lo/oY;->a:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;

    return-object v0
.end method

.method public d(Lo/pa;)Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;
    .locals 0

    .line 129
    invoke-direct {p0}, Lo/oY;->s()V

    .line 130
    invoke-direct {p0, p1}, Lo/oY;->e(Lo/pa;)Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized d(Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/oC;
    .locals 5

    monitor-enter p0

    .line 63
    :try_start_0
    iget-object v0, p0, Lo/oY;->g:Lo/pe;

    invoke-virtual {v0}, Lo/pe;->i()I

    move-result v0

    .line 65
    iget-object v1, p0, Lo/oY;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 66
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/oV;

    .line 68
    invoke-virtual {v2}, Lo/oV;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lo/oV;->aa()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 69
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 72
    :cond_1
    invoke-static {p1, p2, p3, p4, v0}, Lo/pd;->d(Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lo/Cc;

    move-result-object p1

    .line 73
    new-instance p2, Lo/oV;

    invoke-direct {p2, p1}, Lo/oV;-><init>(Lo/Cc;)V

    .line 74
    iget-object p1, p0, Lo/oY;->g:Lo/pe;

    invoke-virtual {p1, p2}, Lo/pe;->d(Lo/oC;)V

    .line 75
    iget-object p1, p0, Lo/oY;->h:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 339
    iget-object v0, p0, Lo/oY;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Lo/oZ;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/ov;",
            ">;)V"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lo/oY;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/pe;

    const-wide/16 v2, 0x0

    .line 94
    invoke-virtual {v1, v2, v3}, Lo/pe;->e(J)V

    goto :goto_0

    .line 96
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ov;

    .line 97
    invoke-interface {v0}, Lo/ov;->v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->e:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-eq v1, v2, :cond_1

    .line 98
    iget-object v1, p0, Lo/oY;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/pe;

    .line 99
    invoke-interface {v0}, Lo/ov;->w()J

    move-result-wide v3

    invoke-interface {v0}, Lo/ov;->x()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 100
    invoke-interface {v0}, Lo/ov;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lo/pe;->d()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 101
    invoke-virtual {v2}, Lo/pe;->d()Ljava/io/File;

    move-result-object v5

    aput-object v5, v0, v1

    const/4 v1, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v0, v1

    const-string v1, "nf_offline_registry"

    const-string v5, "storageVolume=%s dataRemaining=%d"

    invoke-static {v1, v5, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 102
    invoke-virtual {v2, v3, v4}, Lo/pe;->b(J)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public d(Lo/oC;)V
    .locals 3

    .line 488
    iget-object v0, p0, Lo/oY;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 490
    iget-object p1, p0, Lo/oY;->e:Lo/BJ;

    iget-object v1, p0, Lo/oY;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/oV;

    invoke-virtual {v1}, Lo/oV;->Z()Lo/Cc;

    move-result-object v1

    invoke-virtual {p1, v1}, Lo/BJ;->c(Lo/Cc;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 491
    iget-object v2, p0, Lo/oY;->h:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/oV;

    invoke-virtual {v0}, Lo/oV;->Z()Lo/Cc;

    move-result-object v0

    iget-object v0, v0, Lo/Cc;->e:Ljava/lang/String;

    aput-object v0, p1, v1

    const-string v0, "nf_offline_registry"

    const-string v1, "persistNewItem %s"

    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 493
    :cond_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "persistNewItem not found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lo/oC;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized d(Lo/oC;Z)V
    .locals 0

    monitor-enter p0

    .line 319
    :try_start_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lo/oY;->a(Ljava/util/List;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public d(I)Z
    .locals 3

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    .line 298
    iget-object v1, p0, Lo/oY;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 299
    iget-object v1, p0, Lo/oY;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/pe;

    iput-object p1, p0, Lo/oY;->g:Lo/pe;

    .line 300
    iget-object p1, p0, Lo/oY;->c:Landroid/content/Context;

    iget-object v1, p0, Lo/oY;->g:Lo/pe;

    invoke-virtual {v1}, Lo/pe;->i()I

    move-result v1

    invoke-static {p1, v1}, Lo/oZ;->e(Landroid/content/Context;I)V

    return v0

    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    .line 303
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "nf_offline_registry"

    const-string v2, "setCurrentOfflineVolume invalid selectedVolumeIndex=%d"

    invoke-static {p1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v1
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/pe;",
            ">;"
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lo/oY;->b:Ljava/util/List;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 281
    iget-object v0, p0, Lo/oY;->c:Landroid/content/Context;

    invoke-static {v0}, Lo/oZ;->e(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 310
    iget-object v0, p0, Lo/oY;->g:Lo/pe;

    invoke-virtual {v0}, Lo/pe;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()I
    .locals 1

    .line 292
    iget-object v0, p0, Lo/oY;->d:Lo/zZ;

    invoke-virtual {v0}, Lo/zZ;->d()I

    move-result v0

    return v0
.end method

.method public i()Lo/Bg;
    .locals 1

    .line 287
    iget-object v0, p0, Lo/oY;->d:Lo/zZ;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 324
    iget-object v0, p0, Lo/oY;->c:Landroid/content/Context;

    invoke-static {v0}, Lo/oZ;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()V
    .locals 2

    .line 354
    iget-object v0, p0, Lo/oY;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/pe;

    .line 355
    invoke-virtual {v1}, Lo/pe;->k()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public l()Z
    .locals 1

    .line 399
    iget-object v0, p0, Lo/oY;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 329
    iget-object v0, p0, Lo/oY;->c:Landroid/content/Context;

    invoke-static {v0}, Lo/oZ;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/oC;",
            ">;"
        }
    .end annotation

    .line 379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 380
    iget-object v1, p0, Lo/oY;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/oV;

    .line 381
    invoke-virtual {v2}, Lo/oV;->w()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v3

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->g:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Lo/oV;->w()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v3

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->f:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v3, v4, :cond_0

    .line 382
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public o()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/oC;",
            ">;"
        }
    .end annotation

    .line 363
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 364
    iget-object v1, p0, Lo/oY;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/oV;

    .line 365
    invoke-virtual {v2}, Lo/oV;->w()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v3

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->g:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-eq v3, v4, :cond_0

    .line 366
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public p()I
    .locals 1

    .line 438
    iget-object v0, p0, Lo/oY;->g:Lo/pe;

    invoke-virtual {v0}, Lo/pe;->i()I

    move-result v0

    return v0
.end method
