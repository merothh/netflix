.class public abstract Lo/BrowserContract;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/TableLayout;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/BrowserContract$ActionBar;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lo/Browser;",
        ">",
        "Ljava/lang/Object;",
        "Lo/TableLayout<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static c:Z = false

.field private static final e:Lcom/google/gson/JsonParser;

.field private static f:J

.field private static h:Z

.field private static k:D

.field private static l:Lo/BrowserContract$ActionBar;


# instance fields
.field private final a:Lo/Browser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field b:I

.field d:I

.field private final g:Z

.field private final i:Z

.field private final j:Landroid/os/Handler;

.field private final n:Lo/NetworkViolation;

.field private final o:Lo/LeakedClosableViolation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 75
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    sput-object v0, Lo/BrowserContract;->e:Lcom/google/gson/JsonParser;

    const-wide/16 v0, 0x0

    .line 159
    sput-wide v0, Lo/BrowserContract;->k:D

    return-void
.end method

.method public constructor <init>(Lo/Browser;ZLo/NetworkViolation;Lo/LeakedClosableViolation;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z",
            "Lo/NetworkViolation;",
            "Lo/LeakedClosableViolation;",
            "ZZ)V"
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    .line 112
    iput-object p1, p0, Lo/BrowserContract;->a:Lo/Browser;

    .line 113
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lo/BrowserContract;->j:Landroid/os/Handler;

    .line 114
    iput-boolean p2, p0, Lo/BrowserContract;->g:Z

    .line 115
    iput-object p3, p0, Lo/BrowserContract;->n:Lo/NetworkViolation;

    .line 116
    iput-object p4, p0, Lo/BrowserContract;->o:Lo/LeakedClosableViolation;

    .line 117
    iput-boolean p5, p0, Lo/BrowserContract;->i:Z

    .line 118
    sput-boolean p6, Lo/BrowserContract;->h:Z

    return-void

    .line 110
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "diskCacheFilter cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "diskCache cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 524
    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xf

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    .line 526
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p0, v0

    .line 528
    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private static a(Lo/PrintJob;Lo/Browser;Ljava/util/ArrayList;Lo/SqliteObjectLeakedViolation;Lo/LeakedClosableViolation;Ljava/lang/Boolean;Ljava/lang/Long;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/PrintJob;",
            "Lo/Browser;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lo/SqliteObjectLeakedViolation;",
            "Lo/LeakedClosableViolation;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v8, p3

    .line 564
    invoke-virtual/range {p0 .. p0}, Lo/PrintJob;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object/from16 v1, p5

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 565
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 566
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/RecommendationInfo;

    .line 569
    instance-of v4, v2, Lo/TwoStatePreference;

    if-eqz v4, :cond_0

    .line 570
    check-cast v2, Lo/TwoStatePreference;

    invoke-static {v2}, Lo/DocumentsContract;->e(Lo/TwoStatePreference;)Lo/PrintDocumentInfo;

    move-result-object v2

    .line 572
    :cond_0
    invoke-interface {v0, v3}, Lo/Browser;->d(Ljava/lang/String;)Lo/agi;

    move-result-object v4

    .line 574
    invoke-virtual {v2}, Lo/RecommendationInfo;->r_()Z

    move-result v5

    move-object/from16 v10, p2

    .line 576
    invoke-static {v10, v3}, Lo/BrowserContract;->a(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x0

    .line 578
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "lolomo"

    .line 579
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    move-object/from16 v12, p6

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    :goto_1
    move-object/from16 v13, p4

    if-nez v1, :cond_2

    .line 581
    invoke-interface {v13, v11}, Lo/LeakedClosableViolation;->c(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_2
    move-object v11, v1

    .line 584
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    instance-of v1, v2, Lo/PrintDocumentInfo;

    if-eqz v1, :cond_3

    .line 585
    invoke-static {v6}, Lo/Settings;->e(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 586
    invoke-interface {v8, v1, v2, v12}, Lo/SqliteObjectLeakedViolation;->e(Ljava/lang/String;Lo/RecommendationInfo;Ljava/lang/Long;)V

    .line 590
    :cond_3
    sget-boolean v1, Lo/BrowserContract;->h:Z

    if-eqz v1, :cond_4

    .line 591
    instance-of v1, v4, Lo/ago;

    if-eqz v1, :cond_4

    instance-of v1, v2, Lo/PrintDocumentInfo;

    if-eqz v1, :cond_4

    .line 592
    move-object v1, v4

    check-cast v1, Lo/ago;

    .line 593
    move-object v14, v2

    check-cast v14, Lo/PrintDocumentInfo;

    .line 596
    invoke-virtual {v14}, Lo/PrintDocumentInfo;->d()Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v1, v15}, Lo/ago;->setExpires(Ljava/lang/Long;)V

    .line 599
    invoke-virtual {v14}, Lo/PrintDocumentInfo;->c()Ljava/lang/Long;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 601
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-interface {v1, v14, v15}, Lo/ago;->setTimestamp(J)V

    .line 607
    :cond_4
    instance-of v1, v4, Lo/SearchIndexableData;

    if-eqz v1, :cond_5

    invoke-virtual {v2}, Lo/RecommendationInfo;->o_()Z

    move-result v1

    if-nez v1, :cond_5

    .line 611
    check-cast v4, Lo/SearchIndexableData;

    invoke-virtual {v4}, Lo/SearchIndexableData;->e()Ljava/lang/Object;

    move-result-object v4

    .line 618
    :cond_5
    instance-of v1, v4, Lo/Browser;

    if-eqz v1, :cond_7

    if-eqz v5, :cond_6

    .line 621
    invoke-virtual {v2}, Lo/RecommendationInfo;->n()Lo/PrintJob;

    move-result-object v1

    move-object v2, v4

    check-cast v2, Lo/Browser;

    move-object v3, v6

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v11

    move-object/from16 v7, p6

    invoke-static/range {v1 .. v7}, Lo/BrowserContract;->a(Lo/PrintJob;Lo/Browser;Ljava/util/ArrayList;Lo/SqliteObjectLeakedViolation;Lo/LeakedClosableViolation;Ljava/lang/Boolean;Ljava/lang/Long;)V

    goto/16 :goto_3

    .line 626
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "should not happen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 629
    :cond_7
    instance-of v1, v4, Lo/OneTimeUseBuilder;

    if-eqz v1, :cond_f

    .line 630
    check-cast v4, Lo/OneTimeUseBuilder;

    .line 632
    invoke-virtual {v2}, Lo/RecommendationInfo;->n_()Z

    move-result v1

    if-eqz v8, :cond_9

    if-eqz v1, :cond_8

    .line 642
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    const-string v14, "shows"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v2}, Lo/RecommendationInfo;->o()Lo/TwoStatePreference;

    move-result-object v7

    invoke-virtual {v7}, Lo/TwoStatePreference;->d()Ljava/lang/Long;

    move-result-object v7

    if-eqz v7, :cond_8

    const-wide/32 v14, 0x927c0

    .line 644
    new-instance v7, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    add-long v14, v16, v14

    invoke-direct {v7, v14, v15}, Ljava/util/Date;-><init>(J)V

    const-wide/32 v14, -0x927c0

    .line 646
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 650
    :cond_8
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 651
    invoke-static {v6}, Lo/Settings;->e(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    .line 652
    invoke-interface {v8, v6, v2, v12}, Lo/SqliteObjectLeakedViolation;->e(Ljava/lang/String;Lo/RecommendationInfo;Ljava/lang/Long;)V

    .line 656
    :cond_9
    invoke-virtual {v2}, Lo/RecommendationInfo;->t_()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 657
    invoke-virtual {v2}, Lo/RecommendationInfo;->k()Lo/PrinterDiscoverySession;

    move-result-object v1

    invoke-static {v1}, Lo/SearchIndexableResource;->b(Lo/PrinterDiscoverySession;)Lo/TextInputTimePickerView;

    move-result-object v1

    .line 661
    invoke-virtual {v4, v1}, Lo/OneTimeUseBuilder;->a(Lo/TextInputTimePickerView;)V

    goto/16 :goto_3

    .line 662
    :cond_a
    invoke-virtual {v2}, Lo/RecommendationInfo;->q_()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 664
    sget-object v1, Lo/MultiSelectListPreference;->b:Lo/MultiSelectListPreference;

    invoke-virtual {v2}, Lo/RecommendationInfo;->l()Lo/VolumePreference;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/MultiSelectListPreference;->b(Lo/VolumePreference;)Lcom/google/gson/JsonArray;

    move-result-object v1

    .line 668
    invoke-static {v1}, Lo/SearchIndexableResource;->b(Lcom/google/gson/JsonArray;)Lo/TextInputTimePickerView;

    move-result-object v1

    invoke-virtual {v4, v1}, Lo/OneTimeUseBuilder;->a(Lo/TextInputTimePickerView;)V

    goto/16 :goto_3

    .line 669
    :cond_b
    invoke-virtual {v2}, Lo/RecommendationInfo;->s_()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 673
    invoke-static {}, Lo/SettingsSlicesContract;->b()Lo/SettingsSlicesContract;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lo/Browser;->c(Ljava/lang/String;Lo/agi;)V

    goto/16 :goto_3

    :cond_c
    if-nez v5, :cond_d

    if-eqz v1, :cond_14

    :cond_d
    const-string v1, "current"

    .line 675
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto/16 :goto_3

    :cond_e
    const-string v1, "latest"

    .line 679
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_f
    if-eqz v4, :cond_14

    .line 693
    instance-of v1, v2, Lo/TwoStatePreference;

    if-eqz v1, :cond_10

    .line 694
    move-object v1, v2

    check-cast v1, Lo/TwoStatePreference;

    .line 695
    invoke-virtual {v1}, Lo/TwoStatePreference;->a()Lcom/google/gson/JsonElement;

    move-result-object v1

    goto :goto_2

    .line 698
    :cond_10
    sget-object v1, Lo/MultiSelectListPreference;->b:Lo/MultiSelectListPreference;

    invoke-virtual {v1, v2}, Lo/MultiSelectListPreference;->b(Lo/RecommendationInfo;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 701
    :goto_2
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 702
    invoke-static {v6}, Lo/Settings;->e(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    .line 703
    invoke-interface {v8, v5, v2, v12}, Lo/SqliteObjectLeakedViolation;->e(Ljava/lang/String;Lo/RecommendationInfo;Ljava/lang/Long;)V

    .line 707
    :cond_11
    instance-of v2, v4, Lo/DocumentsProvider;

    if-eqz v2, :cond_12

    .line 709
    :try_start_0
    move-object v2, v4

    check-cast v2, Lo/DocumentsProvider;

    .line 710
    invoke-interface {v2, v1}, Lo/DocumentsProvider;->populate(Lcom/google/gson/JsonElement;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 712
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when populating node: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 716
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->b:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    invoke-interface {v2, v3, v1, v0}, Lo/SpinnerAdapter;->a(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 717
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 723
    :cond_12
    instance-of v2, v4, Lo/agi;

    if-eqz v2, :cond_13

    .line 724
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "CachedModelProxy"

    invoke-static {v4, v1, v2}, Lo/Downloads;->a(Ljava/lang/String;Lcom/google/gson/JsonElement;Ljava/lang/Class;)Lo/agi;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lo/Browser;->c(Ljava/lang/String;Lo/agi;)V

    goto :goto_3

    .line 726
    :cond_13
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->b:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    const-string v3, "Class was not an instance of BrowseObject, this should not happen"

    invoke-interface {v1, v2, v3}, Lo/SpinnerAdapter;->b(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/String;)V

    :cond_14
    :goto_3
    move-object v1, v11

    goto/16 :goto_0

    :cond_15
    return-void
.end method

.method private final declared-synchronized a(Lo/TextInputTimePickerView;Lo/agi;ILo/TextClock;ZLo/NonSdkApiUsedViolation;Lo/Contacts;JLjava/util/List;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/TextInputTimePickerView;",
            "Lo/agi;",
            "I",
            "Lo/TextClock;",
            "Z",
            "Lo/NonSdkApiUsedViolation;",
            "Lo/Contacts;",
            "J",
            "Ljava/util/List<",
            "Lo/SearchIndexablesProvider;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v0, p1

    move-object/from16 v13, p2

    move/from16 v14, p3

    move-object/from16 v15, p4

    monitor-enter p0

    .line 292
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lo/TextInputTimePickerView;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v14, v1, :cond_0

    if-nez v13, :cond_0

    .line 297
    iget-object v1, v15, Lo/TextClock;->e:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    monitor-exit p0

    return-void

    :cond_0
    if-ne v14, v1, :cond_2

    if-eqz v13, :cond_1

    .line 301
    :try_start_1
    iget-object v1, v15, Lo/TextClock;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 303
    :cond_1
    iget-object v1, v15, Lo/TextClock;->e:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 305
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    if-gt v14, v1, :cond_16

    .line 311
    :try_start_2
    instance-of v1, v13, Lo/OneTimeUseBuilder;

    if-eqz v1, :cond_6

    .line 312
    move-object v1, v13

    check-cast v1, Lo/OneTimeUseBuilder;

    .line 313
    invoke-virtual {v1}, Lo/OneTimeUseBuilder;->e()Lo/agi;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 315
    invoke-virtual {v1}, Lo/OneTimeUseBuilder;->a()Lo/TextInputTimePickerView;

    move-result-object v2

    invoke-interface {v0, v14}, Lo/TextInputTimePickerView;->b(I)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-interface {v2, v0}, Lo/TextInputTimePickerView;->d(Lo/TextInputTimePickerView;)Lo/TextInputTimePickerView;

    move-result-object v2

    .line 317
    invoke-virtual {v1}, Lo/OneTimeUseBuilder;->a()Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-interface {v0}, Lo/TextInputTimePickerView;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move-object/from16 v1, p0

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p10

    move-wide/from16 v9, p8

    .line 315
    invoke-direct/range {v1 .. v10}, Lo/BrowserContract;->b(Lo/TextInputTimePickerView;Lo/agi;ILo/TextClock;Lo/NonSdkApiUsedViolation;Lo/Contacts;Ljava/util/List;J)V

    goto :goto_1

    .line 322
    :cond_3
    invoke-virtual {v1}, Lo/OneTimeUseBuilder;->a()Lo/TextInputTimePickerView;

    move-result-object v2

    if-nez v2, :cond_4

    .line 326
    iget-object v1, v15, Lo/TextClock;->e:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz p7, :cond_5

    .line 328
    invoke-virtual/range {p7 .. p7}, Lo/Contacts;->b()V

    goto :goto_1

    .line 331
    :cond_4
    invoke-virtual {v1}, Lo/OneTimeUseBuilder;->a()Lo/TextInputTimePickerView;

    move-result-object v1

    invoke-interface {v0, v14}, Lo/TextInputTimePickerView;->b(I)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-interface {v1, v0}, Lo/TextInputTimePickerView;->d(Lo/TextInputTimePickerView;)Lo/TextInputTimePickerView;

    move-result-object v2

    iget-object v3, v12, Lo/BrowserContract;->a:Lo/Browser;

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p10

    move-wide/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lo/BrowserContract;->b(Lo/TextInputTimePickerView;Lo/agi;ILo/TextClock;Lo/NonSdkApiUsedViolation;Lo/Contacts;Ljava/util/List;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 339
    :cond_5
    :goto_1
    monitor-exit p0

    return-void

    .line 340
    :cond_6
    :try_start_3
    instance-of v1, v13, Ljava/lang/Exception;

    if-nez v1, :cond_15

    instance-of v1, v13, Lo/SettingsSlicesContract;

    if-eqz v1, :cond_7

    goto/16 :goto_6

    .line 345
    :cond_7
    move-object v7, v13

    check-cast v7, Lo/Browser;

    .line 346
    invoke-interface/range {p1 .. p1}, Lo/TextInputTimePickerView;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 350
    instance-of v2, v1, Ljava/util/List;

    const/16 v16, 0x0

    if-eqz v2, :cond_c

    .line 351
    check-cast v1, Ljava/util/List;

    .line 353
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_8
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 354
    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_b

    .line 355
    check-cast v1, Ljava/util/Map;

    const-string v2, "from"

    .line 357
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const-string v3, "to"

    .line 358
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Ljava/lang/Integer;

    if-nez v2, :cond_9

    .line 361
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_9
    if-eqz v18, :cond_a

    .line 368
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v11, v1

    :goto_3
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v11, v1, :cond_8

    .line 369
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v14, v1}, Lo/TextInputTimePickerView;->d(ILjava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v2

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-wide/from16 v9, p8

    move/from16 v19, v11

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lo/BrowserContract;->a(Lo/TextInputTimePickerView;Lo/agi;ILo/TextClock;ZLo/NonSdkApiUsedViolation;Lo/Contacts;JLjava/util/List;)V

    add-int/lit8 v11, v19, 0x1

    goto :goto_3

    .line 365
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No \'to\' param"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :cond_b
    invoke-interface {v0, v14, v1}, Lo/TextInputTimePickerView;->d(ILjava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v2

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lo/BrowserContract;->a(Lo/TextInputTimePickerView;Lo/agi;ILo/TextClock;ZLo/NonSdkApiUsedViolation;Lo/Contacts;JLjava/util/List;)V

    goto :goto_2

    .line 377
    :cond_c
    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_f

    .line 378
    check-cast v1, Ljava/util/Map;

    const-string v2, "from"

    .line 380
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const-string v3, "to"

    .line 381
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Ljava/lang/Integer;

    if-nez v2, :cond_d

    .line 384
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_d
    if-eqz v17, :cond_e

    .line 391
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v11, v1

    :goto_4
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v11, v1, :cond_14

    .line 392
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v14, v1}, Lo/TextInputTimePickerView;->d(ILjava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v2

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-wide/from16 v9, p8

    move/from16 v16, v11

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lo/BrowserContract;->a(Lo/TextInputTimePickerView;Lo/agi;ILo/TextClock;ZLo/NonSdkApiUsedViolation;Lo/Contacts;JLjava/util/List;)V

    add-int/lit8 v11, v16, 0x1

    goto :goto_4

    .line 388
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No \'to\' param"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_f
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v1, p0

    move-object v2, v7

    move-object v3, v8

    move-wide/from16 v4, p8

    move-object/from16 v6, p7

    .line 397
    invoke-direct/range {v1 .. v6}, Lo/BrowserContract;->d(Lo/Browser;Ljava/lang/String;JLo/Contacts;)Lo/agi;

    move-result-object v3

    add-int/lit8 v4, v14, 0x1

    if-nez v3, :cond_12

    if-eqz p7, :cond_10

    .line 401
    invoke-virtual/range {p7 .. p7}, Lo/Contacts;->b()V

    :cond_10
    if-eqz p5, :cond_11

    .line 406
    new-instance v1, Lo/SearchIndexablesProvider;

    invoke-direct {v1, v0, v14, v8, v7}, Lo/SearchIndexablesProvider;-><init>(Lo/TextInputTimePickerView;ILjava/lang/String;Lo/Browser;)V

    move-object/from16 v11, p10

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 407
    monitor-exit p0

    return-void

    :cond_11
    move-object/from16 v11, p10

    goto :goto_5

    :cond_12
    move-object/from16 v11, p10

    if-eqz p7, :cond_13

    .line 410
    :try_start_4
    instance-of v1, v3, Lo/Browser;

    if-nez v1, :cond_13

    .line 411
    invoke-virtual/range {p7 .. p7}, Lo/Contacts;->d()V

    :cond_13
    :goto_5
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    .line 415
    invoke-direct/range {v1 .. v11}, Lo/BrowserContract;->a(Lo/TextInputTimePickerView;Lo/agi;ILo/TextClock;ZLo/NonSdkApiUsedViolation;Lo/Contacts;JLjava/util/List;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 418
    :cond_14
    monitor-exit p0

    return-void

    .line 341
    :cond_15
    :goto_6
    :try_start_5
    iget-object v1, v15, Lo/TextClock;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 342
    monitor-exit p0

    return-void

    .line 307
    :cond_16
    :try_start_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Offset is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(J)Lo/SqliteObjectLeakedViolation;
    .locals 1

    .line 128
    iget-object v0, p0, Lo/BrowserContract;->n:Lo/NetworkViolation;

    invoke-interface {v0, p1, p2}, Lo/NetworkViolation;->a(J)Lo/SqliteObjectLeakedViolation;

    move-result-object p1

    return-object p1
.end method

.method private final declared-synchronized b(Lo/TextInputTimePickerView;Lo/agi;ILo/TextClock;Lo/NonSdkApiUsedViolation;Lo/Contacts;Ljava/util/List;J)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/TextInputTimePickerView;",
            "Lo/agi;",
            "I",
            "Lo/TextClock;",
            "Lo/NonSdkApiUsedViolation;",
            "Lo/Contacts;",
            "Ljava/util/List<",
            "Lo/SearchIndexablesProvider;",
            ">;J)V"
        }
    .end annotation

    move-object v12, p0

    monitor-enter p0

    const/4 v0, 0x0

    .line 266
    :try_start_0
    invoke-interface {p1}, Lo/TextInputTimePickerView;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 268
    iget-object v0, v12, Lo/BrowserContract;->o:Lo/LeakedClosableViolation;

    invoke-interface {v0, v1}, Lo/LeakedClosableViolation;->c(Ljava/lang/String;)Z

    move-result v0

    move v6, v0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-wide/from16 v9, p8

    move-object/from16 v11, p7

    .line 270
    invoke-direct/range {v1 .. v11}, Lo/BrowserContract;->a(Lo/TextInputTimePickerView;Lo/agi;ILo/TextClock;ZLo/NonSdkApiUsedViolation;Lo/Contacts;JLjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static c(J)V
    .locals 0

    .line 142
    sput-wide p0, Lo/BrowserContract;->f:J

    return-void
.end method

.method public static c(Lo/BrowserContract$ActionBar;)V
    .locals 0

    .line 981
    sput-object p0, Lo/BrowserContract;->l:Lo/BrowserContract$ActionBar;

    return-void
.end method

.method private d(J)Lo/NonSdkApiUsedViolation;
    .locals 1

    .line 123
    iget-object v0, p0, Lo/BrowserContract;->n:Lo/NetworkViolation;

    invoke-interface {v0, p1, p2}, Lo/NetworkViolation;->d(J)Lo/NonSdkApiUsedViolation;

    move-result-object p1

    return-object p1
.end method

.method private d(Lo/Browser;Ljava/lang/String;JLo/Contacts;)Lo/agi;
    .locals 7

    .line 495
    invoke-interface {p1, p2}, Lo/Browser;->b(Ljava/lang/String;)Lo/agi;

    move-result-object p1

    .line 499
    iget-boolean p2, p0, Lo/BrowserContract;->i:Z

    if-eqz p2, :cond_1

    .line 500
    instance-of p2, p1, Lo/ago;

    if-eqz p2, :cond_1

    .line 501
    move-object p2, p1

    check-cast p2, Lo/ago;

    invoke-interface {p2}, Lo/ago;->getExpires()Ljava/lang/Long;

    move-result-object v0

    .line 502
    invoke-interface {p2}, Lo/ago;->getTimestamp()J

    move-result-wide v5

    if-eqz v0, :cond_1

    .line 503
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-wide v3, p3

    invoke-static/range {v1 .. v6}, Lo/PrintService;->e(JJJ)Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p5, :cond_0

    .line 506
    invoke-virtual {p5}, Lo/Contacts;->e()V

    :cond_0
    const/4 p1, 0x0

    :cond_1
    return-object p1
.end method

.method private d(Lo/Contacts;Lo/NonSdkApiUsedViolation;Ljava/util/List;Lo/TextClock;J)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Contacts;",
            "Lo/NonSdkApiUsedViolation;",
            "Ljava/util/List<",
            "Lo/SearchIndexablesProvider;",
            ">;",
            "Lo/TextClock;",
            "J)V"
        }
    .end annotation

    move-object/from16 v11, p1

    move-object/from16 v12, p3

    .line 217
    :goto_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 219
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x3e7

    const/4 v13, 0x0

    if-le v0, v1, :cond_0

    const/16 v0, 0x3e6

    .line 221
    invoke-interface {v12, v13, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 224
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_1
    move-object v14, v0

    if-eqz v11, :cond_1

    .line 229
    invoke-virtual/range {p1 .. p1}, Lo/Contacts;->a()V

    :cond_1
    move-object/from16 v15, p2

    .line 231
    invoke-static {v15, v14, v11}, Lo/Settings;->d(Lo/NonSdkApiUsedViolation;Ljava/util/List;Lo/IntentReceiverLeakedViolation;)V

    if-eqz v11, :cond_2

    .line 233
    invoke-virtual/range {p1 .. p1}, Lo/Contacts;->g()V

    .line 237
    :cond_2
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/SearchIndexablesProvider;

    const/4 v1, 0x1

    if-eqz v11, :cond_4

    .line 239
    invoke-virtual {v0}, Lo/SearchIndexablesProvider;->a()Lo/agi;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v11, v2}, Lo/Contacts;->e(Z)V

    .line 241
    :cond_4
    invoke-virtual {v0}, Lo/SearchIndexablesProvider;->c()Lo/TextInputTimePickerView;

    move-result-object v2

    invoke-virtual {v0}, Lo/SearchIndexablesProvider;->a()Lo/agi;

    move-result-object v3

    invoke-virtual {v0}, Lo/SearchIndexablesProvider;->e()I

    move-result v0

    add-int/lit8 v4, v0, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move-object/from16 v4, p4

    move-object/from16 v6, p2

    move-object/from16 v7, p1

    move-wide/from16 v8, p5

    move-object/from16 v10, p3

    invoke-direct/range {v0 .. v10}, Lo/BrowserContract;->a(Lo/TextInputTimePickerView;Lo/agi;ILo/TextClock;ZLo/NonSdkApiUsedViolation;Lo/Contacts;JLjava/util/List;)V

    goto :goto_2

    .line 246
    :cond_5
    invoke-interface {v12, v14}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_6
    return-void
.end method

.method private e(J)Lo/InstanceCountViolation;
    .locals 1

    .line 133
    iget-object v0, p0, Lo/BrowserContract;->n:Lo/NetworkViolation;

    invoke-interface {v0, p1, p2}, Lo/NetworkViolation;->c(J)Lo/InstanceCountViolation;

    move-result-object p1

    return-object p1
.end method

.method private declared-synchronized e(Lo/TextInputTimePickerView;Lo/InstanceCountViolation;)V
    .locals 6

    monitor-enter p0

    .line 765
    :try_start_0
    invoke-interface {p1}, Lo/TextInputTimePickerView;->b()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 766
    invoke-virtual {p0, p1}, Lo/BrowserContract;->b(Lo/TextInputTimePickerView;)Lo/agi;

    move-result-object v0

    goto :goto_0

    .line 768
    :cond_0
    invoke-interface {p1}, Lo/TextInputTimePickerView;->b()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-interface {p1, v1, v0}, Lo/TextInputTimePickerView;->b(II)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/BrowserContract;->b(Lo/TextInputTimePickerView;)Lo/agi;

    move-result-object v0

    :goto_0
    const-string v3, "CachedModelProxy"

    .line 772
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "falcor: invalidating: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_2

    .line 774
    invoke-interface {p1}, Lo/TextInputTimePickerView;->j()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 776
    invoke-interface {p2, v3}, Lo/InstanceCountViolation;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p2, "CachedModelProxy"

    .line 778
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot invalidate pql as it is not a simple path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    const-string p2, "CachedModelProxy"

    const-string v0, "Can\'t invalidate node because it is null: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 783
    invoke-static {p2, v0, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_2

    .line 784
    :cond_3
    instance-of p2, v0, Lo/Browser;

    const/4 v3, 0x2

    if-eqz p2, :cond_5

    .line 785
    instance-of p2, v0, Lcom/netflix/falkor/BranchMap;

    if-eqz p2, :cond_4

    invoke-interface {p1}, Lo/TextInputTimePickerView;->b()I

    move-result p2

    if-ne p2, v2, :cond_4

    const-string p1, "CachedModelProxy"

    const-string p2, "Invalidating at BranchMap: %s"

    new-array v2, v2, [Ljava/lang/Object;

    .line 786
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {p1, p2, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 787
    check-cast v0, Lcom/netflix/falkor/BranchMap;

    invoke-virtual {v0}, Lcom/netflix/falkor/BranchMap;->clear()V

    goto :goto_2

    .line 789
    :cond_4
    invoke-interface {p1}, Lo/TextInputTimePickerView;->d()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1}, Lo/TextInputTimePickerView;->b()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "CachedModelProxy"

    const-string v4, "Invalidating at BranchNode: %s, node key: %s"

    new-array v3, v3, [Ljava/lang/Object;

    .line 790
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v1

    aput-object p1, v3, v2

    invoke-static {p2, v4, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 791
    check-cast v0, Lo/Browser;

    invoke-interface {v0, p1}, Lo/Browser;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 793
    :cond_5
    instance-of p2, v0, Lo/OneTimeUseBuilder;

    if-eqz p2, :cond_6

    const-string p2, "CachedModelProxy"

    const-string v3, "Invalidating ref path for pql: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 794
    invoke-static {p2, v3, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 795
    check-cast v0, Lo/OneTimeUseBuilder;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lo/OneTimeUseBuilder;->a(Lo/TextInputTimePickerView;)V

    goto :goto_2

    :cond_6
    const-string p2, "CachedModelProxy"

    const-string v4, "Don\'t know how to invalidate node: %s, pql: "

    new-array v3, v3, [Ljava/lang/Object;

    .line 797
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v3, v1

    aput-object p1, v3, v2

    invoke-static {p2, v4, v3}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 799
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static f()Z
    .locals 5

    .line 1000
    invoke-static {}, Lo/BrowserContract;->g()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static g()J
    .locals 2

    .line 989
    sget-object v0, Lo/BrowserContract;->l:Lo/BrowserContract$ActionBar;

    if-eqz v0, :cond_0

    .line 990
    invoke-interface {v0}, Lo/BrowserContract$ActionBar;->d()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x2255100

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public final a()Lcom/google/gson/JsonParser;
    .locals 1

    .line 833
    sget-object v0, Lo/BrowserContract;->e:Lcom/google/gson/JsonParser;

    return-object v0
.end method

.method public final declared-synchronized a(Z)V
    .locals 3

    monitor-enter p0

    .line 807
    :try_start_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CachedModelProxy Flushing caches. Include Disk "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 810
    iget-object p1, p0, Lo/BrowserContract;->n:Lo/NetworkViolation;

    invoke-interface {p1}, Lo/NetworkViolation;->e()Lo/ServiceConnectionLeakedViolation;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 811
    :try_start_1
    invoke-interface {p1}, Lo/ServiceConnectionLeakedViolation;->d()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 812
    :try_start_2
    invoke-interface {p1}, Lo/ServiceConnectionLeakedViolation;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 810
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_0

    .line 812
    :try_start_4
    invoke-interface {p1}, Lo/ServiceConnectionLeakedViolation;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1

    :cond_1
    :goto_1
    const/4 p1, -0x1

    .line 816
    iput p1, p0, Lo/BrowserContract;->b:I

    .line 817
    iput p1, p0, Lo/BrowserContract;->d:I

    .line 819
    iget-object p1, p0, Lo/BrowserContract;->a:Lo/Browser;

    instance-of p1, p1, Ljava/io/Flushable;

    if-eqz p1, :cond_2

    .line 820
    iget-object p1, p0, Lo/BrowserContract;->a:Lo/Browser;

    check-cast p1, Ljava/io/Flushable;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 825
    :try_start_6
    invoke-interface {p1}, Ljava/io/Flushable;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_7
    const-string v0, "CachedModelProxy"

    .line 827
    invoke-static {v0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 830
    :cond_2
    :goto_2
    monitor-exit p0

    return-void

    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()Lo/Browser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 837
    iget-object v0, p0, Lo/BrowserContract;->a:Lo/Browser;

    return-object v0
.end method

.method public final declared-synchronized b(Ljava/util/Collection;Lo/Contacts;)Lo/TextClock;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lo/TextInputTimePickerView;",
            ">;",
            "Lo/Contacts;",
            ")",
            "Lo/TextClock;"
        }
    .end annotation

    move-object/from16 v11, p0

    monitor-enter p0

    .line 181
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 182
    new-instance v0, Lo/TextClock;

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lo/TextClock;-><init>(Ljava/util/Collection;)V

    .line 183
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 184
    invoke-direct {v11, v12, v13}, Lo/BrowserContract;->d(J)Lo/NonSdkApiUsedViolation;

    move-result-object v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 186
    :try_start_1
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lo/TextInputTimePickerView;

    .line 187
    iget-object v3, v11, Lo/BrowserContract;->a:Lo/Browser;

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object v5, v0

    move-object v6, v15

    move-object/from16 v7, p2

    move-object v8, v14

    move-wide v9, v12

    invoke-direct/range {v1 .. v10}, Lo/BrowserContract;->b(Lo/TextInputTimePickerView;Lo/agi;ILo/TextClock;Lo/NonSdkApiUsedViolation;Lo/Contacts;Ljava/util/List;J)V

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v3, v15

    move-object v4, v14

    move-object v5, v0

    move-wide v6, v12

    .line 188
    invoke-direct/range {v1 .. v7}, Lo/BrowserContract;->d(Lo/Contacts;Lo/NonSdkApiUsedViolation;Ljava/util/List;Lo/TextClock;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v15, :cond_1

    .line 190
    :try_start_2
    invoke-interface {v15}, Lo/NonSdkApiUsedViolation;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 205
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 184
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    if-eqz v15, :cond_2

    .line 190
    :try_start_4
    invoke-interface {v15}, Lo/NonSdkApiUsedViolation;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v3, v0

    :try_start_5
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lo/TextInputTimePickerView;)Lo/agi;
    .locals 10

    monitor-enter p0

    if-eqz p1, :cond_9

    .line 424
    :try_start_0
    invoke-interface {p1}, Lo/TextInputTimePickerView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_4

    .line 434
    :cond_0
    iget-object v0, p0, Lo/BrowserContract;->a:Lo/Browser;

    .line 435
    move-object v1, v0

    check-cast v1, Lo/Browser;

    .line 437
    invoke-interface {p1}, Lo/TextInputTimePickerView;->d()Ljava/util/List;

    move-result-object p1

    .line 438
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move-object v5, v1

    :goto_0
    if-ge v3, v2, :cond_8

    .line 441
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 446
    :cond_1
    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    .line 449
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/4 v9, 0x0

    move-object v4, p0

    .line 446
    invoke-direct/range {v4 .. v9}, Lo/BrowserContract;->d(Lo/Browser;Ljava/lang/String;JLo/Contacts;)Lo/agi;

    move-result-object v0

    .line 455
    :goto_1
    instance-of v1, v0, Lo/OneTimeUseBuilder;

    if-eqz v1, :cond_3

    .line 456
    check-cast v0, Lo/OneTimeUseBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v2, -0x1

    if-ne v3, v1, :cond_2

    .line 460
    monitor-exit p0

    return-object v0

    .line 463
    :cond_2
    :try_start_1
    invoke-virtual {v0, p0}, Lo/OneTimeUseBuilder;->b(Lo/TableLayout;)Lo/agi;

    move-result-object v0

    goto :goto_1

    .line 466
    :cond_3
    instance-of v1, v0, Lo/agj;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_4

    add-int/lit8 v1, v2, -0x2

    if-lt v3, v1, :cond_4

    .line 468
    monitor-exit p0

    return-object v0

    .line 469
    :cond_4
    :try_start_2
    instance-of v1, v0, Lo/Browser;

    if-eqz v1, :cond_5

    .line 470
    move-object v1, v0

    check-cast v1, Lo/Browser;

    move-object v5, v1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 471
    :cond_5
    instance-of p1, v0, Ljava/lang/Exception;

    if-nez p1, :cond_7

    instance-of p1, v0, Lo/SettingsSlicesContract;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_6

    goto :goto_3

    .line 474
    :cond_6
    monitor-exit p0

    return-object v0

    .line 472
    :cond_7
    :goto_3
    monitor-exit p0

    return-object v0

    .line 477
    :cond_8
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_9
    :goto_4
    const/4 p1, 0x0

    .line 428
    monitor-exit p0

    return-object p1
.end method

.method public final declared-synchronized b(Lo/PrintJob;J)V
    .locals 7

    monitor-enter p0

    .line 535
    :try_start_0
    invoke-direct {p0, p2, p3}, Lo/BrowserContract;->b(J)Lo/SqliteObjectLeakedViolation;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 541
    :try_start_1
    invoke-static {}, Lo/BrowserContract;->g()J

    move-result-wide v0

    neg-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 543
    invoke-virtual {p0}, Lo/BrowserContract;->b()Lo/Browser;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v4, p0, Lo/BrowserContract;->o:Lo/LeakedClosableViolation;

    const/4 v5, 0x0

    move-object v0, p1

    move-object v3, p2

    invoke-static/range {v0 .. v6}, Lo/BrowserContract;->a(Lo/PrintJob;Lo/Browser;Ljava/util/ArrayList;Lo/SqliteObjectLeakedViolation;Lo/LeakedClosableViolation;Ljava/lang/Boolean;Ljava/lang/Long;)V

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 548
    invoke-interface {p2, p1}, Lo/SqliteObjectLeakedViolation;->c(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-eqz p2, :cond_1

    .line 550
    :try_start_2
    invoke-interface {p2}, Lo/SqliteObjectLeakedViolation;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 551
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 535
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p3

    if-eqz p2, :cond_2

    .line 550
    :try_start_4
    invoke-interface {p2}, Lo/SqliteObjectLeakedViolation;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    :try_start_5
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public varargs declared-synchronized b([Lo/TextInputTimePickerView;)V
    .locals 5

    monitor-enter p0

    .line 746
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 747
    invoke-direct {p0, v0, v1}, Lo/BrowserContract;->e(J)Lo/InstanceCountViolation;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 748
    :try_start_1
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    .line 749
    invoke-direct {p0, v4, v0}, Lo/BrowserContract;->e(Lo/TextInputTimePickerView;Lo/InstanceCountViolation;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 751
    :cond_0
    invoke-interface {v0, v2}, Lo/InstanceCountViolation;->c(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 752
    :try_start_2
    invoke-interface {v0}, Lo/InstanceCountViolation;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 753
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 747
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_1

    .line 752
    :try_start_4
    invoke-interface {v0}, Lo/InstanceCountViolation;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c()I
    .locals 1

    .line 154
    iget v0, p0, Lo/BrowserContract;->b:I

    return v0
.end method

.method public final declared-synchronized c(Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I::",
            "Lo/agj;",
            ">(",
            "Ljava/util/Collection<",
            "Lo/TextInputTimePickerView;",
            ">;)",
            "Ljava/util/List<",
            "TI;>;"
        }
    .end annotation

    monitor-enter p0

    .line 859
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 860
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/TextInputTimePickerView;

    .line 861
    invoke-interface {v1}, Lo/TextInputTimePickerView;->a()Ljava/util/LinkedHashSet;

    move-result-object v1

    .line 862
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/TextInputTimePickerView;

    .line 863
    invoke-virtual {p0, v2}, Lo/BrowserContract;->b(Lo/TextInputTimePickerView;)Lo/agi;

    move-result-object v2

    .line 864
    instance-of v3, v2, Lo/agj;

    if-eqz v3, :cond_1

    .line 865
    check-cast v2, Lo/agj;

    .line 869
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 879
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 880
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/agj;

    .line 881
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 887
    :cond_3
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final d()I
    .locals 1

    .line 150
    iget v0, p0, Lo/BrowserContract;->d:I

    return v0
.end method

.method public final e(Lo/TextInputTimePickerView;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I::",
            "Lo/agj;",
            ">(",
            "Lo/TextInputTimePickerView;",
            ")",
            "Ljava/util/List<",
            "TI;>;"
        }
    .end annotation

    .line 852
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/BrowserContract;->c(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized e(Ljava/util/Collection;)Lo/TextClock;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lo/TextInputTimePickerView;",
            ">;)",
            "Lo/TextClock;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 165
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lo/BrowserContract;->b(Ljava/util/Collection;Lo/Contacts;)Lo/TextClock;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final e()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lo/BrowserContract;->g:Z

    return v0
.end method

.method public j()Landroid/os/Handler;
    .locals 1

    .line 969
    iget-object v0, p0, Lo/BrowserContract;->j:Landroid/os/Handler;

    return-object v0
.end method
