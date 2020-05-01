.class final Lo/Vo$TaskDescription$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Vo$TaskDescription;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/Vo$TaskDescription;


# direct methods
.method constructor <init>(Lo/Vo$TaskDescription;)V
    .locals 0

    iput-object p1, p0, Lo/Vo$TaskDescription$Activity;->b:Lo/Vo$TaskDescription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 52
    iget-object v0, p0, Lo/Vo$TaskDescription$Activity;->b:Lo/Vo$TaskDescription;

    iget-object v0, v0, Lo/Vo$TaskDescription;->e:Lo/Vo;

    invoke-virtual {v0}, Lo/Vo;->c()Lo/Vv;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo/Vv;->b(ZLandroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method
