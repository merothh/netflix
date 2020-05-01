.class final Lo/Xg$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Xg;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/Xg;


# direct methods
.method constructor <init>(Lo/Xg;)V
    .locals 0

    iput-object p1, p0, Lo/Xg$TaskDescription;->e:Lo/Xg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 49
    iget-object v0, p0, Lo/Xg$TaskDescription;->e:Lo/Xg;

    invoke-virtual {v0}, Lo/Xg;->i()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 50
    iget-object v0, p0, Lo/Xg$TaskDescription;->e:Lo/Xg;

    invoke-virtual {v0}, Lo/Xg;->i()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
