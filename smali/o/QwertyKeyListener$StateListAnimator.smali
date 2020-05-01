.class final Lo/QwertyKeyListener$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/QwertyKeyListener;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/QwertyKeyListener;


# direct methods
.method constructor <init>(Lo/QwertyKeyListener;)V
    .locals 0

    iput-object p1, p0, Lo/QwertyKeyListener$StateListAnimator;->d:Lo/QwertyKeyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 81
    iget-object v0, p0, Lo/QwertyKeyListener$StateListAnimator;->d:Lo/QwertyKeyListener;

    invoke-virtual {v0}, Lo/QwertyKeyListener;->j()Lo/MultiTapKeyListener;

    move-result-object v0

    invoke-virtual {v0}, Lo/MultiTapKeyListener;->notifyDataSetChanged()V

    return-void
.end method
