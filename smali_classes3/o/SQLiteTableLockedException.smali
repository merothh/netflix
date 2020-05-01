.class public Lo/SQLiteTableLockedException;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    .line 267
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 268
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static a(Lo/SQLiteStatementInfo;)Lcom/facebook/drawee/generic/RoundingParams;
    .locals 1

    .line 256
    invoke-virtual {p0}, Lo/SQLiteStatementInfo;->s()Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 257
    new-instance v0, Lcom/facebook/drawee/generic/RoundingParams;

    invoke-direct {v0}, Lcom/facebook/drawee/generic/RoundingParams;-><init>()V

    invoke-virtual {p0, v0}, Lo/SQLiteStatementInfo;->c(Lcom/facebook/drawee/generic/RoundingParams;)Lo/SQLiteStatementInfo;

    .line 259
    :cond_0
    invoke-virtual {p0}, Lo/SQLiteStatementInfo;->s()Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/res/TypedArray;I)Lo/SQLiteReadOnlyDatabaseException$Activity;
    .locals 1

    const/4 v0, -0x2

    .line 279
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    packed-switch p0, :pswitch_data_0

    .line 302
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "XML attribute not specified!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 299
    :pswitch_0
    sget-object p0, Lo/SQLiteReadOnlyDatabaseException$Activity;->g:Lo/SQLiteReadOnlyDatabaseException$Activity;

    return-object p0

    .line 297
    :pswitch_1
    sget-object p0, Lo/SQLiteReadOnlyDatabaseException$Activity;->h:Lo/SQLiteReadOnlyDatabaseException$Activity;

    return-object p0

    .line 295
    :pswitch_2
    sget-object p0, Lo/SQLiteReadOnlyDatabaseException$Activity;->i:Lo/SQLiteReadOnlyDatabaseException$Activity;

    return-object p0

    .line 293
    :pswitch_3
    sget-object p0, Lo/SQLiteReadOnlyDatabaseException$Activity;->f:Lo/SQLiteReadOnlyDatabaseException$Activity;

    return-object p0

    .line 291
    :pswitch_4
    sget-object p0, Lo/SQLiteReadOnlyDatabaseException$Activity;->e:Lo/SQLiteReadOnlyDatabaseException$Activity;

    return-object p0

    .line 289
    :pswitch_5
    sget-object p0, Lo/SQLiteReadOnlyDatabaseException$Activity;->a:Lo/SQLiteReadOnlyDatabaseException$Activity;

    return-object p0

    .line 287
    :pswitch_6
    sget-object p0, Lo/SQLiteReadOnlyDatabaseException$Activity;->d:Lo/SQLiteReadOnlyDatabaseException$Activity;

    return-object p0

    .line 285
    :pswitch_7
    sget-object p0, Lo/SQLiteReadOnlyDatabaseException$Activity;->b:Lo/SQLiteReadOnlyDatabaseException$Activity;

    return-object p0

    .line 283
    :pswitch_8
    sget-object p0, Lo/SQLiteReadOnlyDatabaseException$Activity;->c:Lo/SQLiteReadOnlyDatabaseException$Activity;

    return-object p0

    :pswitch_9
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_9
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

.method public static c(Lo/SQLiteStatementInfo;Landroid/content/Context;Landroid/util/AttributeSet;)Lo/SQLiteStatementInfo;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz v2, :cond_28

    .line 118
    sget-object v6, Lo/CrossProcessCursorWrapper$ActionBar;->c:[I

    invoke-virtual {v1, v2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 122
    :try_start_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v17, 0x0

    :goto_0
    if-ge v8, v7, :cond_1d

    .line 124
    :try_start_1
    invoke-virtual {v2, v8}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 126
    sget v4, Lo/CrossProcessCursorWrapper$ActionBar;->d:I

    if-ne v3, v4, :cond_0

    .line 127
    invoke-static {v2, v3}, Lo/SQLiteTableLockedException;->b(Landroid/content/res/TypedArray;I)Lo/SQLiteReadOnlyDatabaseException$Activity;

    move-result-object v3

    invoke-virtual {v0, v3}, Lo/SQLiteStatementInfo;->d(Lo/SQLiteReadOnlyDatabaseException$Activity;)Lo/SQLiteStatementInfo;

    goto/16 :goto_1

    .line 129
    :cond_0
    sget v4, Lo/CrossProcessCursorWrapper$ActionBar;->g:I

    if-ne v3, v4, :cond_1

    .line 130
    invoke-static {v1, v2, v3}, Lo/SQLiteTableLockedException;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lo/SQLiteStatementInfo;->d(Landroid/graphics/drawable/Drawable;)Lo/SQLiteStatementInfo;

    goto/16 :goto_1

    .line 132
    :cond_1
    sget v4, Lo/CrossProcessCursorWrapper$ActionBar;->h:I

    if-ne v3, v4, :cond_2

    .line 133
    invoke-static {v1, v2, v3}, Lo/SQLiteTableLockedException;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lo/SQLiteStatementInfo;->i(Landroid/graphics/drawable/Drawable;)Lo/SQLiteStatementInfo;

    goto/16 :goto_1

    .line 135
    :cond_2
    sget v4, Lo/CrossProcessCursorWrapper$ActionBar;->k:I

    if-ne v3, v4, :cond_3

    .line 136
    invoke-static {v1, v2, v3}, Lo/SQLiteTableLockedException;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lo/SQLiteStatementInfo;->b(Landroid/graphics/drawable/Drawable;)Lo/SQLiteStatementInfo;

    goto/16 :goto_1

    .line 139
    :cond_3
    sget v4, Lo/CrossProcessCursorWrapper$ActionBar;->a:I

    if-ne v3, v4, :cond_4

    const/4 v4, 0x0

    .line 140
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v0, v3}, Lo/SQLiteStatementInfo;->a(I)Lo/SQLiteStatementInfo;

    goto :goto_1

    .line 142
    :cond_4
    sget v4, Lo/CrossProcessCursorWrapper$ActionBar;->A:I

    if-ne v3, v4, :cond_5

    const/4 v4, 0x0

    .line 143
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {v0, v3}, Lo/SQLiteStatementInfo;->a(F)Lo/SQLiteStatementInfo;

    goto :goto_1

    .line 145
    :cond_5
    sget v4, Lo/CrossProcessCursorWrapper$ActionBar;->f:I

    if-ne v3, v4, :cond_6

    .line 146
    invoke-static {v2, v3}, Lo/SQLiteTableLockedException;->b(Landroid/content/res/TypedArray;I)Lo/SQLiteReadOnlyDatabaseException$Activity;

    move-result-object v3

    invoke-virtual {v0, v3}, Lo/SQLiteStatementInfo;->b(Lo/SQLiteReadOnlyDatabaseException$Activity;)Lo/SQLiteStatementInfo;

    goto :goto_1

    .line 148
    :cond_6
    sget v4, Lo/CrossProcessCursorWrapper$ActionBar;->o:I

    if-ne v3, v4, :cond_7

    .line 149
    invoke-static {v1, v2, v3}, Lo/SQLiteTableLockedException;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lo/SQLiteStatementInfo;->a(Landroid/graphics/drawable/Drawable;)Lo/SQLiteStatementInfo;

    goto :goto_1

    .line 151
    :cond_7
    sget v4, Lo/CrossProcessCursorWrapper$ActionBar;->n:I

    if-ne v3, v4, :cond_8

    .line 152
    invoke-static {v2, v3}, Lo/SQLiteTableLockedException;->b(Landroid/content/res/TypedArray;I)Lo/SQLiteReadOnlyDatabaseException$Activity;

    move-result-object v3

    invoke-virtual {v0, v3}, Lo/SQLiteStatementInfo;->e(Lo/SQLiteReadOnlyDatabaseException$Activity;)Lo/SQLiteStatementInfo;

    goto :goto_1

    .line 154
    :cond_8
    sget v4, Lo/CrossProcessCursorWrapper$ActionBar;->b:I

    if-ne v3, v4, :cond_9

    .line 155
    invoke-static {v1, v2, v3}, Lo/SQLiteTableLockedException;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lo/SQLiteStatementInfo;->c(Landroid/graphics/drawable/Drawable;)Lo/SQLiteStatementInfo;

    goto :goto_1

    .line 157
    :cond_9
    sget v4, Lo/CrossProcessCursorWrapper$ActionBar;->i:I

    if-ne v3, v4, :cond_a

    .line 158
    invoke-static {v2, v3}, Lo/SQLiteTableLockedException;->b(Landroid/content/res/TypedArray;I)Lo/SQLiteReadOnlyDatabaseException$Activity;

    move-result-object v3

    invoke-virtual {v0, v3}, Lo/SQLiteStatementInfo;->a(Lo/SQLiteReadOnlyDatabaseException$Activity;)Lo/SQLiteStatementInfo;

    goto :goto_1

    .line 160
    :cond_a
    sget v4, Lo/CrossProcessCursorWrapper$ActionBar;->m:I

    if-ne v3, v4, :cond_b

    .line 161
    invoke-static {v2, v3}, Lo/SQLiteTableLockedException;->b(Landroid/content/res/TypedArray;I)Lo/SQLiteReadOnlyDatabaseException$Activity;

    move-result-object v3

    invoke-virtual {v0, v3}, Lo/SQLiteStatementInfo;->c(Lo/SQLiteReadOnlyDatabaseException$Activity;)Lo/SQLiteStatementInfo;

    goto :goto_1

    .line 163
    :cond_b
    sget v4, Lo/CrossProcessCursorWrapper$ActionBar;->l:I

    if-ne v3, v4, :cond_d

    .line 165
    invoke-virtual {v2, v3, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    move v6, v3

    :cond_c
    :goto_1
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 167
    :cond_d
    sget v4, Lo/CrossProcessCursorWrapper$ActionBar;->e:I

    if-ne v3, v4, :cond_e

    .line 168
    invoke-static {v1, v2, v3}, Lo/SQLiteTableLockedException;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lo/SQLiteStatementInfo;->e(Landroid/graphics/drawable/Drawable;)Lo/SQLiteStatementInfo;

    goto :goto_1

    .line 170
    :cond_e
    sget v4, Lo/CrossProcessCursorWrapper$ActionBar;->j:I

    if-ne v3, v4, :cond_f

    .line 171
    invoke-static {v1, v2, v3}, Lo/SQLiteTableLockedException;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lo/SQLiteStatementInfo;->f(Landroid/graphics/drawable/Drawable;)Lo/SQLiteStatementInfo;

    goto :goto_1

    .line 173
    :cond_f
    sget v4, Lo/CrossProcessCursorWrapper$ActionBar;->q:I

    if-ne v3, v4, :cond_10

    .line 174
    invoke-static/range {p0 .. p0}, Lo/SQLiteTableLockedException;->a(Lo/SQLiteStatementInfo;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v4

    const/4 v1, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/facebook/drawee/generic/RoundingParams;->d(Z)Lcom/facebook/drawee/generic/RoundingParams;

    goto :goto_1

    .line 176
    :cond_10
    sget v1, Lo/CrossProcessCursorWrapper$ActionBar;->C:I

    if-ne v3, v1, :cond_11

    move/from16 v4, v17

    .line 177
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    move/from16 v17, v1

    goto :goto_1

    :cond_11
    move/from16 v4, v17

    .line 179
    sget v1, Lo/CrossProcessCursorWrapper$ActionBar;->u:I

    if-ne v3, v1, :cond_12

    .line 180
    invoke-virtual {v2, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    move v9, v1

    :goto_2
    move/from16 v17, v4

    goto :goto_1

    .line 182
    :cond_12
    sget v1, Lo/CrossProcessCursorWrapper$ActionBar;->w:I

    if-ne v3, v1, :cond_13

    .line 183
    invoke-virtual {v2, v3, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    move v11, v1

    goto :goto_2

    .line 185
    :cond_13
    sget v1, Lo/CrossProcessCursorWrapper$ActionBar;->t:I

    if-ne v3, v1, :cond_14

    .line 186
    invoke-virtual {v2, v3, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    move v15, v1

    goto :goto_2

    .line 188
    :cond_14
    sget v1, Lo/CrossProcessCursorWrapper$ActionBar;->p:I

    if-ne v3, v1, :cond_15

    .line 189
    invoke-virtual {v2, v3, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    move v13, v1

    goto :goto_2

    .line 191
    :cond_15
    sget v1, Lo/CrossProcessCursorWrapper$ActionBar;->v:I

    if-ne v3, v1, :cond_16

    .line 192
    invoke-virtual {v2, v3, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    move v10, v1

    goto :goto_2

    .line 194
    :cond_16
    sget v1, Lo/CrossProcessCursorWrapper$ActionBar;->x:I

    if-ne v3, v1, :cond_17

    .line 195
    invoke-virtual {v2, v3, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    move v12, v1

    goto :goto_2

    .line 197
    :cond_17
    sget v1, Lo/CrossProcessCursorWrapper$ActionBar;->r:I

    if-ne v3, v1, :cond_18

    .line 198
    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    move v5, v1

    goto :goto_2

    .line 200
    :cond_18
    sget v1, Lo/CrossProcessCursorWrapper$ActionBar;->s:I

    if-ne v3, v1, :cond_19

    .line 201
    invoke-virtual {v2, v3, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    move v14, v1

    goto :goto_2

    .line 203
    :cond_19
    sget v1, Lo/CrossProcessCursorWrapper$ActionBar;->y:I

    if-ne v3, v1, :cond_1a

    .line 204
    invoke-static/range {p0 .. p0}, Lo/SQLiteTableLockedException;->a(Lo/SQLiteStatementInfo;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v1

    move/from16 v17, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/facebook/drawee/generic/RoundingParams;->d(I)Lcom/facebook/drawee/generic/RoundingParams;

    goto/16 :goto_1

    :cond_1a
    move/from16 v17, v4

    .line 206
    sget v1, Lo/CrossProcessCursorWrapper$ActionBar;->z:I

    if-ne v3, v1, :cond_1b

    .line 207
    invoke-static/range {p0 .. p0}, Lo/SQLiteTableLockedException;->a(Lo/SQLiteStatementInfo;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lcom/facebook/drawee/generic/RoundingParams;->a(F)Lcom/facebook/drawee/generic/RoundingParams;

    goto/16 :goto_1

    .line 209
    :cond_1b
    sget v1, Lo/CrossProcessCursorWrapper$ActionBar;->B:I

    if-ne v3, v1, :cond_1c

    .line 210
    invoke-static/range {p0 .. p0}, Lo/SQLiteTableLockedException;->a(Lo/SQLiteStatementInfo;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/facebook/drawee/generic/RoundingParams;->e(I)Lcom/facebook/drawee/generic/RoundingParams;

    goto/16 :goto_1

    .line 212
    :cond_1c
    sget v1, Lo/CrossProcessCursorWrapper$ActionBar;->D:I

    if-ne v3, v1, :cond_c

    .line 213
    invoke-static/range {p0 .. p0}, Lo/SQLiteTableLockedException;->a(Lo/SQLiteStatementInfo;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lcom/facebook/drawee/generic/RoundingParams;->e(F)Lcom/facebook/drawee/generic/RoundingParams;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :cond_1d
    const/4 v4, 0x0

    .line 218
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 220
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_22

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 221
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_22

    if-eqz v9, :cond_1e

    if-eqz v12, :cond_1e

    const/4 v1, 0x1

    goto :goto_4

    :cond_1e
    const/4 v1, 0x0

    :goto_4
    if-eqz v11, :cond_1f

    if-eqz v10, :cond_1f

    const/4 v2, 0x1

    goto :goto_5

    :cond_1f
    const/4 v2, 0x0

    :goto_5
    if-eqz v13, :cond_20

    if-eqz v5, :cond_20

    const/4 v5, 0x1

    goto :goto_6

    :cond_20
    const/4 v5, 0x0

    :goto_6
    if-eqz v15, :cond_21

    if-eqz v14, :cond_21

    const/16 v16, 0x1

    goto :goto_7

    :cond_21
    const/16 v16, 0x0

    :goto_7
    move v3, v5

    goto :goto_c

    :cond_22
    if-eqz v9, :cond_23

    if-eqz v10, :cond_23

    const/4 v1, 0x1

    goto :goto_8

    :cond_23
    const/4 v1, 0x0

    :goto_8
    if-eqz v11, :cond_24

    if-eqz v12, :cond_24

    const/4 v2, 0x1

    goto :goto_9

    :cond_24
    const/4 v2, 0x0

    :goto_9
    if-eqz v13, :cond_25

    if-eqz v14, :cond_25

    const/4 v3, 0x1

    goto :goto_a

    :cond_25
    const/4 v3, 0x0

    :goto_a
    if-eqz v15, :cond_26

    if-eqz v5, :cond_26

    const/4 v5, 0x1

    goto :goto_b

    :cond_26
    const/4 v5, 0x0

    :goto_b
    move/from16 v16, v5

    :goto_c
    move/from16 v4, v17

    goto :goto_e

    :catchall_1
    move-exception v0

    const/4 v5, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x1

    .line 218
    :goto_d
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 220
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_27

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 221
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    .line 230
    :cond_27
    throw v0

    :cond_28
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/16 v16, 0x1

    .line 237
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lo/SQLiteStatementInfo;->i()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_29

    if-lez v6, :cond_29

    .line 238
    new-instance v5, Lo/SQLiteDatabaseLockedException;

    .line 239
    invoke-virtual/range {p0 .. p0}, Lo/SQLiteStatementInfo;->i()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct {v5, v7, v6}, Lo/SQLiteDatabaseLockedException;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 238
    invoke-virtual {v0, v5}, Lo/SQLiteStatementInfo;->b(Landroid/graphics/drawable/Drawable;)Lo/SQLiteStatementInfo;

    :cond_29
    if-lez v4, :cond_2e

    .line 244
    invoke-static/range {p0 .. p0}, Lo/SQLiteTableLockedException;->a(Lo/SQLiteStatementInfo;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v5

    if-eqz v1, :cond_2a

    int-to-float v1, v4

    goto :goto_f

    :cond_2a
    const/4 v1, 0x0

    :goto_f
    if-eqz v2, :cond_2b

    int-to-float v2, v4

    goto :goto_10

    :cond_2b
    const/4 v2, 0x0

    :goto_10
    if-eqz v3, :cond_2c

    int-to-float v3, v4

    goto :goto_11

    :cond_2c
    const/4 v3, 0x0

    :goto_11
    if-eqz v16, :cond_2d

    int-to-float v4, v4

    goto :goto_12

    :cond_2d
    const/4 v4, 0x0

    :goto_12
    invoke-virtual {v5, v1, v2, v3, v4}, Lcom/facebook/drawee/generic/RoundingParams;->e(FFFF)Lcom/facebook/drawee/generic/RoundingParams;

    :cond_2e
    return-object v0
.end method

.method public static e(Landroid/content/Context;Landroid/util/AttributeSet;)Lo/SQLiteStatementInfo;
    .locals 2

    .line 78
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GenericDraweeHierarchyBuilder#inflateBuilder"

    .line 79
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 81
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 82
    new-instance v1, Lo/SQLiteStatementInfo;

    invoke-direct {v1, v0}, Lo/SQLiteStatementInfo;-><init>(Landroid/content/res/Resources;)V

    .line 83
    invoke-static {v1, p0, p1}, Lo/SQLiteTableLockedException;->c(Lo/SQLiteStatementInfo;Landroid/content/Context;Landroid/util/AttributeSet;)Lo/SQLiteStatementInfo;

    move-result-object p0

    .line 84
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 85
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_1
    return-object p0
.end method
