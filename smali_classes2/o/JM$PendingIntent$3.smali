.class final Lo/JM$PendingIntent$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/JM$PendingIntent;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/CameraPrewarmService;

.field final synthetic d:Ljava/lang/ref/WeakReference;

.field final synthetic e:Lo/JM$PendingIntent;


# direct methods
.method constructor <init>(Lo/JM$PendingIntent;Ljava/lang/ref/WeakReference;Lo/CameraPrewarmService;)V
    .locals 0

    iput-object p1, p0, Lo/JM$PendingIntent$3;->e:Lo/JM$PendingIntent;

    iput-object p2, p0, Lo/JM$PendingIntent$3;->d:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lo/JM$PendingIntent$3;->a:Lo/CameraPrewarmService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 41
    iget-object v0, p0, Lo/JM$PendingIntent$3;->e:Lo/JM$PendingIntent;

    iget-object v0, v0, Lo/JM$PendingIntent;->e:Lo/JM;

    iget-object v1, p0, Lo/JM$PendingIntent$3;->d:Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lo/JM$PendingIntent$3;->a:Lo/CameraPrewarmService;

    invoke-static {v0, v1, v2}, Lo/JM;->c(Lo/JM;Ljava/lang/ref/WeakReference;Lo/CameraPrewarmService;)V

    return-void
.end method
