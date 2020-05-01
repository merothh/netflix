.class final Lo/AudioPlaybackQueueItem$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/AudioPlaybackQueueItem;->c(Lo/RecognitionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/RecognitionListener;

.field final synthetic e:Lo/AudioPlaybackQueueItem;


# direct methods
.method constructor <init>(Lo/AudioPlaybackQueueItem;Lo/RecognitionListener;)V
    .locals 0

    iput-object p1, p0, Lo/AudioPlaybackQueueItem$Activity;->e:Lo/AudioPlaybackQueueItem;

    iput-object p2, p0, Lo/AudioPlaybackQueueItem$Activity;->d:Lo/RecognitionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 33
    iget-object p1, p0, Lo/AudioPlaybackQueueItem$Activity;->d:Lo/RecognitionListener;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lo/RecognitionListener;->setShowValidationState(Z)V

    .line 34
    iget-object p1, p0, Lo/AudioPlaybackQueueItem$Activity;->d:Lo/RecognitionListener;

    invoke-virtual {p1}, Lo/RecognitionListener;->c()Lo/FileSynthesisCallback;

    move-result-object p1

    iget-object v0, p0, Lo/AudioPlaybackQueueItem$Activity;->e:Lo/AudioPlaybackQueueItem;

    invoke-virtual {v0}, Lo/AudioPlaybackQueueItem;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/FileSynthesisCallback;->b(Ljava/lang/Object;)V

    .line 35
    iget-object p1, p0, Lo/AudioPlaybackQueueItem$Activity;->d:Lo/RecognitionListener;

    invoke-virtual {p1}, Lo/RecognitionListener;->c()Lo/FileSynthesisCallback;

    move-result-object p1

    iget-object v0, p0, Lo/AudioPlaybackQueueItem$Activity;->e:Lo/AudioPlaybackQueueItem;

    invoke-virtual {v0}, Lo/AudioPlaybackQueueItem;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/FileSynthesisCallback;->e(Ljava/lang/String;)V

    return-void
.end method
