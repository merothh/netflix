.class final Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupAudio$$inlined$let$lambda$1$1$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupAudio$$inlined$let$lambda$1$1;->b(Ljava/lang/String;Ljava/lang/String;JJLcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupAudio$$inlined$let$lambda$1$1;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupAudio$$inlined$let$lambda$1$1;Ljava/lang/String;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupAudio$$inlined$let$lambda$1$1$5;->c:Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupAudio$$inlined$let$lambda$1$1;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupAudio$$inlined$let$lambda$1$1$5;->d:Ljava/lang/String;

    iput-wide p3, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupAudio$$inlined$let$lambda$1$1$5;->b:J

    iput-wide p5, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupAudio$$inlined$let$lambda$1$1$5;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 676
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupAudio$$inlined$let$lambda$1$1$5;->c:Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupAudio$$inlined$let$lambda$1$1;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupAudio$$inlined$let$lambda$1$1;->d:Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupAudio$$inlined$let$lambda$1;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupAudio$$inlined$let$lambda$1;->d:Lo/Vk;

    invoke-static {p1}, Lo/Vk;->b(Lo/Vk;)Landroid/media/MediaPlayer;

    move-result-object p1

    .line 677
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupAudio$$inlined$let$lambda$1$1$5;->c:Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupAudio$$inlined$let$lambda$1$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupAudio$$inlined$let$lambda$1$1;->d:Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupAudio$$inlined$let$lambda$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupAudio$$inlined$let$lambda$1;->d:Lo/Vk;

    const/4 v1, 0x0

    check-cast v1, Landroid/media/MediaPlayer;

    invoke-static {v0, v1}, Lo/Vk;->b(Lo/Vk;Landroid/media/MediaPlayer;)V

    if-eqz p1, :cond_0

    .line 678
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    :cond_0
    return-void
.end method
