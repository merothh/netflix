.class final Lo/WJ$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/WJ;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/WJ;


# direct methods
.method constructor <init>(Lo/WJ;)V
    .locals 0

    iput-object p1, p0, Lo/WJ$Application;->e:Lo/WJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 29
    iget-object v0, p0, Lo/WJ$Application;->e:Lo/WJ;

    invoke-virtual {v0}, Lo/WJ;->d()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 30
    iget-object v0, p0, Lo/WJ$Application;->e:Lo/WJ;

    invoke-virtual {v0}, Lo/WJ;->d()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method
