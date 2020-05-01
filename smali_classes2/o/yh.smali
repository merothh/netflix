.class public Lo/yh;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/yh$Application;,
        Lo/yh$Activity;
    }
.end annotation


# instance fields
.field final b:Lo/FragmentTransaction;


# direct methods
.method public constructor <init>(Lo/FragmentTransaction;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lo/yh;->b:Lo/FragmentTransaction;

    return-void
.end method

.method private static b(Ljava/io/InputStream;)V
    .locals 5

    .line 154
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, p0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 155
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readByte()B

    .line 156
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    .line 157
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    .line 158
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readLong()J

    .line 159
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readLong()J

    .line 160
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readLong()J

    .line 161
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p0

    if-nez p0, :cond_0

    .line 163
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p0}, Ljava/util/HashMap;-><init>(I)V

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, p0, :cond_1

    .line 166
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 167
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 168
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lo/yh$Activity;
    .locals 18

    const-string v1, "%s: %s"

    const-string v2, "VolleyCacheWrapper"

    move-object/from16 v10, p0

    .line 96
    iget-object v0, v10, Lo/yh;->b:Lo/FragmentTransaction;

    move-object/from16 v3, p1

    invoke-virtual {v0, v3}, Lo/FragmentTransaction;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    .line 97
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v12, 0x0

    if-eqz v0, :cond_2

    const/4 v14, 0x0

    const/4 v15, 0x2

    .line 100
    :try_start_0
    new-instance v8, Lo/yh$Application;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v0, v12}, Lo/yh$Application;-><init>(Ljava/io/InputStream;Lo/yh$5;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 101
    :try_start_1
    invoke-static {v8}, Lo/yh;->b(Ljava/io/InputStream;)V

    .line 102
    new-instance v16, Lo/yh$Activity;

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8}, Lo/yh$Application;->a(Lo/yh$Application;)I

    move-result v0

    int-to-long v6, v0

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v8}, Lo/yh$Application;->a(Lo/yh$Application;)I

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    int-to-long v12, v0

    sub-long v12, v3, v12

    move-object/from16 v3, v16

    move-object/from16 v4, p0

    move-object/from16 v17, v8

    move-wide v8, v12

    :try_start_2
    invoke-direct/range {v3 .. v9}, Lo/yh$Activity;-><init>(Lo/yh;Ljava/lang/String;JJ)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    :try_start_3
    invoke-virtual/range {v17 .. v17}, Lo/yh$Application;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v3, v0

    new-array v0, v15, [Ljava/lang/Object;

    .line 110
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v14

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v0, v4

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v16

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v17, v8

    :goto_1
    move-object v3, v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object/from16 v17, v8

    :goto_2
    move-object/from16 v12, v17

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v3, v0

    const/16 v17, 0x0

    goto :goto_5

    :catch_3
    move-exception v0

    const/4 v12, 0x0

    :goto_3
    :try_start_4
    new-array v3, v15, [Ljava/lang/Object;

    .line 104
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v14

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v12, :cond_0

    .line 108
    :try_start_5
    invoke-virtual {v12}, Lo/yh$Application;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v3, v0

    new-array v0, v15, [Ljava/lang/Object;

    .line 110
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v14

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v0, v4

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_4
    const/4 v1, 0x0

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v3, v0

    move-object/from16 v17, v12

    :goto_5
    if-eqz v17, :cond_1

    .line 108
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Lo/yh$Application;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_6

    :catch_5
    move-exception v0

    move-object v4, v0

    new-array v0, v15, [Ljava/lang/Object;

    .line 110
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v14

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v0, v5

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_1
    :goto_6
    throw v3

    :cond_2
    move-object v1, v12

    :goto_7
    return-object v1
.end method
