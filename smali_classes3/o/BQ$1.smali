.class Lo/BQ$1;
.super Landroidx/room/EntityInsertionAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/BQ;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lo/Cc;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/BQ;


# direct methods
.method constructor <init>(Lo/BQ;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lo/BQ$1;->c:Lo/BQ;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p2, Lo/Cc;

    invoke-virtual {p0, p1, p2}, Lo/BQ$1;->e(Landroidx/sqlite/db/SupportSQLiteStatement;Lo/Cc;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `offlinePlayable`(`playableId`,`regId`,`profileId`,`videoType`,`videoQuality`,`audioTracks`,`videoTracks`,`subtitleTracks`,`trickPlays`,`downloadStateValue`,`dlStateBeforeDelete`,`stopReasonValue`,`geoBlocked`,`dxId`,`pcTrackId`,`pcVideoPos`,`pcListPos`,`dcRequestId`,`dcInitTimeMs`,`oxId`,`playStartTime`,`errorCode`,`errorString`,`downloadRequestType`,`stateTime`,`keySetId`,`expirationTime`,`licenseDate`,`playableWindowMs`,`resettable`,`shouldRefresh`,`viewingWindow`,`playWindowResetLimit`,`refreshLicenseTimestamp`,`shouldUsePlayWindowLimits`,`mShouldRefreshByTimestamp`,`activate`,`linkDeactivate`,`linkRefresh`,`convertLicense`,`overrideRequiresUnmeteredNetwork`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method

.method public e(Landroidx/sqlite/db/SupportSQLiteStatement;Lo/Cc;)V
    .locals 4

    .line 35
    iget-object v0, p2, Lo/Cc;->e:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 36
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p2, Lo/Cc;->e:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x2

    .line 40
    iget v1, p2, Lo/Cc;->d:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 41
    iget-object v0, p2, Lo/Cc;->b:Ljava/lang/String;

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 42
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 44
    :cond_1
    iget-object v0, p2, Lo/Cc;->b:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_1
    const/4 v0, 0x4

    .line 46
    iget v1, p2, Lo/Cc;->a:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 47
    iget-object v0, p2, Lo/Cc;->c:Ljava/lang/String;

    const/4 v1, 0x5

    if-nez v0, :cond_2

    .line 48
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 50
    :cond_2
    iget-object v0, p2, Lo/Cc;->c:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 53
    :goto_2
    iget-object v0, p2, Lo/Cc;->j:Ljava/util/List;

    invoke-static {v0}, Lo/BF;->d(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_3

    .line 55
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 57
    :cond_3
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 60
    :goto_3
    iget-object v0, p2, Lo/Cc;->h:Ljava/util/List;

    invoke-static {v0}, Lo/BF;->d(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_4

    .line 62
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 64
    :cond_4
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 67
    :goto_4
    iget-object v0, p2, Lo/Cc;->i:Ljava/util/List;

    invoke-static {v0}, Lo/BF;->d(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_5

    .line 69
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_5

    .line 71
    :cond_5
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 74
    :goto_5
    iget-object v0, p2, Lo/Cc;->f:Ljava/util/List;

    invoke-static {v0}, Lo/BF;->d(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    if-nez v0, :cond_6

    .line 76
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_6

    .line 78
    :cond_6
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_6
    const/16 v0, 0xa

    .line 80
    iget v1, p2, Lo/Cc;->g:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xb

    .line 81
    iget v1, p2, Lo/Cc;->n:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xc

    .line 82
    iget v1, p2, Lo/Cc;->l:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 84
    iget-boolean v0, p2, Lo/Cc;->o:Z

    const/16 v1, 0xd

    int-to-long v2, v0

    .line 85
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 86
    iget-object v0, p2, Lo/Cc;->m:Ljava/lang/String;

    const/16 v1, 0xe

    if-nez v0, :cond_7

    .line 87
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_7

    .line 89
    :cond_7
    iget-object v0, p2, Lo/Cc;->m:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_7
    const/16 v0, 0xf

    .line 91
    iget v1, p2, Lo/Cc;->k:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x10

    .line 92
    iget v1, p2, Lo/Cc;->r:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x11

    .line 93
    iget v1, p2, Lo/Cc;->p:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 94
    iget-object v0, p2, Lo/Cc;->t:Ljava/lang/String;

    const/16 v1, 0x12

    if-nez v0, :cond_8

    .line 95
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_8

    .line 97
    :cond_8
    iget-object v0, p2, Lo/Cc;->t:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_8
    const/16 v0, 0x13

    .line 99
    iget-wide v1, p2, Lo/Cc;->q:J

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 100
    iget-object v0, p2, Lo/Cc;->s:Ljava/lang/String;

    const/16 v1, 0x14

    if-nez v0, :cond_9

    .line 101
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_9

    .line 103
    :cond_9
    iget-object v0, p2, Lo/Cc;->s:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_9
    const/16 v0, 0x15

    .line 105
    iget-wide v1, p2, Lo/Cc;->y:J

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x16

    .line 106
    iget v1, p2, Lo/Cc;->u:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 107
    iget-object v0, p2, Lo/Cc;->x:Ljava/lang/String;

    const/16 v1, 0x17

    if-nez v0, :cond_a

    .line 108
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_a

    .line 110
    :cond_a
    iget-object v0, p2, Lo/Cc;->x:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 112
    :goto_a
    iget-object v0, p2, Lo/Cc;->v:Ljava/lang/String;

    const/16 v1, 0x18

    if-nez v0, :cond_b

    .line 113
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_b

    .line 115
    :cond_b
    iget-object v0, p2, Lo/Cc;->v:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_b
    const/16 v0, 0x19

    .line 117
    iget-wide v1, p2, Lo/Cc;->w:J

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 118
    iget-object v0, p2, Lo/Cc;->B:Ljava/lang/String;

    const/16 v1, 0x1a

    if-nez v0, :cond_c

    .line 119
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_c

    .line 121
    :cond_c
    iget-object v0, p2, Lo/Cc;->B:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_c
    const/16 v0, 0x1b

    .line 123
    iget-wide v1, p2, Lo/Cc;->C:J

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x1c

    .line 124
    iget-wide v1, p2, Lo/Cc;->z:J

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x1d

    .line 125
    iget-wide v1, p2, Lo/Cc;->A:J

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 127
    iget-boolean v0, p2, Lo/Cc;->D:Z

    const/16 v1, 0x1e

    int-to-long v2, v0

    .line 128
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 130
    iget-boolean v0, p2, Lo/Cc;->F:Z

    const/16 v1, 0x1f

    int-to-long v2, v0

    .line 131
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x20

    .line 132
    iget-wide v1, p2, Lo/Cc;->I:J

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x21

    .line 133
    iget-wide v1, p2, Lo/Cc;->E:J

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x22

    .line 134
    iget-wide v1, p2, Lo/Cc;->H:J

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 136
    iget-boolean v0, p2, Lo/Cc;->G:Z

    const/16 v1, 0x23

    int-to-long v2, v0

    .line 137
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 139
    iget-boolean v0, p2, Lo/Cc;->K:Z

    const/16 v1, 0x24

    int-to-long v2, v0

    .line 140
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 141
    iget-object v0, p2, Lo/Cc;->M:Ljava/lang/String;

    const/16 v1, 0x25

    if-nez v0, :cond_d

    .line 142
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_d

    .line 144
    :cond_d
    iget-object v0, p2, Lo/Cc;->M:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 146
    :goto_d
    iget-object v0, p2, Lo/Cc;->L:Ljava/lang/String;

    const/16 v1, 0x26

    if-nez v0, :cond_e

    .line 147
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_e

    .line 149
    :cond_e
    iget-object v0, p2, Lo/Cc;->L:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 151
    :goto_e
    iget-object v0, p2, Lo/Cc;->N:Ljava/lang/String;

    if-nez v0, :cond_f

    const/16 v0, 0x27

    .line 152
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_f

    :cond_f
    const/16 v0, 0x27

    .line 154
    iget-object v1, p2, Lo/Cc;->N:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 156
    :goto_f
    iget-object v0, p2, Lo/Cc;->J:Ljava/lang/String;

    if-nez v0, :cond_10

    const/16 v0, 0x28

    .line 157
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_10

    :cond_10
    const/16 v0, 0x28

    .line 159
    iget-object v1, p2, Lo/Cc;->J:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 162
    :goto_10
    iget-boolean p2, p2, Lo/Cc;->S:Z

    const/16 v0, 0x29

    int-to-long v1, p2

    .line 163
    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    return-void
.end method
