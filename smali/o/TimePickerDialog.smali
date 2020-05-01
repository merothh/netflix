.class Lo/TimePickerDialog;
.super Ljava/lang/Object;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/util/JsonReader;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 245
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 246
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    invoke-static {p0}, Lo/TimePickerDialog;->b(Landroid/util/JsonReader;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 249
    :cond_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    return-object v0
.end method

.method private static b(Lo/SearchDialog;Landroid/util/JsonReader;)Lcom/bugsnag/android/Breadcrumbs;
    .locals 1

    .line 131
    new-instance v0, Lcom/bugsnag/android/Breadcrumbs;

    invoke-direct {v0, p0}, Lcom/bugsnag/android/Breadcrumbs;-><init>(Lo/SearchDialog;)V

    .line 132
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 133
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 134
    invoke-static {p1}, Lo/TimePickerDialog;->e(Landroid/util/JsonReader;)Lcom/bugsnag/android/Breadcrumb;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 137
    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Breadcrumbs;->add(Lcom/bugsnag/android/Breadcrumb;)V

    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    return-object v0
.end method

.method private static b(Landroid/util/JsonReader;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 254
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 255
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 258
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 259
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 260
    sget-object v2, Lo/TimePickerDialog$5;->c:[I

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/JsonToken;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 268
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 265
    :cond_0
    invoke-static {p0}, Lo/TimePickerDialog;->m(Landroid/util/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 262
    :cond_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Failed to read stackframe"

    .line 273
    invoke-static {v2, v1}, Lo/WallpaperColors;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 275
    :cond_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    return-object v0
.end method

.method private static c(Landroid/util/JsonReader;)Lcom/bugsnag/android/BugsnagException;
    .locals 10

    .line 211
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const-string v2, "android"

    move-object v3, v2

    move-object v2, v0

    move-object v0, v1

    .line 217
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 218
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v6, "stacktrace"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x2

    goto :goto_1

    :sswitch_1
    const-string v6, "errorClass"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x0

    goto :goto_1

    :sswitch_2
    const-string v6, "message"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :sswitch_3
    const-string v6, "type"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x3

    :cond_0
    :goto_1
    if-eqz v5, :cond_4

    if-eq v5, v9, :cond_3

    if-eq v5, v8, :cond_2

    if-eq v5, v7, :cond_1

    .line 232
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 229
    :cond_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 226
    :cond_2
    invoke-static {p0}, Lo/TimePickerDialog;->a(Landroid/util/JsonReader;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 223
    :cond_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 220
    :cond_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 236
    :cond_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 237
    new-instance p0, Lcom/bugsnag/android/BugsnagException;

    invoke-direct {p0, v1, v0, v2}, Lcom/bugsnag/android/BugsnagException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 238
    invoke-virtual {p0, v3}, Lcom/bugsnag/android/BugsnagException;->a(Ljava/lang/String;)V

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x368f3a -> :sswitch_3
        0x38eb0007 -> :sswitch_2
        0x5ff7ec50 -> :sswitch_1
        0x7a8983bd -> :sswitch_0
    .end sparse-switch
.end method

.method private static d(Landroid/util/JsonReader;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 291
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v0, 0x0

    move-object v1, v0

    .line 294
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 295
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x368f3a

    const/4 v6, 0x1

    if-eq v4, v5, :cond_1

    const v5, 0x182da957

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, "attributes"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const-string v4, "type"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    :cond_2
    :goto_1
    if-eqz v3, :cond_4

    if-eq v3, v6, :cond_3

    .line 306
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 300
    :cond_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 301
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 302
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 303
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    goto :goto_0

    .line 297
    :cond_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 310
    :cond_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 311
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_7

    .line 313
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_6

    .line 319
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object p0

    .line 315
    :cond_7
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Severity Reason type is required"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static d(Lo/SearchDialog;Ljava/io/File;)Lo/UiAutomationConnection;
    .locals 20

    move-object/from16 v0, p0

    .line 34
    :try_start_0
    sget-object v2, Lcom/bugsnag/android/Severity;->ERROR:Lcom/bugsnag/android/Severity;

    .line 44
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 47
    new-instance v8, Landroid/util/JsonReader;

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    move-object/from16 v6, p1

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v8, v4}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 48
    :try_start_1
    invoke-virtual {v8}, Landroid/util/JsonReader;->beginObject()V

    move-object v5, v2

    move-object v11, v3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 49
    :goto_0
    invoke-virtual {v8}, Landroid/util/JsonReader;->hasNext()Z

    move-result v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v18, :cond_1

    .line 50
    :try_start_2
    invoke-virtual {v8}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v9

    const/16 v18, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v19

    sparse-switch v19, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v1, "session"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v9, 0x8

    goto/16 :goto_2

    :sswitch_1
    const-string v1, "severity"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v9, 0x9

    goto/16 :goto_2

    :sswitch_2
    const-string v1, "context"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v9, 0x2

    goto/16 :goto_2

    :sswitch_3
    const-string v1, "severityReason"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v9, 0xa

    goto/16 :goto_2

    :sswitch_4
    const-string v1, "projectPackages"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v9, 0x4

    goto :goto_2

    :sswitch_5
    const-string v1, "user"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v9, 0xd

    goto :goto_2

    :sswitch_6
    const-string v1, "app"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v9, 0x0

    goto :goto_2

    :sswitch_7
    const-string v1, "breadcrumbs"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v9, 0x1

    goto :goto_2

    :sswitch_8
    const-string v1, "groupingHash"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v9, 0x6

    goto :goto_2

    :sswitch_9
    const-string v1, "metaData"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v9, 0x7

    goto :goto_2

    :sswitch_a
    const-string v1, "exceptions"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v9, 0x5

    goto :goto_2

    :sswitch_b
    const-string v1, "device"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v9, 0x3

    goto :goto_2

    :sswitch_c
    const-string v1, "threads"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v9, 0xb

    goto :goto_2

    :sswitch_d
    const-string v1, "unhandled"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v9, 0xc

    goto :goto_2

    :cond_0
    :goto_1
    const/4 v9, -0x1

    :goto_2
    packed-switch v9, :pswitch_data_0

    .line 94
    invoke-virtual {v8}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 91
    :pswitch_0
    invoke-static {v8}, Lo/TimePickerDialog;->g(Landroid/util/JsonReader;)Lo/AssistStructure;

    move-result-object v1

    move-object v12, v1

    goto/16 :goto_0

    .line 88
    :pswitch_1
    invoke-virtual {v8}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v1

    move v3, v1

    goto/16 :goto_0

    .line 85
    :pswitch_2
    invoke-static {v8}, Lo/TimePickerDialog;->f(Landroid/util/JsonReader;)Lo/PasswordMetrics;

    move-result-object v7

    goto/16 :goto_0

    .line 82
    :pswitch_3
    invoke-static {v8}, Lo/TimePickerDialog;->d(Landroid/util/JsonReader;)Ljava/util/ArrayList;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_0

    .line 79
    :pswitch_4
    invoke-virtual {v8}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bugsnag/android/Severity;->fromString(Ljava/lang/String;)Lcom/bugsnag/android/Severity;

    move-result-object v5

    goto/16 :goto_0

    .line 76
    :pswitch_5
    invoke-static {v8}, Lo/TimePickerDialog;->h(Landroid/util/JsonReader;)Lo/DeviceAdminService;

    move-result-object v6

    goto/16 :goto_0

    .line 73
    :pswitch_6
    new-instance v1, Lo/DeviceAdminInfo;

    invoke-static {v8}, Lo/TimePickerDialog;->i(Landroid/util/JsonReader;)Ljava/util/Map;

    move-result-object v4

    invoke-direct {v1, v4}, Lo/DeviceAdminInfo;-><init>(Ljava/util/Map;)V

    move-object v4, v1

    goto/16 :goto_0

    .line 70
    :pswitch_7
    invoke-virtual {v8}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    move-object v14, v1

    goto/16 :goto_0

    .line 67
    :pswitch_8
    invoke-static {v0, v8}, Lo/TimePickerDialog;->d(Lo/SearchDialog;Landroid/util/JsonReader;)Lo/UiModeManager;

    move-result-object v1

    move-object v10, v1

    goto/16 :goto_0

    .line 64
    :pswitch_9
    invoke-static {v8}, Lo/TimePickerDialog;->l(Landroid/util/JsonReader;)Ljava/util/List;

    move-result-object v1

    move-object v11, v1

    goto/16 :goto_0

    .line 61
    :pswitch_a
    invoke-static {v8}, Lo/TimePickerDialog;->i(Landroid/util/JsonReader;)Ljava/util/Map;

    move-result-object v1

    move-object/from16 v16, v1

    goto/16 :goto_0

    .line 58
    :pswitch_b
    invoke-virtual {v8}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    move-object v13, v1

    goto/16 :goto_0

    .line 55
    :pswitch_c
    invoke-static {v0, v8}, Lo/TimePickerDialog;->b(Lo/SearchDialog;Landroid/util/JsonReader;)Lcom/bugsnag/android/Breadcrumbs;

    move-result-object v1

    move-object/from16 v17, v1

    goto/16 :goto_0

    .line 52
    :pswitch_d
    invoke-static {v8}, Lo/TimePickerDialog;->i(Landroid/util/JsonReader;)Ljava/util/Map;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v15, v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 97
    :cond_1
    :try_start_3
    invoke-virtual {v8}, Landroid/util/JsonReader;->endObject()V

    if-eqz v2, :cond_3

    if-eqz v10, :cond_3

    .line 101
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v9, 0x1

    if-le v1, v9, :cond_2

    .line 102
    :try_start_4
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    .line 104
    :goto_3
    :try_start_5
    new-instance v9, Lo/UserSwitchObserver;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v9, v2, v5, v3, v1}, Lo/UserSwitchObserver;-><init>(Ljava/lang/String;Lcom/bugsnag/android/Severity;ZLjava/lang/String;)V

    .line 107
    new-instance v0, Lo/UiAutomationConnection;

    invoke-virtual {v10}, Lo/UiModeManager;->b()Lcom/bugsnag/android/BugsnagException;

    move-result-object v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v18, v8

    move-object v8, v4

    move-object v4, v9

    :try_start_6
    invoke-direct/range {v1 .. v7}, Lo/UiAutomationConnection;-><init>(Lo/SearchDialog;Ljava/lang/Throwable;Lo/UserSwitchObserver;Lcom/bugsnag/android/Severity;Lo/DeviceAdminService;Lo/PasswordMetrics;)V

    .line 109
    invoke-virtual {v0}, Lo/UiAutomationConnection;->g()Lo/UiModeManager;

    move-result-object v1

    invoke-virtual {v10}, Lo/UiModeManager;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/UiModeManager;->d(Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 110
    invoke-interface {v11, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/UiAutomationConnection;->a([Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0, v12}, Lo/UiAutomationConnection;->e(Lo/AssistStructure;)V

    .line 112
    invoke-virtual {v0, v13}, Lo/UiAutomationConnection;->b(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0, v14}, Lo/UiAutomationConnection;->e(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0, v15}, Lo/UiAutomationConnection;->d(Ljava/util/Map;)V

    .line 115
    invoke-virtual {v0, v8}, Lo/UiAutomationConnection;->c(Lo/DeviceAdminInfo;)V

    move-object/from16 v1, v16

    .line 116
    invoke-virtual {v0, v1}, Lo/UiAutomationConnection;->c(Ljava/util/Map;)V

    move-object/from16 v1, v17

    .line 117
    invoke-virtual {v0, v1}, Lo/UiAutomationConnection;->d(Lcom/bugsnag/android/Breadcrumbs;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 123
    :try_start_7
    invoke-virtual/range {v18 .. v18}, Landroid/util/JsonReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    return-object v0

    :cond_3
    move-object/from16 v18, v8

    .line 99
    :try_start_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File did not contain a valid error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    move-object/from16 v8, v18

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object/from16 v18, v8

    goto :goto_4

    :catchall_3
    move-exception v0

    const/4 v8, 0x0

    :goto_4
    if-eqz v8, :cond_4

    .line 123
    :try_start_9
    invoke-virtual {v8}, Landroid/util/JsonReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 124
    :catch_1
    :cond_4
    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x70aca57d -> :sswitch_d
        -0x4fbf4c57 -> :sswitch_c
        -0x4f94e1aa -> :sswitch_b
        -0x4e55c5fc -> :sswitch_a
        -0x1ae110b1 -> :sswitch_9
        -0x41b674f -> :sswitch_8
        -0x3112f30 -> :sswitch_7
        0x17a21 -> :sswitch_6
        0x36ebcb -> :sswitch_5
        0x155fdb26 -> :sswitch_4
        0x17ba9fa1 -> :sswitch_3
        0x38b735af -> :sswitch_2
        0x581d12fd -> :sswitch_1
        0x76508296 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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

.method private static d(Lo/SearchDialog;Landroid/util/JsonReader;)Lo/UiModeManager;
    .locals 3

    .line 189
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 191
    invoke-static {p1}, Lo/TimePickerDialog;->c(Landroid/util/JsonReader;)Lcom/bugsnag/android/BugsnagException;

    move-result-object v0

    move-object v1, v0

    .line 194
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    invoke-static {p1}, Lo/TimePickerDialog;->c(Landroid/util/JsonReader;)Lcom/bugsnag/android/BugsnagException;

    move-result-object v2

    .line 197
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-object v1, v2

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    .line 202
    new-instance p1, Lo/UiModeManager;

    invoke-direct {p1, p0, v0}, Lo/UiModeManager;-><init>(Lo/SearchDialog;Lcom/bugsnag/android/BugsnagException;)V

    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {v0}, Lcom/bugsnag/android/BugsnagException;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lo/UiModeManager;->d(Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method

.method private static e(Landroid/util/JsonReader;)Lcom/bugsnag/android/Breadcrumb;
    .locals 11

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 149
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    .line 150
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 151
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v7, "timestamp"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :sswitch_1
    const-string v7, "type"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v6, 0x2

    goto :goto_1

    :sswitch_2
    const-string v7, "name"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v6, 0x0

    goto :goto_1

    :sswitch_3
    const-string v7, "metaData"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v6, 0x3

    :cond_0
    :goto_1
    if-eqz v6, :cond_5

    if-eq v6, v10, :cond_4

    if-eq v6, v9, :cond_3

    if-eq v6, v8, :cond_1

    .line 173
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 166
    :cond_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 167
    :goto_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 168
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 170
    :cond_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    goto :goto_0

    .line 163
    :cond_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 157
    :cond_4
    :try_start_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lo/SystemServiceRegistry;->c(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 159
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to parse breadcrumb timestamp: "

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 153
    :cond_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 178
    :cond_6
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    if-eqz v2, :cond_7

    if-eqz v3, :cond_7

    if-eqz v4, :cond_7

    .line 180
    new-instance p0, Lcom/bugsnag/android/Breadcrumb;

    invoke-static {v4}, Lcom/bugsnag/android/BreadcrumbType;->valueOf(Ljava/lang/String;)Lcom/bugsnag/android/BreadcrumbType;

    move-result-object v1

    invoke-direct {p0, v2, v1, v3, v0}, Lcom/bugsnag/android/Breadcrumb;-><init>(Ljava/lang/String;Lcom/bugsnag/android/BreadcrumbType;Ljava/util/Date;Ljava/util/Map;)V

    return-object p0

    :cond_7
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1ae110b1 -> :sswitch_3
        0x337a8b -> :sswitch_2
        0x368f3a -> :sswitch_1
        0x3492916 -> :sswitch_0
    .end sparse-switch
.end method

.method private static f(Landroid/util/JsonReader;)Lo/PasswordMetrics;
    .locals 2

    .line 402
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 403
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 404
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 405
    invoke-static {p0}, Lo/TimePickerDialog;->j(Landroid/util/JsonReader;)Lo/ResultInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 408
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 411
    :cond_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    .line 412
    new-instance p0, Lo/PasswordMetrics;

    const/4 v1, 0x0

    new-array v1, v1, [Lo/ResultInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/ResultInfo;

    invoke-direct {p0, v0}, Lo/PasswordMetrics;-><init>([Lo/ResultInfo;)V

    return-object p0
.end method

.method private static g(Landroid/util/JsonReader;)Lo/AssistStructure;
    .locals 7

    .line 377
    new-instance v0, Lo/AssistStructure;

    invoke-direct {v0}, Lo/AssistStructure;-><init>()V

    .line 378
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 379
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 380
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0xd1b

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v4, :cond_2

    const v4, 0x337a8b

    if-eq v3, v4, :cond_1

    const v4, 0x5c24b9c

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "email"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x2

    goto :goto_1

    :cond_1
    const-string v3, "name"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const-string v3, "id"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    :cond_3
    :goto_1
    if-eqz v2, :cond_6

    if-eq v2, v6, :cond_5

    if-eq v2, v5, :cond_4

    .line 391
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 388
    :cond_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/AssistStructure;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 385
    :cond_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/AssistStructure;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 382
    :cond_6
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/AssistStructure;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 395
    :cond_7
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    return-object v0
.end method

.method private static h(Landroid/util/JsonReader;)Lo/DeviceAdminService;
    .locals 13

    .line 330
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v0

    move-object v4, v3

    move-object v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 331
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 332
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v8, -0x7ee2d36c

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, -0x1

    const/4 v12, 0x1

    if-eq v2, v8, :cond_3

    const v8, -0x4cf81ee7

    if-eq v2, v8, :cond_2

    const/16 v8, 0xd1b

    if-eq v2, v8, :cond_1

    const v8, 0x36ebcb

    if-eq v2, v8, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "user"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_2

    :cond_1
    const-string v2, "id"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    const-string v2, "events"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_2

    :cond_3
    const-string v2, "startedAt"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v0, -0x1

    :goto_2
    if-eqz v0, :cond_e

    if-eq v0, v12, :cond_d

    if-eq v0, v10, :cond_6

    if-eq v0, v9, :cond_5

    .line 364
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 361
    :cond_5
    invoke-static {p0}, Lo/TimePickerDialog;->g(Landroid/util/JsonReader;)Lo/AssistStructure;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    .line 344
    :cond_6
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 345
    :goto_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 346
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v8, -0x70aca57d

    if-eq v2, v8, :cond_8

    const v8, 0x294b573c

    if-eq v2, v8, :cond_7

    goto :goto_4

    :cond_7
    const-string v2, "handled"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_5

    :cond_8
    const-string v2, "unhandled"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    goto :goto_5

    :cond_9
    :goto_4
    const/4 v0, -0x1

    :goto_5
    if-eqz v0, :cond_b

    if-eq v0, v12, :cond_a

    .line 354
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_3

    .line 351
    :cond_a
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    move v7, v0

    goto :goto_3

    .line 348
    :cond_b
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    move v6, v0

    goto :goto_3

    .line 358
    :cond_c
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    goto/16 :goto_0

    .line 338
    :cond_d
    :try_start_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/SystemServiceRegistry;->c(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    goto/16 :goto_0

    :catch_0
    move-exception p0

    .line 340
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to parse session startedAt: "

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 334
    :cond_e
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto/16 :goto_0

    .line 368
    :cond_f
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    if-eqz v3, :cond_10

    if-eqz v4, :cond_10

    .line 371
    new-instance p0, Lo/DeviceAdminService;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lo/DeviceAdminService;-><init>(Ljava/lang/String;Ljava/util/Date;Lo/AssistStructure;II)V

    return-object p0

    .line 373
    :cond_10
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Session data missing required fields"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static i(Landroid/util/JsonReader;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 453
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 454
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 455
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 456
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 457
    invoke-static {p0}, Lo/TimePickerDialog;->o(Landroid/util/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 459
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 462
    :cond_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    return-object v0
.end method

.method private static j(Landroid/util/JsonReader;)Lo/ResultInfo;
    .locals 15

    .line 421
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object v7, v1

    move-object v8, v7

    move-object v10, v8

    move-wide v5, v2

    const/4 v9, 0x0

    .line 422
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 423
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "stacktrace"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_1
    const-string v4, "type"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_2
    const-string v4, "name"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_3
    const-string v4, "id"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_4
    const-string v4, "errorReportingThread"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x4

    :cond_0
    :goto_1
    if-eqz v3, :cond_5

    if-eq v3, v14, :cond_4

    if-eq v3, v13, :cond_3

    if-eq v3, v12, :cond_2

    if-eq v3, v11, :cond_1

    .line 440
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 437
    :cond_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v2

    move v9, v2

    goto :goto_0

    .line 434
    :cond_2
    invoke-static {p0}, Lo/TimePickerDialog;->a(Landroid/util/JsonReader;)Ljava/util/List;

    move-result-object v2

    move-object v10, v2

    goto :goto_0

    .line 431
    :cond_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    goto :goto_0

    .line 428
    :cond_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    goto :goto_0

    .line 425
    :cond_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v2

    move-wide v5, v2

    goto :goto_0

    .line 444
    :cond_6
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    if-eqz v8, :cond_7

    if-eqz v10, :cond_7

    .line 446
    new-instance p0, Lo/ResultInfo;

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lo/ResultInfo;-><init>(JLjava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    return-object p0

    :cond_7
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2db88550 -> :sswitch_4
        0xd1b -> :sswitch_3
        0x337a8b -> :sswitch_2
        0x368f3a -> :sswitch_1
        0x7a8983bd -> :sswitch_0
    .end sparse-switch
.end method

.method private static l(Landroid/util/JsonReader;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/JsonReader;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 468
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 469
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 470
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 471
    invoke-static {p0}, Lo/TimePickerDialog;->o(Landroid/util/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 473
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 476
    :cond_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    return-object v0
.end method

.method private static m(Landroid/util/JsonReader;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/JsonReader;",
            ")TT;"
        }
    .end annotation

    .line 501
    :try_start_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 504
    :catch_0
    :try_start_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    .line 506
    :catch_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method private static o(Landroid/util/JsonReader;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/JsonReader;",
            ")TT;"
        }
    .end annotation

    .line 482
    sget-object v0, Lo/TimePickerDialog$5;->c:[I

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 492
    :cond_0
    invoke-static {p0}, Lo/TimePickerDialog;->l(Landroid/util/JsonReader;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 488
    :cond_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 484
    :cond_2
    invoke-static {p0}, Lo/TimePickerDialog;->i(Landroid/util/JsonReader;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 490
    :cond_3
    invoke-static {p0}, Lo/TimePickerDialog;->m(Landroid/util/JsonReader;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 486
    :cond_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
