.class final Lo/AbsSeekBar$StateListAnimator$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/AbsSeekBar$StateListAnimator;->c(Lo/AbsSeekBar;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic d:Lo/AbsSeekBar;


# direct methods
.method constructor <init>(Lo/AbsSeekBar;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/AbsSeekBar$StateListAnimator$StateListAnimator;->d:Lo/AbsSeekBar;

    iput-object p2, p0, Lo/AbsSeekBar$StateListAnimator$StateListAnimator;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 53
    iget-object v0, p0, Lo/AbsSeekBar$StateListAnimator$StateListAnimator;->d:Lo/AbsSeekBar;

    iget-object v1, p0, Lo/AbsSeekBar$StateListAnimator$StateListAnimator;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/AbsSeekBar;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v1, p0, Lo/AbsSeekBar$StateListAnimator$StateListAnimator;->d:Lo/AbsSeekBar;

    iget-object v2, p0, Lo/AbsSeekBar$StateListAnimator$StateListAnimator;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lo/AbsSeekBar;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
