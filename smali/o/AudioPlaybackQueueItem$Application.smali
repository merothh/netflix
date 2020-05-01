.class final Lo/AudioPlaybackQueueItem$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/AudioPlaybackQueueItem;->d(Lo/RecognitionListener;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic d:Lo/AudioPlaybackQueueItem;


# direct methods
.method constructor <init>(Lo/AudioPlaybackQueueItem;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lo/AudioPlaybackQueueItem$Application;->d:Lo/AudioPlaybackQueueItem;

    iput-object p2, p0, Lo/AudioPlaybackQueueItem$Application;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 73
    iget-object p1, p0, Lo/AudioPlaybackQueueItem$Application;->d:Lo/AudioPlaybackQueueItem;

    iget-object v0, p0, Lo/AudioPlaybackQueueItem$Application;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/Pair;

    invoke-virtual {p2}, Lkotlin/Pair;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lo/AudioPlaybackQueueItem;->d(Ljava/lang/String;)V

    return-void
.end method
