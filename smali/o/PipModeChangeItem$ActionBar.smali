.class Lo/PipModeChangeItem$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PipModeChangeItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActionBar"
.end annotation


# instance fields
.field private b:I

.field final c:Lo/CharArrayReader$Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CharArrayReader$Activity<",
            "Lcom/bumptech/glide/load/engine/DecodeJob<",
            "*>;>;"
        }
    .end annotation
.end field

.field final e:Lcom/bumptech/glide/load/engine/DecodeJob$Activity;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/DecodeJob$Activity;)V
    .locals 2

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    new-instance v0, Lo/PipModeChangeItem$ActionBar$1;

    invoke-direct {v0, p0}, Lo/PipModeChangeItem$ActionBar$1;-><init>(Lo/PipModeChangeItem$ActionBar;)V

    const/16 v1, 0x96

    .line 401
    invoke-static {v1, v0}, Lo/InstantAppRequest;->b(ILo/InstantAppRequest$ActionBar;)Lo/CharArrayReader$Activity;

    move-result-object v0

    iput-object v0, p0, Lo/PipModeChangeItem$ActionBar;->c:Lo/CharArrayReader$Activity;

    .line 411
    iput-object p1, p0, Lo/PipModeChangeItem$ActionBar;->e:Lcom/bumptech/glide/load/engine/DecodeJob$Activity;

    return-void
.end method


# virtual methods
.method b(Lo/AbsoluteFileBackupHelper;Ljava/lang/Object;Lo/StopActivityItem;Lo/FileBackupHelperBase;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lo/PauseActivityItem;Ljava/util/Map;ZZZLo/FullBackupAgent;Lcom/bumptech/glide/load/engine/DecodeJob$Application;)Lcom/bumptech/glide/load/engine/DecodeJob;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/AbsoluteFileBackupHelper;",
            "Ljava/lang/Object;",
            "Lo/StopActivityItem;",
            "Lo/FileBackupHelperBase;",
            "II",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/Priority;",
            "Lo/PauseActivityItem;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lo/RestoreObserver<",
            "*>;>;ZZZ",
            "Lo/FullBackupAgent;",
            "Lcom/bumptech/glide/load/engine/DecodeJob$Application<",
            "TR;>;)",
            "Lcom/bumptech/glide/load/engine/DecodeJob<",
            "TR;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    .line 431
    iget-object v1, v0, Lo/PipModeChangeItem$ActionBar;->c:Lo/CharArrayReader$Activity;

    invoke-interface {v1}, Lo/CharArrayReader$Activity;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-static {v1}, Lo/FeatureInfo;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/engine/DecodeJob;

    move-object/from16 p1, v1

    .line 432
    iget v1, v0, Lo/PipModeChangeItem$ActionBar;->b:I

    move/from16 v18, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lo/PipModeChangeItem$ActionBar;->b:I

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v18}, Lcom/bumptech/glide/load/engine/DecodeJob;->b(Lo/AbsoluteFileBackupHelper;Ljava/lang/Object;Lo/StopActivityItem;Lo/FileBackupHelperBase;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lo/PauseActivityItem;Ljava/util/Map;ZZZLo/FullBackupAgent;Lcom/bumptech/glide/load/engine/DecodeJob$Application;I)Lcom/bumptech/glide/load/engine/DecodeJob;

    move-result-object v1

    return-object v1
.end method
