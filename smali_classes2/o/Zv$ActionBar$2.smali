.class final Lo/Zv$ActionBar$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Zv$ActionBar;->subscribe(Lio/reactivex/SingleEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/ref/WeakReference;

.field final synthetic d:Lo/Zv$ActionBar;


# direct methods
.method constructor <init>(Lo/Zv$ActionBar;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lo/Zv$ActionBar$2;->d:Lo/Zv$ActionBar;

    iput-object p2, p0, Lo/Zv$ActionBar$2;->b:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 44
    iget-object v0, p0, Lo/Zv$ActionBar$2;->d:Lo/Zv$ActionBar;

    iget-object v0, v0, Lo/Zv$ActionBar;->e:Lo/Zv;

    iget-object v1, p0, Lo/Zv$ActionBar$2;->b:Ljava/lang/ref/WeakReference;

    invoke-static {v0, v1}, Lo/Zv;->b(Lo/Zv;Ljava/lang/ref/WeakReference;)V

    return-void
.end method
