.class final Lo/abU$ActionBar$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/abU$ActionBar;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/abU$ActionBar;


# direct methods
.method constructor <init>(Lo/abU$ActionBar;)V
    .locals 0

    iput-object p1, p0, Lo/abU$ActionBar$TaskDescription;->d:Lo/abU$ActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 177
    iget-object v0, p0, Lo/abU$ActionBar$TaskDescription;->d:Lo/abU$ActionBar;

    iget-object v0, v0, Lo/abU$ActionBar;->d:Lo/abU;

    invoke-virtual {v0}, Lo/abU;->o()V

    .line 178
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "Uma Tooltip showTooltip complete"

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    return-void
.end method
