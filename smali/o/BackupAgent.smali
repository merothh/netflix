.class public Lo/BackupAgent;
.super Lo/PeriodicSync;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lo/PeriodicSync<",
        "Lo/BackupAgent<",
        "TTranscodeType;>;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field protected static final a:Lo/SearchRecentSuggestionsProvider;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private final d:Lo/BackupAgentHelper;

.field private final e:Lcom/bumptech/glide/Glide;

.field private f:Lo/BackupAgent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/BackupAgent<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/ReceiverCallNotAllowedException<",
            "TTranscodeType;>;>;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/Object;

.field private i:Lo/BackupDataInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/BackupDataInput<",
            "*-TTranscodeType;>;"
        }
    .end annotation
.end field

.field private final j:Lo/AbsoluteFileBackupHelper;

.field private k:Ljava/lang/Float;

.field private l:Z

.field private m:Lo/BackupAgent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/BackupAgent<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private n:Z

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    new-instance v0, Lo/SearchRecentSuggestionsProvider;

    invoke-direct {v0}, Lo/SearchRecentSuggestionsProvider;-><init>()V

    sget-object v1, Lo/PauseActivityItem;->b:Lo/PauseActivityItem;

    .line 57
    invoke-virtual {v0, v1}, Lo/SearchRecentSuggestionsProvider;->d(Lo/PauseActivityItem;)Lo/PeriodicSync;

    move-result-object v0

    check-cast v0, Lo/SearchRecentSuggestionsProvider;

    sget-object v1, Lcom/bumptech/glide/Priority;->c:Lcom/bumptech/glide/Priority;

    invoke-virtual {v0, v1}, Lo/SearchRecentSuggestionsProvider;->b(Lcom/bumptech/glide/Priority;)Lo/PeriodicSync;

    move-result-object v0

    check-cast v0, Lo/SearchRecentSuggestionsProvider;

    const/4 v1, 0x1

    .line 58
    invoke-virtual {v0, v1}, Lo/SearchRecentSuggestionsProvider;->d(Z)Lo/PeriodicSync;

    move-result-object v0

    check-cast v0, Lo/SearchRecentSuggestionsProvider;

    sput-object v0, Lo/BackupAgent;->a:Lo/SearchRecentSuggestionsProvider;

    return-void
.end method

.method protected constructor <init>(Lcom/bumptech/glide/Glide;Lo/BackupAgentHelper;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Glide;",
            "Lo/BackupAgentHelper;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Lo/PeriodicSync;-><init>()V

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lo/BackupAgent;->n:Z

    .line 89
    iput-object p1, p0, Lo/BackupAgent;->e:Lcom/bumptech/glide/Glide;

    .line 90
    iput-object p2, p0, Lo/BackupAgent;->d:Lo/BackupAgentHelper;

    .line 91
    iput-object p3, p0, Lo/BackupAgent;->c:Ljava/lang/Class;

    .line 92
    iput-object p4, p0, Lo/BackupAgent;->b:Landroid/content/Context;

    .line 93
    invoke-virtual {p2, p3}, Lo/BackupAgentHelper;->d(Ljava/lang/Class;)Lo/BackupDataInput;

    move-result-object p3

    iput-object p3, p0, Lo/BackupAgent;->i:Lo/BackupDataInput;

    .line 94
    invoke-virtual {p1}, Lcom/bumptech/glide/Glide;->e()Lo/AbsoluteFileBackupHelper;

    move-result-object p1

    iput-object p1, p0, Lo/BackupAgent;->j:Lo/AbsoluteFileBackupHelper;

    .line 96
    invoke-virtual {p2}, Lo/BackupAgentHelper;->j()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/BackupAgent;->d(Ljava/util/List;)V

    .line 97
    invoke-virtual {p2}, Lo/BackupAgentHelper;->i()Lo/SearchRecentSuggestionsProvider;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/BackupAgent;->c(Lo/PeriodicSync;)Lo/BackupAgent;

    return-void
.end method

.method private a(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/Priority;
    .locals 2

    .line 858
    sget-object v0, Lo/BackupAgent$5;->e:[I

    invoke-virtual {p1}, Lcom/bumptech/glide/Priority;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 867
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown priority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/BackupAgent;->B()Lcom/bumptech/glide/Priority;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 865
    :cond_1
    :goto_0
    sget-object p1, Lcom/bumptech/glide/Priority;->d:Lcom/bumptech/glide/Priority;

    return-object p1

    .line 862
    :cond_2
    sget-object p1, Lcom/bumptech/glide/Priority;->e:Lcom/bumptech/glide/Priority;

    return-object p1

    .line 860
    :cond_3
    sget-object p1, Lcom/bumptech/glide/Priority;->a:Lcom/bumptech/glide/Priority;

    return-object p1
.end method

.method private a(Lo/UndoOwner;Lo/ReceiverCallNotAllowedException;Lo/RestrictionsManager;Lo/BackupDataInput;Lcom/bumptech/glide/Priority;IILo/PeriodicSync;Ljava/util/concurrent/Executor;)Lo/QuickViewConstants;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/UndoOwner<",
            "TTranscodeType;>;",
            "Lo/ReceiverCallNotAllowedException<",
            "TTranscodeType;>;",
            "Lo/RestrictionsManager;",
            "Lo/BackupDataInput<",
            "*-TTranscodeType;>;",
            "Lcom/bumptech/glide/Priority;",
            "II",
            "Lo/PeriodicSync<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lo/QuickViewConstants;"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v4, p3

    move-object/from16 v11, p5

    .line 955
    iget-object v0, v10, Lo/BackupAgent;->f:Lo/BackupAgent;

    if-eqz v0, :cond_4

    .line 957
    iget-boolean v1, v10, Lo/BackupAgent;->o:Z

    if-nez v1, :cond_3

    .line 962
    iget-object v1, v0, Lo/BackupAgent;->i:Lo/BackupDataInput;

    .line 967
    iget-boolean v0, v0, Lo/BackupAgent;->n:Z

    if-eqz v0, :cond_0

    move-object/from16 v15, p4

    goto :goto_0

    :cond_0
    move-object v15, v1

    .line 971
    :goto_0
    iget-object v0, v10, Lo/BackupAgent;->f:Lo/BackupAgent;

    invoke-virtual {v0}, Lo/BackupAgent;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 972
    iget-object v0, v10, Lo/BackupAgent;->f:Lo/BackupAgent;

    invoke-virtual {v0}, Lo/BackupAgent;->B()Lcom/bumptech/glide/Priority;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-direct {v10, v11}, Lo/BackupAgent;->a(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/Priority;

    move-result-object v0

    :goto_1
    move-object/from16 v16, v0

    .line 974
    iget-object v0, v10, Lo/BackupAgent;->f:Lo/BackupAgent;

    invoke-virtual {v0}, Lo/BackupAgent;->D()I

    move-result v0

    .line 975
    iget-object v1, v10, Lo/BackupAgent;->f:Lo/BackupAgent;

    invoke-virtual {v1}, Lo/BackupAgent;->C()I

    move-result v1

    .line 976
    invoke-static/range {p6 .. p7}, Lo/FallbackCategoryProvider;->a(II)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v10, Lo/BackupAgent;->f:Lo/BackupAgent;

    .line 977
    invoke-virtual {v2}, Lo/BackupAgent;->z()Z

    move-result v2

    if-nez v2, :cond_2

    .line 978
    invoke-virtual/range {p8 .. p8}, Lo/PeriodicSync;->D()I

    move-result v0

    .line 979
    invoke-virtual/range {p8 .. p8}, Lo/PeriodicSync;->C()I

    move-result v1

    :cond_2
    move/from16 v17, v0

    move/from16 v18, v1

    .line 982
    new-instance v14, Lo/SyncAdapterType;

    invoke-direct {v14, v4}, Lo/SyncAdapterType;-><init>(Lo/RestrictionsManager;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p8

    move-object v4, v14

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p9

    .line 984
    invoke-direct/range {v0 .. v9}, Lo/BackupAgent;->e(Lo/UndoOwner;Lo/ReceiverCallNotAllowedException;Lo/PeriodicSync;Lo/RestrictionsManager;Lo/BackupDataInput;Lcom/bumptech/glide/Priority;IILjava/util/concurrent/Executor;)Lo/QuickViewConstants;

    move-result-object v0

    const/4 v1, 0x1

    .line 994
    iput-boolean v1, v10, Lo/BackupAgent;->o:Z

    .line 996
    iget-object v1, v10, Lo/BackupAgent;->f:Lo/BackupAgent;

    move-object v11, v1

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object v2, v14

    move-object/from16 v19, v1

    move-object/from16 v20, p9

    .line 997
    invoke-direct/range {v11 .. v20}, Lo/BackupAgent;->c(Lo/UndoOwner;Lo/ReceiverCallNotAllowedException;Lo/RestrictionsManager;Lo/BackupDataInput;Lcom/bumptech/glide/Priority;IILo/PeriodicSync;Ljava/util/concurrent/Executor;)Lo/QuickViewConstants;

    move-result-object v1

    const/4 v3, 0x0

    .line 1007
    iput-boolean v3, v10, Lo/BackupAgent;->o:Z

    .line 1008
    invoke-virtual {v2, v0, v1}, Lo/SyncAdapterType;->e(Lo/QuickViewConstants;Lo/QuickViewConstants;)V

    return-object v2

    .line 958
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1010
    :cond_4
    iget-object v0, v10, Lo/BackupAgent;->k:Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 1012
    new-instance v12, Lo/SyncAdapterType;

    invoke-direct {v12, v4}, Lo/SyncAdapterType;-><init>(Lo/RestrictionsManager;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p8

    move-object v4, v12

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p9

    .line 1014
    invoke-direct/range {v0 .. v9}, Lo/BackupAgent;->e(Lo/UndoOwner;Lo/ReceiverCallNotAllowedException;Lo/PeriodicSync;Lo/RestrictionsManager;Lo/BackupDataInput;Lcom/bumptech/glide/Priority;IILjava/util/concurrent/Executor;)Lo/QuickViewConstants;

    move-result-object v13

    .line 1025
    invoke-virtual/range {p8 .. p8}, Lo/PeriodicSync;->a()Lo/PeriodicSync;

    move-result-object v0

    iget-object v1, v10, Lo/BackupAgent;->k:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lo/PeriodicSync;->a(F)Lo/PeriodicSync;

    move-result-object v3

    .line 1034
    invoke-direct {v10, v11}, Lo/BackupAgent;->a(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/Priority;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1028
    invoke-direct/range {v0 .. v9}, Lo/BackupAgent;->e(Lo/UndoOwner;Lo/ReceiverCallNotAllowedException;Lo/PeriodicSync;Lo/RestrictionsManager;Lo/BackupDataInput;Lcom/bumptech/glide/Priority;IILjava/util/concurrent/Executor;)Lo/QuickViewConstants;

    move-result-object v0

    .line 1039
    invoke-virtual {v12, v13, v0}, Lo/SyncAdapterType;->e(Lo/QuickViewConstants;Lo/QuickViewConstants;)V

    return-object v12

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p8

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p9

    .line 1043
    invoke-direct/range {v0 .. v9}, Lo/BackupAgent;->e(Lo/UndoOwner;Lo/ReceiverCallNotAllowedException;Lo/PeriodicSync;Lo/RestrictionsManager;Lo/BackupDataInput;Lcom/bumptech/glide/Priority;IILjava/util/concurrent/Executor;)Lo/QuickViewConstants;

    move-result-object v0

    return-object v0
.end method

.method private a(Lo/PeriodicSync;Lo/QuickViewConstants;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/PeriodicSync<",
            "*>;",
            "Lo/QuickViewConstants;",
            ")Z"
        }
    .end annotation

    .line 668
    invoke-virtual {p1}, Lo/PeriodicSync;->v()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {p2}, Lo/QuickViewConstants;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b(Lo/UndoOwner;Lo/ReceiverCallNotAllowedException;Lo/PeriodicSync;Ljava/util/concurrent/Executor;)Lo/QuickViewConstants;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/UndoOwner<",
            "TTranscodeType;>;",
            "Lo/ReceiverCallNotAllowedException<",
            "TTranscodeType;>;",
            "Lo/PeriodicSync<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lo/QuickViewConstants;"
        }
    .end annotation

    .line 876
    iget-object v4, p0, Lo/BackupAgent;->i:Lo/BackupDataInput;

    .line 881
    invoke-virtual {p3}, Lo/PeriodicSync;->B()Lcom/bumptech/glide/Priority;

    move-result-object v5

    .line 882
    invoke-virtual {p3}, Lo/PeriodicSync;->D()I

    move-result v6

    .line 883
    invoke-virtual {p3}, Lo/PeriodicSync;->C()I

    move-result v7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v8, p3

    move-object v9, p4

    .line 876
    invoke-direct/range {v0 .. v9}, Lo/BackupAgent;->c(Lo/UndoOwner;Lo/ReceiverCallNotAllowedException;Lo/RestrictionsManager;Lo/BackupDataInput;Lcom/bumptech/glide/Priority;IILo/PeriodicSync;Ljava/util/concurrent/Executor;)Lo/QuickViewConstants;

    move-result-object p1

    return-object p1
.end method

.method private c(Lo/UndoOwner;Lo/ReceiverCallNotAllowedException;Lo/RestrictionsManager;Lo/BackupDataInput;Lcom/bumptech/glide/Priority;IILo/PeriodicSync;Ljava/util/concurrent/Executor;)Lo/QuickViewConstants;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/UndoOwner<",
            "TTranscodeType;>;",
            "Lo/ReceiverCallNotAllowedException<",
            "TTranscodeType;>;",
            "Lo/RestrictionsManager;",
            "Lo/BackupDataInput<",
            "*-TTranscodeType;>;",
            "Lcom/bumptech/glide/Priority;",
            "II",
            "Lo/PeriodicSync<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lo/QuickViewConstants;"
        }
    .end annotation

    move-object/from16 v10, p0

    .line 901
    iget-object v0, v10, Lo/BackupAgent;->m:Lo/BackupAgent;

    if-eqz v0, :cond_0

    .line 902
    new-instance v0, Lo/OperationApplicationException;

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lo/OperationApplicationException;-><init>(Lo/RestrictionsManager;)V

    move-object v3, v0

    move-object v15, v3

    goto :goto_0

    :cond_0
    move-object/from16 v1, p3

    const/4 v0, 0x0

    move-object v15, v0

    move-object v3, v1

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 907
    invoke-direct/range {v0 .. v9}, Lo/BackupAgent;->a(Lo/UndoOwner;Lo/ReceiverCallNotAllowedException;Lo/RestrictionsManager;Lo/BackupDataInput;Lcom/bumptech/glide/Priority;IILo/PeriodicSync;Ljava/util/concurrent/Executor;)Lo/QuickViewConstants;

    move-result-object v0

    if-nez v15, :cond_1

    return-object v0

    .line 922
    :cond_1
    iget-object v1, v10, Lo/BackupAgent;->m:Lo/BackupAgent;

    invoke-virtual {v1}, Lo/BackupAgent;->D()I

    move-result v1

    .line 923
    iget-object v2, v10, Lo/BackupAgent;->m:Lo/BackupAgent;

    invoke-virtual {v2}, Lo/BackupAgent;->C()I

    move-result v2

    .line 924
    invoke-static/range {p6 .. p7}, Lo/FallbackCategoryProvider;->a(II)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v10, Lo/BackupAgent;->m:Lo/BackupAgent;

    .line 925
    invoke-virtual {v3}, Lo/BackupAgent;->z()Z

    move-result v3

    if-nez v3, :cond_2

    .line 926
    invoke-virtual/range {p8 .. p8}, Lo/PeriodicSync;->D()I

    move-result v1

    .line 927
    invoke-virtual/range {p8 .. p8}, Lo/PeriodicSync;->C()I

    move-result v2

    :cond_2
    move/from16 v17, v1

    move/from16 v18, v2

    .line 930
    iget-object v11, v10, Lo/BackupAgent;->m:Lo/BackupAgent;

    iget-object v1, v11, Lo/BackupAgent;->i:Lo/BackupDataInput;

    .line 936
    invoke-virtual {v11}, Lo/BackupAgent;->B()Lcom/bumptech/glide/Priority;

    move-result-object v16

    iget-object v2, v10, Lo/BackupAgent;->m:Lo/BackupAgent;

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object v14, v15

    move-object v3, v15

    move-object v15, v1

    move-object/from16 v19, v2

    move-object/from16 v20, p9

    .line 931
    invoke-direct/range {v11 .. v20}, Lo/BackupAgent;->c(Lo/UndoOwner;Lo/ReceiverCallNotAllowedException;Lo/RestrictionsManager;Lo/BackupDataInput;Lcom/bumptech/glide/Priority;IILo/PeriodicSync;Ljava/util/concurrent/Executor;)Lo/QuickViewConstants;

    move-result-object v1

    .line 941
    invoke-virtual {v3, v0, v1}, Lo/OperationApplicationException;->d(Lo/QuickViewConstants;Lo/QuickViewConstants;)V

    return-object v3
.end method

.method private d(Lo/UndoOwner;Lo/ReceiverCallNotAllowedException;Lo/PeriodicSync;Ljava/util/concurrent/Executor;)Lo/UndoOwner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lo/UndoOwner<",
            "TTranscodeType;>;>(TY;",
            "Lo/ReceiverCallNotAllowedException<",
            "TTranscodeType;>;",
            "Lo/PeriodicSync<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")TY;"
        }
    .end annotation

    .line 630
    invoke-static {p1}, Lo/FeatureInfo;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    iget-boolean v0, p0, Lo/BackupAgent;->l:Z

    if-eqz v0, :cond_2

    .line 635
    invoke-direct {p0, p1, p2, p3, p4}, Lo/BackupAgent;->b(Lo/UndoOwner;Lo/ReceiverCallNotAllowedException;Lo/PeriodicSync;Ljava/util/concurrent/Executor;)Lo/QuickViewConstants;

    move-result-object p2

    .line 637
    invoke-interface {p1}, Lo/UndoOwner;->c()Lo/QuickViewConstants;

    move-result-object p4

    .line 638
    invoke-interface {p2, p4}, Lo/QuickViewConstants;->e(Lo/QuickViewConstants;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 639
    invoke-direct {p0, p3, p4}, Lo/BackupAgent;->a(Lo/PeriodicSync;Lo/QuickViewConstants;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 640
    invoke-interface {p2}, Lo/QuickViewConstants;->i()V

    .line 645
    invoke-static {p4}, Lo/FeatureInfo;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/QuickViewConstants;

    invoke-interface {p2}, Lo/QuickViewConstants;->a()Z

    move-result p2

    if-nez p2, :cond_0

    .line 649
    invoke-interface {p4}, Lo/QuickViewConstants;->c()V

    :cond_0
    return-object p1

    .line 654
    :cond_1
    iget-object p3, p0, Lo/BackupAgent;->d:Lo/BackupAgentHelper;

    invoke-virtual {p3, p1}, Lo/BackupAgentHelper;->c(Lo/UndoOwner;)V

    .line 655
    invoke-interface {p1, p2}, Lo/UndoOwner;->c(Lo/QuickViewConstants;)V

    .line 656
    iget-object p3, p0, Lo/BackupAgent;->d:Lo/BackupAgentHelper;

    invoke-virtual {p3, p1, p2}, Lo/BackupAgentHelper;->c(Lo/UndoOwner;Lo/QuickViewConstants;)V

    return-object p1

    .line 632
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "You must call #load() before calling #into()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private d(Ljava/util/List;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/ReceiverCallNotAllowedException<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 116
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ReceiverCallNotAllowedException;

    .line 117
    invoke-virtual {p0, v0}, Lo/BackupAgent;->c(Lo/ReceiverCallNotAllowedException;)Lo/BackupAgent;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private e(Ljava/lang/Object;)Lo/BackupAgent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lo/BackupAgent<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 373
    iput-object p1, p0, Lo/BackupAgent;->h:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 374
    iput-boolean p1, p0, Lo/BackupAgent;->l:Z

    return-object p0
.end method

.method private e(Lo/UndoOwner;Lo/ReceiverCallNotAllowedException;Lo/PeriodicSync;Lo/RestrictionsManager;Lo/BackupDataInput;Lcom/bumptech/glide/Priority;IILjava/util/concurrent/Executor;)Lo/QuickViewConstants;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/UndoOwner<",
            "TTranscodeType;>;",
            "Lo/ReceiverCallNotAllowedException<",
            "TTranscodeType;>;",
            "Lo/PeriodicSync<",
            "*>;",
            "Lo/RestrictionsManager;",
            "Lo/BackupDataInput<",
            "*-TTranscodeType;>;",
            "Lcom/bumptech/glide/Priority;",
            "II",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lo/QuickViewConstants;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1066
    iget-object v1, v0, Lo/BackupAgent;->b:Landroid/content/Context;

    iget-object v2, v0, Lo/BackupAgent;->j:Lo/AbsoluteFileBackupHelper;

    iget-object v3, v0, Lo/BackupAgent;->h:Ljava/lang/Object;

    iget-object v4, v0, Lo/BackupAgent;->c:Ljava/lang/Class;

    iget-object v11, v0, Lo/BackupAgent;->g:Ljava/util/List;

    .line 1079
    invoke-virtual {v2}, Lo/AbsoluteFileBackupHelper;->e()Lo/PipModeChangeItem;

    move-result-object v13

    .line 1080
    invoke-virtual/range {p5 .. p5}, Lo/BackupDataInput;->a()Lo/AndroidTestBaseUpdater;

    move-result-object v14

    move-object/from16 v5, p3

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p6

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v12, p4

    move-object/from16 v15, p9

    .line 1066
    invoke-static/range {v1 .. v15}, Lcom/bumptech/glide/request/SingleRequest;->d(Landroid/content/Context;Lo/AbsoluteFileBackupHelper;Ljava/lang/Object;Ljava/lang/Class;Lo/PeriodicSync;IILcom/bumptech/glide/Priority;Lo/UndoOwner;Lo/ReceiverCallNotAllowedException;Ljava/util/List;Lo/RestrictionsManager;Lo/PipModeChangeItem;Lo/AndroidTestBaseUpdater;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/SingleRequest;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public synthetic a()Lo/PeriodicSync;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lo/BackupAgent;->b()Lo/BackupAgent;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lo/PeriodicSync;)Lo/PeriodicSync;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lo/BackupAgent;->c(Lo/PeriodicSync;)Lo/BackupAgent;

    move-result-object p1

    return-object p1
.end method

.method public b()Lo/BackupAgent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/BackupAgent<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 599
    invoke-super {p0}, Lo/PeriodicSync;->a()Lo/PeriodicSync;

    move-result-object v0

    check-cast v0, Lo/BackupAgent;

    .line 600
    iget-object v1, v0, Lo/BackupAgent;->i:Lo/BackupDataInput;

    invoke-virtual {v1}, Lo/BackupDataInput;->b()Lo/BackupDataInput;

    move-result-object v1

    iput-object v1, v0, Lo/BackupAgent;->i:Lo/BackupDataInput;

    return-object v0
.end method

.method public b(Lo/BackupDataInput;)Lo/BackupAgent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BackupDataInput<",
            "*-TTranscodeType;>;)",
            "Lo/BackupAgent<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 153
    invoke-static {p1}, Lo/FeatureInfo;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/BackupDataInput;

    iput-object p1, p0, Lo/BackupAgent;->i:Lo/BackupDataInput;

    const/4 p1, 0x0

    .line 154
    iput-boolean p1, p0, Lo/BackupAgent;->n:Z

    return-object p0
.end method

.method public b(Lo/ReceiverCallNotAllowedException;)Lo/BackupAgent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ReceiverCallNotAllowedException<",
            "TTranscodeType;>;)",
            "Lo/BackupAgent<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 174
    iput-object v0, p0, Lo/BackupAgent;->g:Ljava/util/List;

    .line 175
    invoke-virtual {p0, p1}, Lo/BackupAgent;->c(Lo/ReceiverCallNotAllowedException;)Lo/BackupAgent;

    move-result-object p1

    return-object p1
.end method

.method public b(II)Lo/MutableContextWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lo/MutableContextWrapper<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 774
    new-instance v0, Lo/RestrictionEntry;

    invoke-direct {v0, p1, p2}, Lo/RestrictionEntry;-><init>(II)V

    .line 775
    invoke-static {}, Lo/CrossProfileApps;->c()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-virtual {p0, v0, v0, p1}, Lo/BackupAgent;->c(Lo/UndoOwner;Lo/ReceiverCallNotAllowedException;Ljava/util/concurrent/Executor;)Lo/UndoOwner;

    move-result-object p1

    check-cast p1, Lo/MutableContextWrapper;

    return-object p1
.end method

.method public c(Ljava/lang/String;)Lo/BackupAgent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/BackupAgent<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 454
    invoke-direct {p0, p1}, Lo/BackupAgent;->e(Ljava/lang/Object;)Lo/BackupAgent;

    move-result-object p1

    return-object p1
.end method

.method public c(Lo/PeriodicSync;)Lo/BackupAgent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/PeriodicSync<",
            "*>;)",
            "Lo/BackupAgent<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 136
    invoke-static {p1}, Lo/FeatureInfo;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-super {p0, p1}, Lo/PeriodicSync;->a(Lo/PeriodicSync;)Lo/PeriodicSync;

    move-result-object p1

    check-cast p1, Lo/BackupAgent;

    return-object p1
.end method

.method public c(Lo/ReceiverCallNotAllowedException;)Lo/BackupAgent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ReceiverCallNotAllowedException<",
            "TTranscodeType;>;)",
            "Lo/BackupAgent<",
            "TTranscodeType;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 190
    iget-object v0, p0, Lo/BackupAgent;->g:Ljava/util/List;

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/BackupAgent;->g:Ljava/util/List;

    .line 193
    :cond_0
    iget-object v0, p0, Lo/BackupAgent;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0
.end method

.method c(Lo/UndoOwner;Lo/ReceiverCallNotAllowedException;Ljava/util/concurrent/Executor;)Lo/UndoOwner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lo/UndoOwner<",
            "TTranscodeType;>;>(TY;",
            "Lo/ReceiverCallNotAllowedException<",
            "TTranscodeType;>;",
            "Ljava/util/concurrent/Executor;",
            ")TY;"
        }
    .end annotation

    .line 622
    invoke-direct {p0, p1, p2, p0, p3}, Lo/BackupAgent;->d(Lo/UndoOwner;Lo/ReceiverCallNotAllowedException;Lo/PeriodicSync;Ljava/util/concurrent/Executor;)Lo/UndoOwner;

    move-result-object p1

    return-object p1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lo/BackupAgent;->b()Lo/BackupAgent;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/Object;)Lo/BackupAgent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lo/BackupAgent<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 368
    invoke-direct {p0, p1}, Lo/BackupAgent;->e(Ljava/lang/Object;)Lo/BackupAgent;

    move-result-object p1

    return-object p1
.end method

.method public d(Landroid/widget/ImageView;)Lo/UndoManager;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lo/UndoManager<",
            "Landroid/widget/ImageView;",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 684
    invoke-static {}, Lo/FallbackCategoryProvider;->b()V

    .line 685
    invoke-static {p1}, Lo/FeatureInfo;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    invoke-virtual {p0}, Lo/PeriodicSync;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 689
    invoke-virtual {p0}, Lo/PeriodicSync;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 694
    sget-object v0, Lo/BackupAgent$5;->c:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 707
    :pswitch_0
    invoke-virtual {p0}, Lo/PeriodicSync;->a()Lo/PeriodicSync;

    move-result-object v0

    invoke-virtual {v0}, Lo/PeriodicSync;->g()Lo/PeriodicSync;

    move-result-object v0

    goto :goto_1

    .line 704
    :pswitch_1
    invoke-virtual {p0}, Lo/PeriodicSync;->a()Lo/PeriodicSync;

    move-result-object v0

    invoke-virtual {v0}, Lo/PeriodicSync;->f()Lo/PeriodicSync;

    move-result-object v0

    goto :goto_1

    .line 699
    :pswitch_2
    invoke-virtual {p0}, Lo/PeriodicSync;->a()Lo/PeriodicSync;

    move-result-object v0

    invoke-virtual {v0}, Lo/PeriodicSync;->g()Lo/PeriodicSync;

    move-result-object v0

    goto :goto_1

    .line 696
    :pswitch_3
    invoke-virtual {p0}, Lo/PeriodicSync;->a()Lo/PeriodicSync;

    move-result-object v0

    invoke-virtual {v0}, Lo/PeriodicSync;->i()Lo/PeriodicSync;

    move-result-object v0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v0, p0

    .line 716
    :goto_1
    iget-object v1, p0, Lo/BackupAgent;->j:Lo/AbsoluteFileBackupHelper;

    iget-object v2, p0, Lo/BackupAgent;->c:Ljava/lang/Class;

    .line 717
    invoke-virtual {v1, p1, v2}, Lo/AbsoluteFileBackupHelper;->c(Landroid/widget/ImageView;Ljava/lang/Class;)Lo/UndoManager;

    move-result-object p1

    const/4 v1, 0x0

    .line 720
    invoke-static {}, Lo/CrossProfileApps;->d()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 716
    invoke-direct {p0, p1, v1, v0, v2}, Lo/BackupAgent;->d(Lo/UndoOwner;Lo/ReceiverCallNotAllowedException;Lo/PeriodicSync;Ljava/util/concurrent/Executor;)Lo/UndoOwner;

    move-result-object p1

    check-cast p1, Lo/UndoManager;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d(Lo/UndoOwner;)Lo/UndoOwner;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lo/UndoOwner<",
            "TTranscodeType;>;>(TY;)TY;"
        }
    .end annotation

    .line 613
    invoke-static {}, Lo/CrossProfileApps;->d()Ljava/util/concurrent/Executor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lo/BackupAgent;->c(Lo/UndoOwner;Lo/ReceiverCallNotAllowedException;Ljava/util/concurrent/Executor;)Lo/UndoOwner;

    move-result-object p1

    return-object p1
.end method
