.class public final Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupAudio$$inlined$let$lambda$1$1;
.super Lo/Ai;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupAudio$$inlined$let$lambda$1;->a(Lo/Am;Lcom/netflix/model/leafs/originals/interactive/Audio;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupAudio$$inlined$let$lambda$1;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupAudio$$inlined$let$lambda$1;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupAudio$$inlined$let$lambda$1$1;->d:Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupAudio$$inlined$let$lambda$1;

    .line 647
    invoke-direct {p0}, Lo/Ai;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/lang/String;JJLcom/netflix/mediaclient/android/app/Status;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    if-eqz p7, :cond_1

    .line 655
    invoke-interface/range {p7 .. p7}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 656
    iget-object v0, v7, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupAudio$$inlined$let$lambda$1$1;->d:Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupAudio$$inlined$let$lambda$1;

    iget-object v9, v0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupAudio$$inlined$let$lambda$1;->d:Lo/Vk;

    new-instance v5, Landroid/media/MediaPlayer;

    invoke-direct {v5}, Landroid/media/MediaPlayer;-><init>()V

    .line 658
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 660
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 657
    invoke-virtual {v5, v0}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 662
    move-object v0, v8

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 663
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 664
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 665
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 666
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v11

    move-object v10, v5

    move-wide/from16 v12, p3

    move-wide/from16 v14, p5

    invoke-virtual/range {v10 .. v15}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 667
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 670
    :cond_0
    new-instance v10, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupAudio$$inlined$let$lambda$1$1$3;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-object v11, v5

    move-wide/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupAudio$$inlined$let$lambda$1$1$3;-><init>(Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupAudio$$inlined$let$lambda$1$1;Ljava/lang/String;JJ)V

    check-cast v10, Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v11, v10}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 671
    sget-object v0, Lo/Vl;->c:Lo/Vl;

    check-cast v0, Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v11, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 675
    new-instance v10, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupAudio$$inlined$let$lambda$1$1$5;

    move-object v0, v10

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupAudio$$inlined$let$lambda$1$1$5;-><init>(Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupAudio$$inlined$let$lambda$1$1;Ljava/lang/String;JJ)V

    check-cast v10, Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v11, v10}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 680
    iget-object v0, v7, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupAudio$$inlined$let$lambda$1$1;->d:Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupAudio$$inlined$let$lambda$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupAudio$$inlined$let$lambda$1;->b:Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$AudioList$Audio;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$AudioList$Audio;->volume()F

    move-result v0

    iget-object v1, v7, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupAudio$$inlined$let$lambda$1$1;->d:Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupAudio$$inlined$let$lambda$1;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupAudio$$inlined$let$lambda$1;->b:Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$AudioList$Audio;

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$AudioList$Audio;->volume()F

    move-result v1

    invoke-virtual {v11, v0, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 681
    invoke-virtual {v11}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 656
    invoke-static {v9, v11}, Lo/Vk;->b(Lo/Vk;Landroid/media/MediaPlayer;)V

    :cond_1
    return-void
.end method
