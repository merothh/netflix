.class final Lo/abU$Activity$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/abU$Activity;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/abU$Activity;


# direct methods
.method constructor <init>(Lo/abU$Activity;)V
    .locals 0

    iput-object p1, p0, Lo/abU$Activity$Application;->a:Lo/abU$Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 149
    iget-object v0, p0, Lo/abU$Activity$Application;->a:Lo/abU$Activity;

    iget-object v0, v0, Lo/abU$Activity;->c:Lo/alB;

    invoke-interface {v0}, Lo/alB;->invoke()Ljava/lang/Object;

    return-void
.end method
