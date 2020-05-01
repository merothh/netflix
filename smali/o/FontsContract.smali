.class public final Lo/FontsContract;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/TextInputTimePickerView;


# static fields
.field public static final e:Lo/TextInputTimePickerView;


# instance fields
.field private final d:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 23
    new-instance v0, Lo/FontsContract;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {v0, v1}, Lo/FontsContract;-><init>(Ljava/util/List;)V

    sput-object v0, Lo/FontsContract;->e:Lo/TextInputTimePickerView;

    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lo/FontsContract;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/LinkedHashSet;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Lo/TextInputTimePickerView;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 107
    iget-object v1, v0, Lo/FontsContract;->d:Ljava/util/List;

    .line 108
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 113
    iget-object v3, v0, Lo/FontsContract;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Object;

    .line 114
    iget-object v4, v0, Lo/FontsContract;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/Integer;

    .line 115
    iget-object v5, v0, Lo/FontsContract;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/Integer;

    .line 116
    iget-object v6, v0, Lo/FontsContract;->d:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/Integer;

    .line 124
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_0

    .line 125
    new-instance v3, Lo/FontsContract;

    invoke-direct {v3, v1}, Lo/FontsContract;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    return-object v2

    .line 130
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    const/4 v10, 0x0

    if-gt v9, v7, :cond_2

    .line 133
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 134
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v4, v9

    .line 135
    aput-object v10, v5, v9

    .line 136
    instance-of v10, v11, Ljava/util/List;

    if-eqz v10, :cond_1

    check-cast v11, Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    move-object v11, v10

    const/4 v9, 0x0

    :goto_2
    if-ltz v9, :cond_20

    :goto_3
    const-string v12, "from"

    const-string v13, "to"

    if-gt v9, v7, :cond_a

    .line 143
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 144
    instance-of v14, v11, Ljava/util/List;

    if-eqz v14, :cond_3

    .line 145
    check-cast v11, Ljava/util/List;

    aget-object v14, v4, v9

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 148
    :cond_3
    instance-of v14, v11, Ljava/util/Map;

    if-eqz v14, :cond_4

    move-object v14, v11

    check-cast v14, Ljava/util/Map;

    goto :goto_4

    :cond_4
    move-object v14, v10

    :goto_4
    if-eqz v14, :cond_5

    .line 149
    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    goto :goto_5

    :cond_5
    move-object v13, v10

    :goto_5
    if-eqz v13, :cond_9

    .line 153
    invoke-interface {v14, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_6

    invoke-interface {v14, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    goto :goto_6

    :cond_6
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 154
    :goto_6
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-lt v12, v15, :cond_8

    .line 157
    aget-object v12, v5, v9

    if-nez v12, :cond_7

    .line 158
    aput-object v11, v5, v9

    .line 161
    :cond_7
    aget-object v11, v5, v9

    invoke-virtual {v11}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v9

    goto :goto_7

    .line 155
    :cond_8
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid range in path.  Range to value is smaller than from value ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 164
    :cond_9
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 165
    aput-object v11, v3, v9

    :goto_7
    add-int/lit8 v9, v9, 0x1

    move-object v11, v14

    goto/16 :goto_3

    .line 171
    :cond_a
    new-instance v9, Lo/FontsContract;

    invoke-virtual {v3}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v9, v14}, Lo/FontsContract;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v9}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 174
    aget-object v9, v5, v7

    if-eqz v9, :cond_b

    .line 175
    aget-object v9, v5, v7

    aget-object v9, v5, v7

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v7

    if-eqz v11, :cond_c

    .line 176
    aget-object v9, v5, v7

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-le v9, v14, :cond_c

    .line 177
    aput-object v10, v5, v7

    .line 178
    aget-object v9, v4, v7

    aget-object v9, v4, v7

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v7

    goto :goto_8

    .line 181
    :cond_b
    aget-object v9, v4, v7

    aget-object v9, v4, v7

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v7

    .line 184
    :cond_c
    :goto_8
    aget-object v9, v4, v7

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-object v14, v6, v7

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-le v9, v14, :cond_1f

    .line 185
    aget-object v9, v6, v7

    aput-object v9, v4, v7

    move v9, v7

    :goto_9
    if-ltz v9, :cond_15

    .line 192
    aget-object v14, v4, v9

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 193
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 194
    instance-of v10, v15, Ljava/util/List;

    if-eqz v10, :cond_d

    check-cast v15, Ljava/util/List;

    aget-object v10, v4, v9

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 195
    :cond_d
    instance-of v10, v15, Ljava/util/Map;

    if-eqz v10, :cond_e

    move-object v10, v15

    check-cast v10, Ljava/util/Map;

    goto :goto_a

    :cond_e
    const/4 v10, 0x0

    :goto_a
    if-eqz v10, :cond_f

    .line 196
    invoke-interface {v10, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    goto :goto_b

    :cond_f
    const/4 v15, 0x0

    :goto_b
    if-eqz v10, :cond_10

    .line 197
    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    goto :goto_c

    :cond_10
    const/4 v10, 0x0

    .line 198
    :goto_c
    aget-object v16, v6, v9

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v14, v8, :cond_15

    aget-object v8, v5, v9

    if-eqz v8, :cond_11

    aget-object v8, v5, v9

    invoke-virtual {v8, v15}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    :cond_11
    const/4 v8, 0x0

    .line 199
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v4, v9

    .line 201
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    .line 202
    instance-of v8, v14, Ljava/util/List;

    if-eqz v8, :cond_12

    check-cast v14, Ljava/util/List;

    aget-object v8, v4, v9

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    :cond_12
    if-eqz v15, :cond_14

    if-eqz v10, :cond_13

    .line 203
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_d

    :cond_13
    const/4 v8, 0x0

    :goto_d
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_e

    :cond_14
    const/4 v10, 0x0

    :goto_e
    aput-object v10, v5, v9

    add-int/lit8 v9, v9, -0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    goto :goto_9

    :cond_15
    if-ltz v9, :cond_1e

    .line 213
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 214
    instance-of v10, v8, Ljava/util/List;

    if-eqz v10, :cond_16

    check-cast v8, Ljava/util/List;

    aget-object v10, v4, v9

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 215
    :cond_16
    instance-of v10, v8, Ljava/util/Map;

    if-eqz v10, :cond_17

    check-cast v8, Ljava/util/Map;

    goto :goto_f

    :cond_17
    const/4 v8, 0x0

    :goto_f
    if-eqz v8, :cond_18

    .line 216
    invoke-interface {v8, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    goto :goto_10

    :cond_18
    const/4 v13, 0x0

    :goto_10
    if-eqz v10, :cond_19

    .line 217
    invoke-interface {v8, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Ljava/lang/Integer;

    goto :goto_11

    :cond_19
    const/4 v10, 0x0

    :goto_11
    if-eqz v13, :cond_1c

    .line 219
    aget-object v8, v5, v9

    if-nez v8, :cond_1b

    if-eqz v10, :cond_1a

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_12

    :cond_1a
    const/4 v8, 0x0

    goto :goto_12

    :cond_1b
    aget-object v8, v5, v9

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :goto_12
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v9

    .line 222
    :cond_1c
    aget-object v8, v5, v9

    if-eqz v8, :cond_1d

    aget-object v8, v5, v9

    invoke-virtual {v8, v13}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1d

    .line 223
    aget-object v8, v5, v9

    aget-object v8, v5, v9

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v9

    goto :goto_13

    :cond_1d
    const/4 v8, 0x0

    .line 225
    aput-object v8, v5, v9

    .line 226
    aget-object v10, v4, v9

    aget-object v10, v4, v9

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v4, v9

    goto :goto_14

    :cond_1e
    :goto_13
    const/4 v8, 0x0

    :goto_14
    move-object v10, v8

    const/4 v8, 0x0

    goto/16 :goto_2

    :cond_1f
    move v9, v7

    const/4 v8, 0x0

    goto/16 :goto_3

    :cond_20
    return-object v2
.end method

.method public b()I
    .locals 1

    .line 44
    iget-object v0, p0, Lo/FontsContract;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public b(I)Lo/TextInputTimePickerView;
    .locals 1

    .line 295
    iget-object v0, p0, Lo/FontsContract;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Lo/FontsContract;->b(II)Lo/TextInputTimePickerView;

    move-result-object p1

    return-object p1
.end method

.method public b(II)Lo/TextInputTimePickerView;
    .locals 3

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v1, p1

    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_0

    .line 303
    iget-object v2, p0, Lo/FontsContract;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 306
    :cond_0
    new-instance p1, Lo/FontsContract;

    invoke-direct {p1, v0}, Lo/FontsContract;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public b(Ljava/lang/Object;)Lo/TextInputTimePickerView;
    .locals 2

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lo/FontsContract;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 67
    invoke-static {p1}, Lo/SearchIndexableResource;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance p1, Lo/FontsContract;

    invoke-direct {p1, v0}, Lo/FontsContract;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public c(Lo/TextInputTimePickerView;)Lo/TextInputTimePickerView;
    .locals 1

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Lo/TextInputTimePickerView;->d()Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 51
    iget-object p1, p0, Lo/FontsContract;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 52
    new-instance p1, Lo/FontsContract;

    invoke-direct {p1, v0}, Lo/FontsContract;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public c()Z
    .locals 1

    .line 268
    iget-object v0, p0, Lo/FontsContract;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .line 243
    new-instance v0, Lo/FontsContract;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lo/FontsContract;->d:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lo/FontsContract;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lo/FontsContract;->d:Ljava/util/List;

    return-object v0
.end method

.method public d(ILjava/lang/Object;)Lo/TextInputTimePickerView;
    .locals 1

    .line 99
    invoke-virtual {p0}, Lo/FontsContract;->d()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lo/SettingsStringUtil;->e(Ljava/util/List;)Lo/SettingsStringUtil;

    move-result-object v0

    invoke-virtual {v0}, Lo/SettingsStringUtil;->c()Ljava/util/List;

    move-result-object v0

    .line 100
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance p1, Lo/FontsContract;

    invoke-direct {p1, v0}, Lo/FontsContract;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public d(Lo/TextInputTimePickerView;)Lo/TextInputTimePickerView;
    .locals 2

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lo/FontsContract;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 59
    invoke-interface {p1}, Lo/TextInputTimePickerView;->d()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 60
    new-instance p1, Lo/FontsContract;

    invoke-direct {p1, v0}, Lo/FontsContract;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public e()I
    .locals 8

    .line 74
    iget-object v0, p0, Lo/FontsContract;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_0
    if-ge v3, v0, :cond_4

    .line 76
    iget-object v5, p0, Lo/FontsContract;->d:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 77
    instance-of v6, v5, Ljava/util/Map;

    if-eqz v6, :cond_2

    .line 78
    check-cast v5, Ljava/util/Map;

    const-string v6, "from"

    .line 79
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_0

    .line 80
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    const-string v7, "to"

    .line 81
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_1

    .line 82
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    sub-int/2addr v5, v6

    add-int/2addr v5, v2

    goto :goto_3

    .line 85
    :cond_2
    instance-of v6, v5, Ljava/util/List;

    if-eqz v6, :cond_3

    .line 89
    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    :goto_3
    mul-int v4, v4, v5

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v4
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 254
    :cond_1
    instance-of v1, p1, Lo/TextInputTimePickerView;

    if-nez v1, :cond_2

    return v0

    .line 257
    :cond_2
    check-cast p1, Lo/TextInputTimePickerView;

    .line 258
    iget-object v0, p0, Lo/FontsContract;->d:Ljava/util/List;

    invoke-interface {p1}, Lo/TextInputTimePickerView;->d()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .line 312
    iget-object v0, p0, Lo/FontsContract;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 313
    iget-object v0, p0, Lo/FontsContract;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 314
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 263
    invoke-virtual {p0}, Lo/FontsContract;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 6

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    iget-object v1, p0, Lo/FontsContract;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 278
    iget-object v4, p0, Lo/FontsContract;->d:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 279
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 280
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-ge v3, v2, :cond_0

    const/16 v4, 0x2e

    .line 282
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 289
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 238
    const-class v0, Lcom/google/gson/Gson;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/Gson;

    iget-object v1, p0, Lo/FontsContract;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
