.class public final Lo/BQ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/BN;


# instance fields
.field private final c:Landroidx/room/RoomDatabase;

.field private final d:Landroidx/room/EntityInsertionAdapter;

.field private final e:Landroidx/room/EntityDeletionOrUpdateAdapter;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lo/BQ;->c:Landroidx/room/RoomDatabase;

    .line 27
    new-instance v0, Lo/BQ$1;

    invoke-direct {v0, p0, p1}, Lo/BQ$1;-><init>(Lo/BQ;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lo/BQ;->d:Landroidx/room/EntityInsertionAdapter;

    .line 166
    new-instance v0, Lo/BQ$5;

    invoke-direct {v0, p0, p1}, Lo/BQ$5;-><init>(Lo/BQ;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lo/BQ;->e:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 48
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/Cc;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "SELECT * FROM offlinePlayable"

    .line 231
    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    move-object/from16 v2, p0

    .line 232
    iget-object v3, v2, Lo/BQ;->c:Landroidx/room/RoomDatabase;

    invoke-virtual {v3, v1}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v4, "playableId"

    .line 234
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "regId"

    .line 235
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "profileId"

    .line 236
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "videoType"

    .line 237
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "videoQuality"

    .line 238
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "audioTracks"

    .line 239
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "videoTracks"

    .line 240
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "subtitleTracks"

    .line 241
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "trickPlays"

    .line 242
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v13, "downloadStateValue"

    .line 243
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string v14, "dlStateBeforeDelete"

    .line 244
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    const-string v15, "stopReasonValue"

    .line 245
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    const-string v0, "geoBlocked"

    .line 246
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const-string v2, "dxId"

    .line 247
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v1

    :try_start_1
    const-string v1, "pcTrackId"

    .line 248
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "pcVideoPos"

    .line 249
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "pcListPos"

    .line 250
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    const-string v1, "dcRequestId"

    .line 251
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v20, v1

    const-string v1, "dcInitTimeMs"

    .line 252
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v21, v1

    const-string v1, "oxId"

    .line 253
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v22, v1

    const-string v1, "playStartTime"

    .line 254
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v23, v1

    const-string v1, "errorCode"

    .line 255
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v24, v1

    const-string v1, "errorString"

    .line 256
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v25, v1

    const-string v1, "downloadRequestType"

    .line 257
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v26, v1

    const-string v1, "stateTime"

    .line 258
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v27, v1

    const-string v1, "keySetId"

    .line 259
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v28, v1

    const-string v1, "expirationTime"

    .line 260
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v29, v1

    const-string v1, "licenseDate"

    .line 261
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v30, v1

    const-string v1, "playableWindowMs"

    .line 262
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v31, v1

    const-string v1, "resettable"

    .line 263
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v32, v1

    const-string v1, "shouldRefresh"

    .line 264
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v33, v1

    const-string v1, "viewingWindow"

    .line 265
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v34, v1

    const-string v1, "playWindowResetLimit"

    .line 266
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v35, v1

    const-string v1, "refreshLicenseTimestamp"

    .line 267
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v36, v1

    const-string v1, "shouldUsePlayWindowLimits"

    .line 268
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v37, v1

    const-string v1, "mShouldRefreshByTimestamp"

    .line 269
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v38, v1

    const-string v1, "activate"

    .line 270
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v39, v1

    const-string v1, "linkDeactivate"

    .line 271
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v40, v1

    const-string v1, "linkRefresh"

    .line 272
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v41, v1

    const-string v1, "convertLicense"

    .line 273
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v42, v1

    const-string v1, "overrideRequiresUnmeteredNetwork"

    .line 274
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v43, v1

    .line 275
    new-instance v1, Ljava/util/ArrayList;

    move/from16 v44, v2

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 276
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 278
    new-instance v2, Lo/Cc;

    invoke-direct {v2}, Lo/Cc;-><init>()V

    move-object/from16 v45, v1

    .line 279
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lo/Cc;->e:Ljava/lang/String;

    .line 280
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v2, Lo/Cc;->d:I

    .line 281
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lo/Cc;->b:Ljava/lang/String;

    .line 282
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v2, Lo/Cc;->a:I

    .line 283
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lo/Cc;->c:Ljava/lang/String;

    .line 285
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 286
    invoke-static {v1}, Lo/BF;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v2, Lo/Cc;->j:Ljava/util/List;

    .line 288
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 289
    invoke-static {v1}, Lo/BF;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v2, Lo/Cc;->h:Ljava/util/List;

    .line 291
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 292
    invoke-static {v1}, Lo/BF;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v2, Lo/Cc;->i:Ljava/util/List;

    .line 294
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 295
    invoke-static {v1}, Lo/BF;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v2, Lo/Cc;->f:Ljava/util/List;

    .line 296
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v2, Lo/Cc;->g:I

    .line 297
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v2, Lo/Cc;->n:I

    .line 298
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v2, Lo/Cc;->l:I

    .line 300
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/16 v46, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 301
    :goto_1
    iput-boolean v1, v2, Lo/Cc;->o:Z

    move/from16 v1, v44

    move/from16 v44, v0

    .line 302
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lo/Cc;->m:Ljava/lang/String;

    move/from16 v0, v17

    move/from16 v17, v1

    .line 303
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v2, Lo/Cc;->k:I

    move/from16 v1, v18

    move/from16 v18, v0

    .line 304
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lo/Cc;->r:I

    move/from16 v0, v19

    move/from16 v19, v1

    .line 305
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v2, Lo/Cc;->p:I

    move/from16 v1, v20

    move/from16 v20, v0

    .line 306
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lo/Cc;->t:Ljava/lang/String;

    move/from16 v47, v5

    move/from16 v0, v21

    move/from16 v21, v4

    .line 307
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lo/Cc;->q:J

    move/from16 v4, v22

    .line 308
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lo/Cc;->s:Ljava/lang/String;

    move/from16 v22, v1

    move/from16 v5, v23

    move/from16 v23, v0

    .line 309
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v2, Lo/Cc;->y:J

    move/from16 v0, v24

    .line 310
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v2, Lo/Cc;->u:I

    move/from16 v24, v0

    move/from16 v1, v25

    .line 311
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lo/Cc;->x:Ljava/lang/String;

    move/from16 v25, v1

    move/from16 v0, v26

    .line 312
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lo/Cc;->v:Ljava/lang/String;

    move/from16 v26, v4

    move/from16 v1, v27

    move/from16 v27, v5

    .line 313
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lo/Cc;->w:J

    move/from16 v4, v28

    .line 314
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lo/Cc;->B:Ljava/lang/String;

    move/from16 v28, v0

    move/from16 v5, v29

    move/from16 v29, v1

    .line 315
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v2, Lo/Cc;->C:J

    move v1, v4

    move/from16 v0, v30

    move/from16 v30, v5

    .line 316
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lo/Cc;->z:J

    move v5, v0

    move/from16 v4, v31

    move/from16 v31, v1

    .line 317
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v2, Lo/Cc;->A:J

    move/from16 v0, v32

    .line 319
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    .line 320
    :goto_2
    iput-boolean v1, v2, Lo/Cc;->D:Z

    move/from16 v1, v33

    .line 322
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    if-eqz v32, :cond_2

    move/from16 v32, v0

    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    move/from16 v32, v0

    const/4 v0, 0x0

    .line 323
    :goto_3
    iput-boolean v0, v2, Lo/Cc;->F:Z

    move/from16 v33, v4

    move/from16 v0, v34

    move/from16 v34, v5

    .line 324
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lo/Cc;->I:J

    move v5, v1

    move/from16 v4, v35

    move/from16 v35, v0

    .line 325
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v2, Lo/Cc;->E:J

    move v1, v4

    move/from16 v0, v36

    move/from16 v36, v5

    .line 326
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lo/Cc;->H:J

    move/from16 v4, v37

    .line 328
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_4

    :cond_3
    const/4 v5, 0x0

    .line 329
    :goto_4
    iput-boolean v5, v2, Lo/Cc;->G:Z

    move/from16 v5, v38

    .line 331
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    if-eqz v37, :cond_4

    move/from16 v37, v0

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    move/from16 v37, v0

    const/4 v0, 0x0

    .line 332
    :goto_5
    iput-boolean v0, v2, Lo/Cc;->K:Z

    move/from16 v38, v1

    move/from16 v0, v39

    .line 333
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lo/Cc;->M:Ljava/lang/String;

    move/from16 v39, v0

    move/from16 v1, v40

    .line 334
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lo/Cc;->L:Ljava/lang/String;

    move/from16 v40, v1

    move/from16 v0, v41

    .line 335
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lo/Cc;->N:Ljava/lang/String;

    move/from16 v41, v0

    move/from16 v1, v42

    .line 336
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lo/Cc;->J:Ljava/lang/String;

    move/from16 v0, v43

    .line 338
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v42

    move/from16 v43, v0

    if-eqz v42, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    .line 339
    :goto_6
    iput-boolean v0, v2, Lo/Cc;->S:Z

    move-object/from16 v0, v45

    .line 340
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v42, v1

    move-object v1, v0

    move/from16 v0, v44

    move/from16 v44, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v22

    move/from16 v22, v26

    move/from16 v26, v28

    move/from16 v28, v31

    move/from16 v31, v33

    move/from16 v33, v36

    move/from16 v36, v37

    move/from16 v37, v4

    move/from16 v4, v21

    move/from16 v21, v23

    move/from16 v23, v27

    move/from16 v27, v29

    move/from16 v29, v30

    move/from16 v30, v34

    move/from16 v34, v35

    move/from16 v35, v38

    move/from16 v38, v5

    move/from16 v5, v47

    goto/16 :goto_0

    :cond_6
    move-object v0, v1

    .line 344
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 345
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v16, v1

    .line 344
    :goto_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 345
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 346
    throw v0
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Cc;",
            ">;)V"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lo/BQ;->c:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 199
    :try_start_0
    iget-object v0, p0, Lo/BQ;->d:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Iterable;)V

    .line 200
    iget-object p1, p0, Lo/BQ;->c:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    iget-object p1, p0, Lo/BQ;->c:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lo/BQ;->c:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 203
    throw p1
.end method

.method public b(Lo/Cc;)V
    .locals 1

    .line 186
    iget-object v0, p0, Lo/BQ;->c:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 188
    :try_start_0
    iget-object v0, p0, Lo/BQ;->d:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 189
    iget-object p1, p0, Lo/BQ;->c:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    iget-object p1, p0, Lo/BQ;->c:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lo/BQ;->c:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 192
    throw p1
.end method

.method public c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Cc;",
            ">;)V"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lo/BQ;->c:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 221
    :try_start_0
    iget-object v0, p0, Lo/BQ;->e:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handleMultiple(Ljava/lang/Iterable;)I

    .line 222
    iget-object p1, p0, Lo/BQ;->c:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    iget-object p1, p0, Lo/BQ;->c:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lo/BQ;->c:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 225
    throw p1
.end method
