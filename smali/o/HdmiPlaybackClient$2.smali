.class Lo/HdmiPlaybackClient$2;
.super Lo/ParamsUtils;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/HdmiPlaybackClient;->b(Ljava/util/concurrent/atomic/AtomicBoolean;Lo/HdmiTimerRecordSources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic e:Lo/HdmiPlaybackClient;


# direct methods
.method constructor <init>(Lo/HdmiPlaybackClient;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lo/HdmiPlaybackClient$2;->e:Lo/HdmiPlaybackClient;

    iput-object p2, p0, Lo/HdmiPlaybackClient$2;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Lo/ParamsUtils;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    .line 213
    iget-object v0, p0, Lo/HdmiPlaybackClient$2;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
