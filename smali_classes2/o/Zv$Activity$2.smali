.class final Lo/Zv$Activity$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Zv$Activity;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/Zv$Activity;

.field final synthetic e:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lo/Zv$Activity;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lo/Zv$Activity$2;->b:Lo/Zv$Activity;

    iput-object p2, p0, Lo/Zv$Activity$2;->e:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 62
    iget-object v0, p0, Lo/Zv$Activity$2;->b:Lo/Zv$Activity;

    iget-object v0, v0, Lo/Zv$Activity;->e:Lo/Zv;

    iget-object v1, p0, Lo/Zv$Activity$2;->e:Ljava/lang/ref/WeakReference;

    invoke-static {v0, v1}, Lo/Zv;->d(Lo/Zv;Ljava/lang/ref/WeakReference;)V

    return-void
.end method
